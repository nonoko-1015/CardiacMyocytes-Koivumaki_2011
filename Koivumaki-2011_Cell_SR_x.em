System System( /Cell/SR_@x )
{
  StepperID    Default;
  Name "SR @x";

  Variable Variable( SIZE )
  {
    Value    @(VSR[x] * 1e-9); # L (nL -> L)
  }

  Variable Variable( Ca )
  {
    MolarConc    @(CaSR_0[x] * 1e-3);  # CaSR@x
  }

  Process Koivumaki_2011_CaSRDiffusionFluxProcess(Ca_diff)
  {
    Name "Ca buffering";

    @{'''
    dCaSR1_dt= DCaSR * ( (CaSR2-2*CaSR1+CaSR0)/dx**2 + (CaSR2-CaSR0)/(2*j*dx**2) )
    '''}

    DCa    @DCaSR;
    dx     @dx;
    j      @x;

    VariableReferenceList
      [Ca_up   :../bulk@(x+1):Ca             0]
      [Ca_down :../bulk@(x==1 ? 1 : x-1):Ca  0]
      [Ca      :.:Ca                         1];
  }

} END of /Cell/SR_@x
