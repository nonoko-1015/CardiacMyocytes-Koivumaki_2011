/*
 *  Ｃｏｅｆｆｉｃｉｅｎｔ = 0 の Variable の Value (pA) の和を
 *  Number of molecule /sec に変換した値を Flux に設定する。
 */

#include "libecs.hpp"
#include "ContinuousProcess.hpp"

USE_LIBECS;

LIBECS_DM_CLASS( Koivumaki_2011_ZeroVariableAsCurrentFluxProcess, ContinuousProcess )
{

 public:

  LIBECS_DM_OBJECT( Koivumaki_2011_ZeroVariableAsCurrentFluxProcess, Process )
  {
    INHERIT_PROPERTIES( Process );

    PROPERTYSLOT_SET_GET( Real, k );
    PROPERTYSLOT_SET_GET( Real, F );

  }

  Koivumaki_2011_ZeroVariableAsCurrentFluxProcess()
  {
    // do nothing
  }

  SIMPLE_SET_GET_METHOD( Real, k );
  SIMPLE_SET_GET_METHOD( Real, F );

  virtual void initialize()
  {
    Process::initialize();

    k_pA_NoM_sec = k / F * 1.0e-12 * N_A;
  }

  virtual void fire()
  {
    Real _i( 0.0 );

    for( VariableReferenceVector::const_iterator s(
            theZeroVariableReferenceIterator );
         s != thePositiveVariableReferenceIterator; ++s )
    {
        VariableReference const& aVariableReference( *s );
        _i += aVariableReference.getVariable()->getValue();
    }

    setFlux( k_pA_NoM_sec * _i );
  }

 protected:
  Real k;
  Real F;

  Real k_pA_NoM_sec; // k * (pA -> NoM/sec)

 private:
  // Real _value;  // DEBUG
};

LIBECS_DM_INIT( Koivumaki_2011_ZeroVariableAsCurrentFluxProcess, Process );
