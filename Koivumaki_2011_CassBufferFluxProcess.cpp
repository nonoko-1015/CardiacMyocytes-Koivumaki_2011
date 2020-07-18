#include "libecs.hpp"
#include "ContinuousProcess.hpp"

#include <gsl/gsl_errno.h>
#include <gsl/gsl_math.h>

USE_LIBECS;

LIBECS_DM_CLASS( Koivumaki_2011_CassBufferFluxProcess, ContinuousProcess )
{

 public:

  LIBECS_DM_OBJECT( Koivumaki_2011_CassBufferFluxProcess, Process )
  {
    INHERIT_PROPERTIES( Process );

    PROPERTYSLOT_SET_GET( Real, SLlow );
    PROPERTYSLOT_SET_GET( Real, KdSLlow );
    PROPERTYSLOT_SET_GET( Real, SLhigh );
    PROPERTYSLOT_SET_GET( Real, KdSLhigh );
    PROPERTYSLOT_SET_GET( Real, BCa );
    PROPERTYSLOT_SET_GET( Real, KdBCa );
  }

  Koivumaki_2011_CassBufferFluxProcess()
  {
    // do nothing
  }

  SIMPLE_SET_GET_METHOD( Real, SLlow );
  SIMPLE_SET_GET_METHOD( Real, KdSLlow );
  SIMPLE_SET_GET_METHOD( Real, SLhigh );
  SIMPLE_SET_GET_METHOD( Real, KdSLhigh );
  SIMPLE_SET_GET_METHOD( Real, BCa );
  SIMPLE_SET_GET_METHOD( Real, KdBCa );

  virtual void initialize()
  {
    Process::initialize();

    Cass = getVariableReference( "Cass" ).getVariable();
    buffer = getVariableReference( "buffer" ).getVariable();

    SLlow_KdSLlow = SLlow * KdSLlow;
    SLhigh_KdSLhigh = SLhigh * KdSLhigh;
    BCa_KdBCa = BCa * KdBCa;
  }

  virtual void fire()
  {
    Real Cass_mM = Cass->getMolarConc() * 1000;
    Real betass = 1.0 /( 1.0 + SLlow_KdSLlow / gsl_pow_2( Cass_mM + KdSLlow )
      + SLhigh_KdSLhigh / gsl_pow_2( Cass_mM + KdSLhigh )
      + BCa_KdBCa / gsl_pow_2( Cass_mM + KdBCa ));

    setFlux(( 1.0 - betass ) * (Cass->getVelocity() - buffer->getVelocity()));
  }

 protected:

  Variable* Cass;
  Variable* buffer;

  Real SLlow;
  Real KdSLlow;
  Real SLhigh;
  Real KdSLhigh;
  Real BCa;
  Real KdBCa;

  Real SLlow_KdSLlow;
  Real SLhigh_KdSLhigh;
  Real BCa_KdBCa;

 private:
  // Real _value;  // DEBUG
};

LIBECS_DM_INIT( Koivumaki_2011_CassBufferFluxProcess, Process );
