
#include "libecs.hpp"
#include "Process.hpp"

USE_LIBECS;

LIBECS_DM_CLASS( Koivumaki_2011_JSRCaleakAssignmentProcess, Process )
{

 public:

  LIBECS_DM_OBJECT( Koivumaki_2011_JSRCaleakAssignmentProcess, Process )
  {
    INHERIT_PROPERTIES( Process );

    PROPERTYSLOT_SET_GET( Real, kSRleak );
  }

  Koivumaki_2011_JSRCaleakAssignmentProcess()
  {
    // do nothing
  }

  SIMPLE_SET_GET_METHOD( Real, kSRleak );

  virtual void initialize()
  {
    Process::initialize();

    JSRCaleak = getVariableReference( "JSRCaleak" ).getVariable();
    CaSR      = getVariableReference( "CaSR" ).getVariable();
    Cai       = getVariableReference( "Cai" ).getVariable();
  }

  virtual void fire()
  {
    /**
    JSRCaleak1 = kSRleak * ( CaSR1 - Cai1 ) * Vnonjunct1
    **/
    JSRCaleak->setValue(
      kSRleak * ( CaSR->getMolarConc() - Cai->getMolarConc())
      * getSuperSystem()->getSize() * 1e+12
    );
  }

 protected:
  Variable* JSRCaleak;
  Variable* CaSR;
  Variable* Cai;

  Real kSRleak;
};

LIBECS_DM_INIT( Koivumaki_2011_JSRCaleakAssignmentProcess, Process );
