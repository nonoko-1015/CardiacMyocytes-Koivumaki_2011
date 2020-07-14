
#include "libecs.hpp"
#include "Process.hpp"

USE_LIBECS;

LIBECS_DM_CLASS( Koivumaki_2011_DiffusionJNjAssignmentProcess, Process )
{

 public:

  LIBECS_DM_OBJECT( Koivumaki_2011_DiffusionJNjAssignmentProcess, Process )
  {
    INHERIT_PROPERTIES( Process );

    PROPERTYSLOT_SET_GET( Real, D );
    PROPERTYSLOT_SET_GET( Real, Aj_nj );
    PROPERTYSLOT_SET_GET( Real, xj_nj );

  }

  Koivumaki_2011_DiffusionJNjAssignmentProcess()
  {
    // do nothing
  }

  SIMPLE_SET_GET_METHOD( Real, D );
  SIMPLE_SET_GET_METHOD( Real, Aj_nj );
  SIMPLE_SET_GET_METHOD( Real, xj_nj );


  virtual void initialize()
  {
    Process::initialize();

    Jj_nj = getVariableReference( "Jj_nj" ).getVariable();
    nj  = getVariableReference( "nj" ).getVariable();
    j  = getVariableReference( "j" ).getVariable();

    D_Aj_nj_xj_nj = D * Aj_nj / xj_nj;
  }

  virtual void fire()
  {
    /**
    #  Diffusion from junct to non-junct
    Jj_nj = D * Aj_nj / xj_nj * (j-nj)*1e-6
    **/
    Jj_nj->setValue( D_Aj_nj_xj_nj * ( j->getMolarConc() - nj->getMolarConc()) * 1e-3 );
  }

 protected:

  Variable* Jj_nj;
  Variable* nj;
  Variable* j;

  Real D;
  Real Aj_nj;
  Real xj_nj;

  Real D_Aj_nj_xj_nj;
};

LIBECS_DM_INIT( Koivumaki_2011_DiffusionJNjAssignmentProcess, Process );
