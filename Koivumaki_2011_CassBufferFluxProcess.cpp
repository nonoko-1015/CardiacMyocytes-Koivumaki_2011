#include "libecs.hpp"
#include "ContinuousProcess.hpp"

USE_LIBECS;

LIBECS_DM_CLASS( Koivumaki_2011_CassBufferFluxProcess, ContinuousProcess )
{

 public:

  LIBECS_DM_OBJECT( Koivumaki_2011_CassBufferFluxProcess, Process )
  {
    INHERIT_PROPERTIES( Process );

    PROPERTYSLOT_SET_GET( Real, F );
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

  SIMPLE_SET_GET_METHOD( Real, F );
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

    SLlow_KdSLlow = SLlow * KdSLlow;
    SLhigh_KdSLhigh = SLhigh * KdSLhigh;
    BCa_KdBCa = BCa * KdBCa;
  }

  virtual void fire()
  {
    Real Cass_mM = Cass->getMolarConc() * 1000;
    Real Cass_KdSLlow = Cass_mM + KdSLlow;
    Real Cass_KdSLhigh = Cass_mM + KdSLhigh;
    Real Cass_KdBCa = Cass_mM + KdBCa;
    Real betass = 1.0 /( 1.0 + SLlow_KdSLlow /( Cass_KdSLlow * Cass_KdSLlow )
      + SLhigh_KdSLhigh /( Cass_KdSLhigh * Cass_KdSLhigh )
      + BCa_KdBCa /( Cass_KdBCa * Cass_KdBCa ));

    setFlux(( 1.0 - betass ) * Cass->getVelocity());
  }

 protected:

  Variable* Cass;

  Real F;
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
