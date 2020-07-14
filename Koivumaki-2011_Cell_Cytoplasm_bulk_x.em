System System( /Cell/Cytosol/bulk_@x )
{
  StepperID    Default;
  Name "Cytosol bulk @x";

  Variable Variable( SIZE )
  {
    Value    @(Vnonjunct[x] * 1.0e-9);
  }

  Variable Variable( Ca )
  {
    MolarConc    @(Cai_0[x] * 1e-3);  # Cai1
  }

  @[if x < 4]
  Variable Variable( SERCACa )
  {
    MolarConc    @(SERCACa_0[x] * 1e-3);  # SERCACa1
  }

  Variable Variable( J_SERCASR )
  {
    Name "pmol/sec";
    Value    0.0;
  }

  Variable Variable( J_bulkSERCA )
  {
    Name "pmol/sec";
    Value    0.0;
  }

  Variable Variable( JSRCaleak )
  {
    Value    0.0;
  }

  Variable Variable( RyRa )
  {
    Value    @(RyRa_0[x]); # RyRa@x
  }

  Variable Variable( RyRo )
  {
    Value    @(RyRo_0[x]); # RyRo@x
  }

  Variable Variable( RyRc )
  {
    Value    @(RyRc_0[x]); # RyRc@x
  }

  Variable Variable( RyRainf )
  {
    Value    0.0;
  }

  Variable Variable( RyRoinf )
  {
    Value    0.0;
  }

  Variable Variable( RyRcinf )
  {
    Value    0.0;
  }

  Variable Variable( RyRtauact )
  {
    Value    @RyRtauact;
    Fixed  1;
  }

  Variable Variable( RyRtauinact )
  {
    Value    @RyRtauinact;
    Fixed  1;
  }

  Variable Variable( RyRtauadapt )
  {
    Value    @RyRtauadapt;
    Fixed  1;
  }

  Variable Variable( Jrel )
  {
    Name "pmol/sec";
    Value    0.0;
  }

  Process Koivumaki_2011_J_SERCAAssignmentProcess( J_SERCA )
  {
    StepperID    PSV;
    Name "";
    @{'''
    # SERCA fluxes
    J_SERCASR1 = (-k3*CaSR1**2*(cpumps-SERCACa1)+k4*SERCACa1)*Vnonjunct1*2
    J_bulkSERCA1 = (k1*Cai1**2*(cpumps-SERCACa1)-k2*SERCACa1)*Vnonjunct1*2
    '''}

    k1      @k1;
    k2      @k2;
    k3      @k3;
    k4      @k4;
    cpumps  @cpumps;

    VariableReferenceList
      [J_SERCASR   :.:J_SERCASR     1]
      [J_bulkSERCA :.:J_bulkSERCA   1]
      [SERCACa     :.:SERCACa       0]
      [CaSR        :../../SR_@x:Ca  0]
      [Cai         :.:Ca            0];
  }

  Process ZeroVariableAsFluxProcess(J_SERCASR)
  {
    VariableReferenceList
      [J_SERCASR :.:J_SERCASR     0] # pmol/sec
      [SERCACa   :.:SERCACa      -1]
      [CaSR      :../../SR_@x:Ca  2];

    k @(N_A * 1e-12 * 0.5);  # pmol/sec -> NoM/sec
  }

  Process ZeroVariableAsFluxProcess(J_bulkSERCA)
  {
    VariableReferenceList
      [J_bulkSERCA :.:J_bulkSERCA1  0] # pmol/sec
      [SERCACa     :.:SERCACa       1]
      [Cai         :.:Ca           -2];

    k @(N_A * 1e-12 * 0.5);  # pmol/sec -> NoM/sec
  }

  Process Koivumaki_2011_JSRCaleakAssignmentProcess( JCaleak_assign )
  {
    StepperID    PSV;
    Name "";
    @{'''
    JSRCaleak1 = kSRleak * ( CaSR1 - Cai1 ) * Vnonjunct1
    '''}

    kSRleak  @kSRleak;

    VariableReferenceList
      [JSRCaleak :.:JSRCaleak     1]
      [CaSR      :../../SR_@x:Ca  0]
      [Cai       :.:Ca            0];
  }

  Process ZeroVariableAsFluxProcess(JCaleak)
  {
    VariableReferenceList
      [JCaleak :.:JCaleak   0] # pmol/sec
      [Cai     :.:Ca        1]
      [CaSR    :../../SR_@x:Ca -1];

    k @(N_A * 1e-12);  # pmol/sec -> NoM/sec
  }

  Process Koivumaki_2011_JrelAssignmentProcess( Jrel_assign )
  {
    StepperID    PSV;
    Name "";
    @{'''
    nu1 = 1*Vnonjunct1
    RyRSRCa1 = (1 - 1/(1 +  exp((CaSR1-0.3)/0.1)))
    RyRainf1 = 0.505-0.427/(1 + exp((Cai1*1000-0.29)/0.082))
    RyRoinf1 = (1 - 1/(1 +  exp(( Cai1*1000-(RyRa1 + 0.22))/0.03)))
    RyRcinf1 = (1/(1 +  exp(( Cai1*1000-(RyRa1+0.02))/0.01)))
    Jrel1 = nu1 * ( RyRo1 ) * RyRc1 * RyRSRCa1 * ( CaSR1 -  Cai1 )
    '''}

    k_nu  @k_nu;  # k_nuss in SR4

    VariableReferenceList
      [Jrel    :.:Jrel         1]
      [RyRainf :.:RyRainf      1]
      [RyRoinf :.:RyRoinf      1]
      [RyRcinf :.:RyRcinf      1]
      [RyRa    :.:RyRa         0]
      [RyRo    :.:RyRo         0]
      [RyRc    :.:RyRc         0]
      [CaSR    :../../SR_1:Ca  0]
      [Cai     :.:Ca           0];
  }

  Process ZeroVariableAsFluxProcess(Jrel)
  {
    VariableReferenceList
      [Jrel :.:Jrel          0] # pmol/sec
      [Cai  :.:Ca            1]
      [CaSR :../../SR_@x:Ca -1];

    k @(N_A * 1e-12);  # pmol/sec -> NoM/sec
  }

  Process Nygren_1998_GatingFluxProcess(dRyRo_dt)
  {
    VariableReferenceList
      [gate  :.:RyRo       1]
      [g_inf :.:RyRoinf    0]
      [g_tau :.:RyRtauact  0];
  }

  Process Nygren_1998_GatingFluxProcess(dRyRc_dt)
  {
    VariableReferenceList
      [gate  :.:RyRc         1]
      [g_inf :.:RyRcinf      0]
      [g_tau :.:RyRtauinact  0];
  }

  Process Nygren_1998_GatingFluxProcess(dRyRa_dt)
  {
    VariableReferenceList
      [gate  :.:RyRa         1]
      [g_inf :.:RyRainf      0]
      [g_tau :.:RyRtauadapt  0];
  }
  @[end if]

  Process Koivumaki_2011_CaBulkDiffusionFluxProcess(Ca_diff)
  {
    Name "Sodium buffering";

    @{'''
    gammai1 = BCa*KdBCa/(Cai1 + KdBCa)**2
    dCai1_dt =(DCa + gammai1*DCaBm) * ( (Cai2-2*Cai1+Cai0)/dx**2 + (Cai2-Cai0)/(2*2*dx**2) ) - 2*gammai1*DCaBm/(KdBCa + Cai1) * ((Cai2-Cai0)/(2*dx))**2
    '''}

    DCa    @DCa;
    DCaBm  @DCaBm;
    BCa    @BCa;
    KdBCa  @KdBCa;
    dx     @dx;
    j      @x;

    VariableReferenceList
      [Ca_up   :../bulk@(x+1):Ca             0]
      [Ca_down :../bulk@(x==1 ? 1 : x-1):Ca  0]
      [Ca      :.:Ca                         1];
  }

  Process Koivumaki_2011_BufferFluxProcess(Ca_buffer)
  {
    Name "Ca buffering";

    @{'''
    beta = ( 1 + BCa*KdBCa/(Ca + KdBCa)**2  )**(-1)
    '''}

    B    @BCa;
    KdB  @KdBCa;

    VariableReferenceList
      [ion :.:Ca -1];
  }

} END of /Cell/Cytosol/bulk_@x
