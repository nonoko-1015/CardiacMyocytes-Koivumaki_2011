
#include "libecs.hpp"
#include "Process.hpp"

USE_LIBECS;

LIBECS_DM_CLASS( Koivumaki_2011_IfAssignmentProcess, Process )
{

 public:

  LIBECS_DM_OBJECT( Koivumaki_2011_IfAssignmentProcess, Process )
  {
    INHERIT_PROPERTIES( Process );

    PROPERTYSLOT_SET_GET( Real, gIf );

  }

  Koivumaki_2011_IfAssignmentProcess()
  {
    // do nothing
  }

  SIMPLE_SET_GET_METHOD( Real, gIf );


  virtual void initialize()
  {
    Process::initialize();

    Ifyinf  = getVariableReference( "Ifyinf" ).getVariable();
    Ifytau  = getVariableReference( "Ifytau" ).getVariable();
    IfNa  = getVariableReference( "IfNa" ).getVariable();
    IfK  = getVariableReference( "IfK" ).getVariable();
    If  = getVariableReference( "If" ).getVariable();
    Ify  = getVariableReference( "Ify" ).getVariable();
    ENa  = getVariableReference( "ENa" ).getVariable();
    EK  = getVariableReference( "EK" ).getVariable();
    V  = getVariableReference( "V" ).getVariable();

  }

  virtual void fire()
  {
    /*
    # If, Zorn-Pauly LAW fit
    Ifyinf = 1 / (1 + exp((V+97.82874)/12.48025))
    Ifytau = 1 / (0.00332*exp(-V/16.54103)+23.71839*exp(V/16.54103))
    IfNa = gIf * (Ify)*((0.2677)*(V-ENa))
    IfK = gIf * (Ify)*((1-0.2677)*(V-EK))
    If = IfK + IfNa
    */
    Real v = V->getValue();
    Real gIf_Ify = gIf * Ify->getValue();

    Ifyinf->setValue( 1.0 / (1.0 + exp((v+97.82874)/12.48025)) );
    Ifytau->setValue( 1.0 / (0.00332*exp(-v/16.54103)+23.71839*exp(v/16.54103)) );

    Real _IfNa = gIf_Ify * ((0.2677)*(v - ENa->getValue()));
    Real _IfK = gIf_Ify * ((1.0-0.2677)*(v - EK->getValue()));

    IfNa->setValue( _IfNa );
    IfK->setValue( _IfK );
    If->setValue( _IfK + _IfNa );
  }

 protected:

  Variable* Ifyinf;
  Variable* Ifytau;
  Variable* IfNa;
  Variable* IfK;
  Variable* If;
  Variable* Ify;
  Variable* ENa;
  Variable* EK;
  Variable* V;

  Real gIf;
};

LIBECS_DM_INIT( Koivumaki_2011_IfAssignmentProcess, Process );
