
#include "libecs.hpp"
#include "ContinuousProcess.hpp"

USE_LIBECS;

LIBECS_DM_CLASS( Koivumaki_2011_CaBulkDiffusionFluxProcess, ContinuousProcess )
{

 public:

  LIBECS_DM_OBJECT( Koivumaki_2011_CaBulkDiffusionFluxProcess, Process )
  {
    INHERIT_PROPERTIES( Process );

    PROPERTYSLOT_SET_GET( Real, DCa );
    PROPERTYSLOT_SET_GET( Real, DCaBm );
    PROPERTYSLOT_SET_GET( Real, BCa );
    PROPERTYSLOT_SET_GET( Real, KdBCa );
    PROPERTYSLOT_SET_GET( Real, dx );
    PROPERTYSLOT_SET_GET( Real, j );

  }

  Koivumaki_2011_CaBulkDiffusionFluxProcess()
  {
    // do nothing
  }

  SIMPLE_SET_GET_METHOD( Real, DCa );
  SIMPLE_SET_GET_METHOD( Real, DCaBm );
  SIMPLE_SET_GET_METHOD( Real, BCa );
  SIMPLE_SET_GET_METHOD( Real, KdBCa );
  SIMPLE_SET_GET_METHOD( Real, dx );
  SIMPLE_SET_GET_METHOD( Real, j );


  virtual void initialize()
  {
    Process::initialize();

    Ca_up   = getVariableReference( "Ca_up" ).getVariable();
    Ca_down = getVariableReference( "Ca_down" ).getVariable();
    Ca      = getVariableReference( "Ca" ).getVariable();

    BCa_KdBCa = BCa * KdBCa;
    dx2 = dx * dx;
  }

  virtual void fire()
  {
    /*
    # Ca buffers
    gammai1 = BCa*KdBCa/(Cai1 + KdBCa)**2
    betai1 = 1/( 1 + gammai1  )
    dCai1_dt =1e-3*( betai2 * (DCa + gammai2*DCaBm) * ( (Cai2-2*Cai1+Cai0)/dx**2 + (Cai2-Cai0)/(2*j*dx**2) ) - 2*betai2*gammai2*DCaBm/(KdBCa + Cai1) * ((Cai2-Cai0)/(2*dx))**2 + JCa2/Vnonjunct2*betai2)
    */
    Real Ca_up_mM   = Ca_up->getMolarConc() * 1000.0;
    Real Ca_down_mM = Ca_down->getMolarConc() * 1000.0;
    Real Ca_mM      = Ca->getMolarConc() * 1000.0;

    Real Ca_mM_KdBCa = Ca_mM + KdBCa;
    Real gamma = BCa_KdBCa / ( Ca_mM_KdBCa * Ca_mM_KdBCa );
    Real gamma_DCaBm = gamma * DCaBm;
    Real Ca_up_Ca_down_2dx_2 = ( Ca_up_mM - Ca_down_mM )/( 2.0 * dx );
    Ca_up_Ca_down_2dx_2 *= Ca_up_Ca_down_2dx_2;

    // mM/sec
    Real dCadt = ( DCa + gamma_DCaBm ) * (( Ca_up_mM - 2 * Ca_mM + Ca_down_mM )
      /dx2 + ( Ca_up_mM - Ca_down_mM )/( 2.0 * j * dx2 ));
    dCadt -= 2.0 * gamma_DCaBm / Ca_mM_KdBCa * Ca_up_Ca_down_2dx_2;
    dCadt *= getSuperSystem()->getSizeN_A() * 1.0e-3; // NoM/sec

    setFlux( dCadt );
  }

 protected:

  Variable* Ca_up;
  Variable* Ca_down;
  Variable* Ca;

  Real DCa;
  Real DCaBm;
  Real BCa;
  Real KdBCa;
  Real dx;
  Real j;

  Real BCa_KdBCa;
  Real dx2;
};

LIBECS_DM_INIT( Koivumaki_2011_CaBulkDiffusionFluxProcess, Process );
