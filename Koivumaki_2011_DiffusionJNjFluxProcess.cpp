
#include "libecs.hpp"
#include "ContinuousProcess.hpp"

USE_LIBECS;

LIBECS_DM_CLASS( Koivumaki_2011_DiffusionJNjFluxProcess, ContinuousProcess )
{

 public:

  LIBECS_DM_OBJECT( Koivumaki_2011_DiffusionJNjFluxProcess, Process )
  {
    INHERIT_PROPERTIES( Process );

    PROPERTYSLOT_SET_GET( Real, D );
    PROPERTYSLOT_SET_GET( Real, Aj_nj );
    PROPERTYSLOT_SET_GET( Real, xj_nj );

  }

  Koivumaki_2011_DiffusionJNjFluxProcess()
  {
    // do nothing
  }

  SIMPLE_SET_GET_METHOD( Real, D );
  SIMPLE_SET_GET_METHOD( Real, Aj_nj );
  SIMPLE_SET_GET_METHOD( Real, xj_nj );


  virtual void initialize()
  {
    Process::initialize();

    nj  = getVariableReference( "nj" ).getVariable();
    j  = getVariableReference( "j" ).getVariable();

    D_x_NA = D * Aj_nj / xj_nj * 1e-15 * N_A;
    // L/mol/sec = um/sec * aL / um * 1e-15 * mol^-1
  }

  virtual void fire()
  {
    /**
    #  Diffusion from junct to non-junct (pmol/sec)
    Jj_nj = D * Aj_nj / xj_nj * (j-nj)*1e-6
    **/
    setFlux( D_x_NA * ( j->getMolarConc() - nj->getMolarConc()) ); // NoM/sec
  }

 protected:

  Variable* nj;
  Variable* j;

  Real D;
  Real Aj_nj;
  Real xj_nj;

  Real D_x_NA;
};

LIBECS_DM_INIT( Koivumaki_2011_DiffusionJNjFluxProcess, Process );
