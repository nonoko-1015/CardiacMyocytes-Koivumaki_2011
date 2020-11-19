#include "libecs.hpp"
#include "ContinuousProcess.hpp"

#include <gsl/gsl_errno.h>
#include <gsl/gsl_math.h>

USE_LIBECS;

LIBECS_DM_CLASS( Koivumaki_2011_BufferFluxProcess, ContinuousProcess )
{

 public:

  LIBECS_DM_OBJECT( Koivumaki_2011_BufferFluxProcess, Process )
  {
    INHERIT_PROPERTIES( Process );

    PROPERTYSLOT_SET_GET( Real, B );
    PROPERTYSLOT_SET_GET( Real, KdB );
  }

  Koivumaki_2011_BufferFluxProcess()
  {
    // do nothing
  }

  SIMPLE_SET_GET_METHOD( Real, B );
  SIMPLE_SET_GET_METHOD( Real, KdB );

  virtual void initialize()
  {
    Process::initialize();

    ion  = getVariableReference( "ion" ).getVariable();
    buffer = getVariableReference( "buffer" ).getVariable();

    B_KdB = B * KdB;
  }

  virtual void fire()
  {
    Real ion_KdB = ion->getMolarConc() * 1000 + KdB;
    // Real beta = 1.0 / ( 1.0 + B_KdB / ion_KdB * ion_KdB );

    // pmol/sec -> NoM /sec
    setFlux(( 1.0 - ( 1.0 / ( 1.0 + B_KdB / gsl_pow_2( ion_KdB ))))
      * (ion->getVelocity() + buffer->getVelocity()) );
  }

 protected:

  Variable* ion;
  Variable* buffer;

  Real B;
  Real KdB;

  Real B_KdB;

 private:
  // Real _value;  // DEBUG
};

LIBECS_DM_INIT( Koivumaki_2011_BufferFluxProcess, Process );
