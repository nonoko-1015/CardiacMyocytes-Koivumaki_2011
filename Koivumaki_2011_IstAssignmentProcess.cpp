
#include "libecs.hpp"
#include "Process.hpp"

USE_LIBECS;

LIBECS_DM_CLASS( Koivumaki_2011_IstAssignmentProcess, Process )
{

 public:

  LIBECS_DM_OBJECT( Koivumaki_2011_IstAssignmentProcess, Process )
  {
    INHERIT_PROPERTIES( Process );

    PROPERTYSLOT_SET_GET( Real, stim_duration );
    PROPERTYSLOT_SET_GET( Real, stim_amp );
    PROPERTYSLOT_SET_GET( Real, BCL );
    PROPERTYSLOT_SET_GET( Real, stim_steepness );
    PROPERTYSLOT_SET_GET( Real, stim_offset );

  }

  Koivumaki_2011_IstAssignmentProcess()
  {
    // do nothing
  }

  SIMPLE_SET_GET_METHOD( Real, stim_duration );
  SIMPLE_SET_GET_METHOD( Real, stim_amp );
  SIMPLE_SET_GET_METHOD( Real, BCL );
  SIMPLE_SET_GET_METHOD( Real, stim_steepness );
  SIMPLE_SET_GET_METHOD( Real, stim_offset );


  virtual void initialize()
  {
    Process::initialize();

    ist  = getVariableReference( "ist" ).getVariable();
    t  = getVariableReference( "t" ).getVariable();

    threshold = log( abs(stim_amp) * 1.0e+6 );
  }

  virtual void fire()
  {
    Real _t = t->getValue();
    Real stim_time = Real(Integer(_t) % Integer(BCL));
    Real f1 = -stim_steepness * ( stim_time - stim_offset );
    if ( f1 > threshold )
    {
      ist->setValue( 0.0 );
      return;
    }
    f1 = 1.0 + exp( f1 );
    Real f2 = stim_steepness * ( stim_time -stim_offset - stim_duration );
    if ( f2 > threshold )
    {
      ist->setValue( 0.0 );
      return;
    }
    f2 = 1.0 + exp( f2 );
    ist->setValue( -stim_amp/( f1 * f2 ));
  }

 protected:

  Variable* ist;
  Variable* t;

  Real stim_duration;
  Real stim_amp;
  Real BCL;
  Real stim_steepness;
  Real stim_offset;

  Real threshold;
};

LIBECS_DM_INIT( Koivumaki_2011_IstAssignmentProcess, Process );
