
#include "libecs.hpp"
#include "Process.hpp"

USE_LIBECS;

LIBECS_DM_CLASS( Koivumaki_2011_ItAssignmentProcess, Process )
{

 public:

  LIBECS_DM_OBJECT( Koivumaki_2011_ItAssignmentProcess, Process )
  {
    INHERIT_PROPERTIES( Process );

    PROPERTYSLOT_SET_GET( Real, g_t );
  }

  Koivumaki_2011_ItAssignmentProcess()
  {
    // do nothing
  }

  SIMPLE_SET_GET_METHOD( Real, g_t );

  virtual void initialize()
  {
    Process::initialize();

    It  = getVariableReference( "It" ).getVariable();
    Itrtau  = getVariableReference( "Itrtau" ).getVariable();
    Itrinf  = getVariableReference( "Itrinf" ).getVariable();
    Itstau  = getVariableReference( "Itstau" ).getVariable();
    Itsinf  = getVariableReference( "Itsinf" ).getVariable();
    Itr  = getVariableReference( "Itr" ).getVariable();
    Its  = getVariableReference( "Its" ).getVariable();
    V  = getVariableReference( "V" ).getVariable();
    EK  = getVariableReference( "EK" ).getVariable();

  }

  virtual void fire()
  {
    v = V->getValue();
    It->setValue( g_t*Itr->getValue()*Its->getValue()*(v-EK->getValue()) );
    Itrtau->setValue( 0.00350000*exp(-(pow(v/30.0000, 2.00000)))+0.00150000 );
    Itrinf->setValue( 1.00000/(1.00000+exp((v-1.00000)/-11.0000)) );
    // Itstau->setValue( 0.481200*exp(-(pow((v+52.4500)/14.9700, 2.00000)))+0.0141400 );
    Itstau->setValue( 0.025635*exp(-(pow((v+52.4500)/15.8827, 2.00000)))+0.0141400 ); // Maleckar et al.
    Itsinf->setValue( 1.00000/(1.00000+exp((v+40.5000)/11.5000)) );
  }

 protected:

  Variable* It;
  Variable* Itrtau;
  Variable* Itrinf;
  Variable* Itstau;
  Variable* Itsinf;
  Variable* Itr;
  Variable* Its;
  Variable* V;
  Variable* EK;

  Real g_t;
  Real v;
};

LIBECS_DM_INIT( Koivumaki_2011_ItAssignmentProcess, Process );
