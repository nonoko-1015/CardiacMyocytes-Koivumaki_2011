
#include "libecs.hpp"
#include "Process.hpp"
#include <gsl/gsl_math.h>

USE_LIBECS;

LIBECS_DM_CLASS( Koivumaki_2011_ICaLAssignmentProcess, Process )
{

 public:

  LIBECS_DM_OBJECT( Koivumaki_2011_ICaLAssignmentProcess, Process )
  {
    INHERIT_PROPERTIES( Process );

    PROPERTYSLOT_SET_GET( Real, E_Ca_app );
    PROPERTYSLOT_SET_GET( Real, g_Ca_L );
    PROPERTYSLOT_SET_GET( Real, kCa );
    PROPERTYSLOT_SET_GET( Real, kCan );

  }

  Koivumaki_2011_ICaLAssignmentProcess()
  {
    // do nothing
  }

  SIMPLE_SET_GET_METHOD( Real, E_Ca_app );
  SIMPLE_SET_GET_METHOD( Real, g_Ca_L );
  SIMPLE_SET_GET_METHOD( Real, kCa );
  SIMPLE_SET_GET_METHOD( Real, kCan );


  virtual void initialize()
  {
    Process::initialize();

    ICaL  = getVariableReference( "ICaL" ).getVariable();
    ICaLd  = getVariableReference( "ICaLd" ).getVariable();
    ICaLfca  = getVariableReference( "ICaLfca" ).getVariable();
    ICaLf1  = getVariableReference( "ICaLf1" ).getVariable();
    ICaLf2  = getVariableReference( "ICaLf2" ).getVariable();
    Ca_ss  = getVariableReference( "Ca_ss" ).getVariable();
    ICaLfcainf  = getVariableReference( "ICaLfcainf" ).getVariable();
    ICaLfcatau  = getVariableReference( "ICaLfcatau" ).getVariable();
    ICaLdinf  = getVariableReference( "ICaLdinf" ).getVariable();
    ICaLdtau  = getVariableReference( "ICaLdtau" ).getVariable();
    ICaLfinf  = getVariableReference( "ICaLfinf" ).getVariable();
    ICaLf1tau  = getVariableReference( "ICaLf1tau" ).getVariable();
    ICaLf2tau  = getVariableReference( "ICaLf2tau" ).getVariable();
    V  = getVariableReference( "V" ).getVariable();
  }

  virtual void fire()
  {
    /*
    # ICaL
    ICaLfcainf = 1-1 / ( 1 + (kCa/Cass)**(kCan))
    ICaL = gCaL *(ICaLd) * (ICaLfca)*(ICaLf1)* (ICaLf2) * (V - ECa_app)
    ICaLdinf = 1/(1+exp((V+9)/-5.8))
    ICaLfinf = 1/(1+exp((V+27.4)/7.1))
    ICaLdtau = 0.0027*exp( -((V+35)/30)**2 ) + 0.002
    ICaLf1tau = 0.98698*exp( -((V+30.16047)/7.09396)**2 ) + 0.04275/(1+exp((V-51.61555)/-80.61331)) + 0.03576/(1+exp((V+29.57272)/13.21758)) - 0.00821
    ICaLf2tau = 1.3323*exp( -((V+40)/14.2)**2 ) + 0.0626
    ICaLfcatau = 2e-3
    */
    v = V->getValue();
    ICaLfcainf->setValue( 1.0 - 1.0 / ( 1.0 + pow( kCa / Ca_ss->getMolarConc() * 1000.0, kCan)) );
    ICaL->setValue( g_Ca_L * ICaLd->getValue() * ICaLfca->getValue() * ICaLf1->getValue() * ICaLf2->getValue() * ( v - E_Ca_app ));
    ICaLdinf->setValue( 1.0 /( 1.0 + exp(( v + 9.0 )/ -5.8 )));
    ICaLfinf->setValue( 1.0 /( 1.0 + exp(( v + 27.4 )/ 7.1 )));
    ICaLdtau->setValue( 0.0027 * exp( -gsl_pow_2(( v + 35.0 )/ 30.0 )) + 0.002 );
    ICaLf1tau->setValue( 0.98698 * exp( -gsl_pow_2(( v + 30.16047 )/ 7.09396 ) ) + 0.04275/( 1.0 + exp(( v - 51.61555 )/ -80.61331 )) + 0.03576 /( 1.0 + exp(( v + 29.57272 )/ 13.21758 )) - 0.00821 );
    ICaLf2tau->setValue( 1.3323 * exp( -gsl_pow_2(( v + 40.0 )/ 14.2 )) + 0.0626 );
    ICaLfcatau->setValue( 2.0e-3 );
  }

 protected:

  Variable* ICaL;
  Variable* ICaLd;
  Variable* ICaLfca;
  Variable* ICaLf1;
  Variable* ICaLf2;
  Variable* Ca_ss;
  Variable* ICaLfcainf;
  Variable* ICaLfcatau;
  Variable* ICaLdinf;
  Variable* ICaLdtau;
  Variable* ICaLfinf;
  Variable* ICaLf1tau;
  Variable* ICaLf2tau;
  Variable* V;

  Real E_Ca_app;
  Real g_Ca_L;
  Real kCa;
  Real kCan;
  Real v;
};

LIBECS_DM_INIT( Koivumaki_2011_ICaLAssignmentProcess, Process );
