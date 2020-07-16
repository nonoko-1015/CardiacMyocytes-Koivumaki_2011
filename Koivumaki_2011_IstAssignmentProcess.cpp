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

    BCL_msec = Integer( BCL * 1e+3 );
    threshold = log( abs(stim_amp) * 1.0e+6 );
    f1_const = stim_steepness * stim_offset * 1e+3;
    f2_const = -stim_steepness * ( stim_offset + stim_duration ) * 1e+3;
  }

  virtual void fire()
  {
    Integer t_msec = Integer( t->getValue() * 1e+3 );
    Real stim_time_msec = Real( t_msec % BCL_msec );
    Real f1 = -stim_steepness * stim_time_msec + f1_const;
    if ( f1 > threshold )
    {
      ist->setValue( 0.0 );
      return;
    }
    f1 = 1.0 + exp( f1 );
    Real f2 = stim_steepness * stim_time_msec + f2_const;
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

  Real stim_duration;  // sec
  Real stim_amp;       // pA
  Real BCL;            // sec
  Real stim_steepness; // sec
  Real stim_offset;    // sec

  Integer BCL_msec;
  Real threshold;
  Real f1_const;
  Real f2_const;
};

LIBECS_DM_INIT( Koivumaki_2011_IstAssignmentProcess, Process );
