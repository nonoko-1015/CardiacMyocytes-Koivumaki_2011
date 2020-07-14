
#include "libecs.hpp"
#include "Process.hpp"

USE_LIBECS;

LIBECS_DM_CLASS( Koivumaki_2011_J_SERCAAssignmentProcess, Process )
{

 public:

  LIBECS_DM_OBJECT( Koivumaki_2011_J_SERCAAssignmentProcess, Process )
  {
    INHERIT_PROPERTIES( Process );

    PROPERTYSLOT_SET_GET( Real, k1 );
    PROPERTYSLOT_SET_GET( Real, k2 );
    PROPERTYSLOT_SET_GET( Real, k3 );
    PROPERTYSLOT_SET_GET( Real, k4 );
    PROPERTYSLOT_SET_GET( Real, cpumps );

  }

  Koivumaki_2011_J_SERCAAssignmentProcess()
  {
    // do nothing
  }

  SIMPLE_SET_GET_METHOD( Real, k1 );
  SIMPLE_SET_GET_METHOD( Real, k2 );
  SIMPLE_SET_GET_METHOD( Real, k3 );
  SIMPLE_SET_GET_METHOD( Real, k4 );
  SIMPLE_SET_GET_METHOD( Real, cpumps );


  virtual void initialize()
  {
    Process::initialize();

    J_SERCASR   = getVariableReference( "J_SERCASR" ).getVariable();
    J_bulkSERCA = getVariableReference( "J_bulkSERCA" ).getVariable();
    SERCACa     = getVariableReference( "SERCACa" ).getVariable();
    CaSR        = getVariableReference( "CaSR" ).getVariable();
    Cai         = getVariableReference( "Cai" ).getVariable();

  }

  virtual void fire()
  {
    /**
    # SERCA fluxes
    J_SERCASR1 = (-k3*CaSR1**2*(cpumps-SERCACa1)+k4*SERCACa1)*Vnonjunct1*2
    J_bulkSERCA1 = (k1*Cai1**2*(cpumps-SERCACa1)-k2*SERCACa1)*Vnonjunct1*2
    **/
    Real CaSR_mM = CaSR->getMolarConc() * 1e+3; // mM
    Real Cai_mM = Cai->getMolarConc() * 1e+3; // mM
    Real SERCACa_mM = SERCACa->getMolarConc() * 1e+3; // mM
    Real Vnonjunct_nL = getSuperSystem()->getSize() * 1e+9; // nL

    J_SERCASR->setValue(
      ( -k3 * CaSR_mM * CaSR_mM * ( cpumps -SERCACa_mM ) + k4 * SERCACa_mM )
      * Vnonjunct_nL * 2.0
    );
    J_bulkSERCA->setValue(
      ( k1 * Cai_mM * Cai_mM *( cpumps - SERCACa_mM ) - k2 * SERCACa_mM )
      * Vnonjunct_nL * 2.0
    );
  }

 protected:

  Variable* J_SERCASR;
  Variable* J_bulkSERCA;
  Variable* SERCACa;
  Variable* CaSR;
  Variable* Cai;

  Real k1;  // sec^(-1)
  Real k2;  // mM^2 sec^(-1)
  Real k3;  // mM^(-2) sec^(-1)
  Real k4;  // sec^(-1)
  Real cpumps;  // mM
};

LIBECS_DM_INIT( Koivumaki_2011_J_SERCAAssignmentProcess, Process );
