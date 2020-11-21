
#include "libecs.hpp"
#include "Process.hpp"

USE_LIBECS;

LIBECS_DM_CLASS( Koivumaki_2011_JrelAssignmentProcess, Process )
{

 public:

  LIBECS_DM_OBJECT( Koivumaki_2011_JrelAssignmentProcess, Process )
  {
    INHERIT_PROPERTIES( Process );

    PROPERTYSLOT_SET_GET( Real, k_nu );
  }

  Koivumaki_2011_JrelAssignmentProcess()
  {
    // do nothing
  }

  SIMPLE_SET_GET_METHOD( Real, k_nu );

  virtual void initialize()
  {
    Process::initialize();

    Jrel      = getVariableReference( "Jrel" ).getVariable();
    RyRainf   = getVariableReference( "RyRainf" ).getVariable();
    RyRoinf   = getVariableReference( "RyRoinf" ).getVariable();
    RyRcinf   = getVariableReference( "RyRcinf" ).getVariable();
    RyRa      = getVariableReference( "RyRa" ).getVariable();
    RyRo      = getVariableReference( "RyRo" ).getVariable();
    RyRc      = getVariableReference( "RyRc" ).getVariable();
    CaSR      = getVariableReference( "CaSR" ).getVariable();
    Cai       = getVariableReference( "Cai" ).getVariable();
  }

  virtual void fire()
  {
    /**
    nu1 = 1*Vnonjunct1
    RyRSRCa1 = (1 - 1/(1 +  exp((CaSR1-0.3)/0.1)))
    RyRainf1 = 0.505-0.427/(1 + exp((Cai1*1000-0.29)/0.082))
    RyRoinf1 = (1 - 1/(1 +  exp(( Cai1*1000-(RyRa1 + 0.22))/0.03)))
    RyRcinf1 = (1/(1 +  exp(( Cai1*1000-(RyRa1+0.02))/0.01)))
    Jrel1 = nu1 * ( RyRo1 ) * RyRc1 * RyRSRCa1 * ( CaSR1 -  Cai1 )
    **/
    Real nu_nL = k_nu * getSuperSystem()->getSize() * 1e+9; // nL
    Real CaSR_mM = CaSR->getMolarConc() * 1e+3; // mM
    Real Cai_mM = Cai->getMolarConc() * 1e+3; // mM
    Real Cai_uM = Cai_mM * 1e+3; // uM (micromolar)
    Real RyRa_val = RyRa->getValue(); // nondim
    Real RyRSRCa = 1.0 - 1.0 /( 1.0 + exp(( CaSR_mM - 0.3 )/ 0.1 )); // nondim

    RyRainf->setValue(
      0.505 - 0.427 /( 1.0 + exp(( Cai_uM - 0.29 )/ 0.082 ))
    );
    RyRoinf->setValue(
      ( 1.0 - 1.0 /( 1.0 + exp(( Cai_uM - ( RyRa_val + 0.22 ))/ 0.03 )))
    );
    RyRcinf->setValue(
      ( 1.0 /( 1.0 + exp(( Cai_uM -( RyRa_val + 0.02 ))/ 0.01 )))
    );
    Jrel->setValue(
      nu_nL * RyRo->getValue() * RyRc->getValue() * RyRSRCa
      * ( CaSR_mM -  Cai_mM )
    );
  }

 protected:
  Variable* Jrel;
  Variable* RyRainf;
  Variable* RyRoinf;
  Variable* RyRcinf;
  Variable* RyRa;
  Variable* RyRo;
  Variable* RyRc;
  Variable* CaSR;
  Variable* Cai;

  Real k_nu;
};

LIBECS_DM_INIT( Koivumaki_2011_JrelAssignmentProcess, Process );
