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

  @[if not DEBUG_WITHOUT_PROCESS]
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
      [Ca_up   :../SR_@(x==4 ? x:x+1):Ca  0]
      [Ca_down :../SR_@(x==1 ? x:x-1):Ca  0]
      [Ca      :.:Ca                      1];
  }

  Process Koivumaki_2011_BufferFluxProcess(Ca_buffer)
  {
    Name "Ca buffering";

    @{'''
    betaSR1 = ( 1 + CSQN*KdCSQN/(CaSR1 + KdCSQN)**2 )**(-1)
    '''}

    B    @CSQN;
    KdB  @KdCSQN;

    VariableReferenceList
      [ion :.:Ca -1];
  }
  @[end if]  @#{ENDIF DEBUG_WITHOUT_PROCESS}

} # END of /Cell/SR_@x
