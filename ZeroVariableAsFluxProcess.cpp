/*
 *  Ｃｏｅｆｆｉｃｉｅｎｔ = 0 の Variable の Value の和に属性 k を乗じた
 *  値を Flux に設定する。
 */

#include "libecs.hpp"
#include "ContinuousProcess.hpp"

USE_LIBECS;

LIBECS_DM_CLASS( ZeroVariableAsFluxProcess, ContinuousProcess )
{

 public:

  LIBECS_DM_OBJECT( ZeroVariableAsFluxProcess, Process )
  {
    INHERIT_PROPERTIES( Process );

    PROPERTYSLOT_SET_GET( Real, k );

  }

  ZeroVariableAsFluxProcess():k( 1.0 )
  {
    // do nothing
  }

  SIMPLE_SET_GET_METHOD( Real, k );

  virtual void initialize()
  {
    Process::initialize();
    // ZeroVariableの数が不正な時にエラーを吐くようにした方がbetter
  }

  virtual void fire()
  {
    Real _flux( 0.0 );

    for( VariableReferenceVector::const_iterator s(
            theZeroVariableReferenceIterator );
         s != thePositiveVariableReferenceIterator; ++s )
    {
        VariableReference const& aVariableReference( *s );
        _flux += aVariableReference.getVariable()->getValue();
    }

    setFlux( k * _flux );
  }

 protected:
  Real k;

 private:
  // Real _value;  // DEBUG
};

LIBECS_DM_INIT( ZeroVariableAsFluxProcess, Process );
