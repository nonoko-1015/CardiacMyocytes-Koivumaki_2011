
#include "libecs.hpp"
#include "ContinuousProcess.hpp"

USE_LIBECS;

LIBECS_DM_CLASS( Koivumaki_2011_CaSRDiffusionFluxProcess, ContinuousProcess )
{

 public:

  LIBECS_DM_OBJECT( Koivumaki_2011_CaSRDiffusionFluxProcess, Process )
  {
    INHERIT_PROPERTIES( Process );

    PROPERTYSLOT_SET_GET( Real, DCa );
    PROPERTYSLOT_SET_GET( Real, dx );
    PROPERTYSLOT_SET_GET( Real, j );

  }

  Koivumaki_2011_CaSRDiffusionFluxProcess()
  {
    // do nothing
  }

  SIMPLE_SET_GET_METHOD( Real, DCa );
  SIMPLE_SET_GET_METHOD( Real, dx );
  SIMPLE_SET_GET_METHOD( Real, j );


  virtual void initialize()
  {
    Process::initialize();

    Ca_up   = getVariableReference( "Ca_up" ).getVariable();
    Ca_down = getVariableReference( "Ca_down" ).getVariable();
    Ca      = getVariableReference( "Ca" ).getVariable();

    DCa_dx2 = DCa / dx / dx;
    DCa_2_j_dx2 = DCa_dx2 / 2.0 / j;
  }

  virtual void fire()
  {
    /*
    dCaSR1_dt= DCaSR * ( (CaSR2-2*CaSR1+CaSR0)/dx**2 + (CaSR2-CaSR0)/(2*j*dx**2) )
    */
    Real Ca_up_mM   = Ca_up->getMolarConc() * 1000.0;
    Real Ca_down_mM = Ca_down->getMolarConc() * 1000.0;
    Real Ca_mM      = Ca->getMolarConc() * 1000.0;

    Real dCadt = DCa_dx2 * ( Ca_up_mM - 2.0 * Ca_mM + Ca_down_mM )
      + DCa_2_j_dx2 * ( Ca_up_mM - Ca_down_mM );  // mM/sec
    dCadt *= getSuperSystem()->getSizeN_A() * 1.0e-3; // NoM/sec

    setFlux( dCadt );
  }

 protected:

  Variable* Ca_up;
  Variable* Ca_down;
  Variable* Ca;

  Real DCa;
  Real dx;
  Real j;

  Real DCa_dx2;
  Real DCa_2_j_dx2;
};

LIBECS_DM_INIT( Koivumaki_2011_CaSRDiffusionFluxProcess, Process );
