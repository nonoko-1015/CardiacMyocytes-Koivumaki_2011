
#include "libecs.hpp"
#include "Process.hpp"

USE_LIBECS;

LIBECS_DM_CLASS( Koivumaki_2011_IsusAssignmentProcess, Process )
{

 public:

  LIBECS_DM_OBJECT( Koivumaki_2011_IsusAssignmentProcess, Process )
  {
    INHERIT_PROPERTIES( Process );

    PROPERTYSLOT_SET_GET( Real, g_sus );
  }

  Koivumaki_2011_IsusAssignmentProcess()
  {
    // do nothing
  }

  SIMPLE_SET_GET_METHOD( Real, g_sus );

  virtual void initialize()
  {
    Process::initialize();

    Isusrtau  = getVariableReference( "Isusrtau" ).getVariable();
    Isusrinf  = getVariableReference( "Isusrinf" ).getVariable();
    Isusstau  = getVariableReference( "Isusstau" ).getVariable();
    Isussinf  = getVariableReference( "Isussinf" ).getVariable();
    Isus  = getVariableReference( "Isus" ).getVariable();
    Isusr  = getVariableReference( "Isusr" ).getVariable();
    Isuss  = getVariableReference( "Isuss" ).getVariable();
    V  = getVariableReference( "V" ).getVariable();
    E_K  = getVariableReference( "E_K" ).getVariable();

  }

  virtual void fire()
  {
    v = V->getValue();
    Isus->setValue( g_sus*Isusr->getValue()*Isuss->getValue()*(v-E_K->getValue()) );
    Isusrtau->setValue( 0.00900000/(1.00000+exp((v+5.00000)/12.0000))+0.000500000 );
    Isusrinf->setValue( 1.00000/(1.00000+exp((v+6.00000)/-8.60000)) ); // Maleckar et al.
    Isusstau->setValue( 0.5900000/(1.00000+exp((v+60.0000)/10.0000))+3.050000 ); // Maleckar et al.
    Isussinf->setValue( 1.000000/(1.00000+exp((v+7.5000)/10.0000)) ); // Maleckar et al.

  }

 protected:

  Variable* Isusrtau;
  Variable* Isusrinf;
  Variable* Isusstau;
  Variable* Isussinf;
  Variable* Isus;
  Variable* Isusr;
  Variable* Isuss;
  Variable* V;
  Variable* E_K;

  Real g_sus;
  Real v;
};

LIBECS_DM_INIT( Koivumaki_2011_IsusAssignmentProcess, Process );
