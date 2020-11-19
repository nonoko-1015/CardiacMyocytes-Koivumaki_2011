@{
if x == 0:
  SystemName = 'ss'
else:
  SystemName = 'bulk_{}'.format(x)
}
System System( /Cell/Cytosol/@SystemName )
{
  StepperID    Default;
  Name "Cytosol @SystemName";

  Variable Variable( SIZE )
  {
    Value    @(Vcytosol[x] * 1.0e-9);
  }

  @[if x == 0]
  Variable Variable(Na) # ss only
  {
    Name "Nass in component cleft_space_ion_concentrations (molar)";
    MolarConc  @(Nass_0 * 1e-3);
  }

  Variable Variable( Na_buffer ) # ss only
  {
    Name "Variable to hold Velocity of Na buffering";
    MolarConc    0.0;
    Fixed 1;
  }
  @[end if]

  Variable Variable( Ca )
  {
    MolarConc    @(CaCytosol_0[x] * 1e-3);  # Cai1
  }

  Variable Variable( Ca_buffer )
  {
    Name "Variable to hold Velocity of Ca buffering";
    MolarConc    0.0;
    Fixed 1;
  }

  @[if x < 4]
  Variable Variable( SERCACa ) # ss, bulk_1-3
  {
    MolarConc    @(SERCACa_0[x] * 1e-3);  # SERCACa1
  }

  Variable Variable( J_SERCASR ) # ss, bulk_1-3
  {
    Name "pmol/sec";
    Value    @(J_SERCASR_0[x]);
  }

  Variable Variable( J_bulkSERCA ) # ss, bulk_1-3
  {
    Name "pmol/sec";
    Value    @(J_bulkSERCA_0[x]);
  }

  Variable Variable( JSRCaleak ) # ss, bulk_1-3
  {
    Value    @(JSRCaleak_0[x]);
  }

  Variable Variable( RyRa ) # ss, bulk_1-3
  {
    Value    @(RyRa_0[x]); # RyRa@x
  }

  Variable Variable( RyRo ) # ss, bulk_1-3
  {
    Value    @(RyRo_0[x]); # RyRo@x
  }

  Variable Variable( RyRc ) # ss, bulk_1-3
  {
    Value    @(RyRc_0[x]); # RyRc@x
  }

  Variable Variable( RyRainf ) # ss, bulk_1-3
  {
    Value    @(RyRainf_0[x]);
  }

  Variable Variable( RyRoinf ) # ss, bulk_1-3
  {
    Value    @(RyRoinf_0[x]);
  }

  Variable Variable( RyRcinf ) # ss, bulk_1-3
  {
    Value    @(RyRcinf_0[x]);
  }

  Variable Variable( RyRtauact ) # ss, bulk_1-3
  {
    Value    @RyRtauact;
    Fixed  1;
  }

  Variable Variable( RyRtauinact ) # ss, bulk_1-3
  {
    Value    @RyRtauinact;
    Fixed  1;
  }

  Variable Variable( RyRtauadapt ) # ss, bulk_1-3
  {
    Value    @RyRtauadapt;
    Fixed  1;
  }

  Variable Variable( Jrel ) # ss, bulk_1-3
  {
    Name "pmol/sec";
    Value    @(Jrel_0[x]);
  }

  @[if not DEBUG_WITHOUT_BULK_PROCESSES]
  # ss, bulk_1-3
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
      [J_SERCASR   :.:J_SERCASR                1]
      [J_bulkSERCA :.:J_bulkSERCA              1]
      [SERCACa     :.:SERCACa                  0]
      [CaSR        :../../SR_@(x==0 ? 4:x):Ca  0]
      [Cai         :.:Ca                       0];
  }

  # ss, bulk_1-3
  Process ZeroVariableAsFluxProcess(J_SERCASR)
  {
    VariableReferenceList
      [J_SERCASR :.:J_SERCASR                0] # pmol/sec
      [SERCACa   :.:SERCACa                 -1]
      [CaSR      :../../SR_@(x==0 ? 4:x):Ca  2];

    k @(N_A * 1e-12 * 0.5);  # pmol/sec -> NoM/sec
  }

  # ss, bulk_1-3
  Process ZeroVariableAsFluxProcess(J_bulkSERCA)
  {
    VariableReferenceList
      [J_bulkSERCA :.:J_bulkSERCA  0] # pmol/sec
      [SERCACa     :.:SERCACa      1]
      [Cai         :.:Ca          -2];

    k @(N_A * 1e-12 * 0.5);  # pmol/sec -> NoM/sec
  }

  # ss, bulk_1-3
  Process Koivumaki_2011_JSRCaleakAssignmentProcess( JSRCaleak_assign )
  {
    StepperID    PSV;
    Name "";
    @{'''
    JSRCaleak1 = kSRleak * ( CaSR1 - Cai1 ) * Vnonjunct1
    '''}

    kSRleak  @kSRleak;

    VariableReferenceList
      [JSRCaleak :.:JSRCaleak                1]
      [CaSR      :../../SR_@(x==0 ? 4:x):Ca  0]
      [Cai       :.:Ca                       0];
  }

  # ss, bulk_1-3
  Process ZeroVariableAsFluxProcess(JSRCaleak)
  {
    VariableReferenceList
      [JSRCaleak :.:JSRCaleak                0] # pmol/sec
      [Cai       :.:Ca                       1]
      [CaSR      :../../SR_@(x==0 ? 4:x):Ca -1];

    k @(N_A * 1e-12);  # pmol/sec -> NoM/sec
  }

  # ss, bulk_1-3
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
      [Jrel    :.:Jrel                     1]
      [RyRainf :.:RyRainf                  1]
      [RyRoinf :.:RyRoinf                  1]
      [RyRcinf :.:RyRcinf                  1]
      [RyRa    :.:RyRa                     0]
      [RyRo    :.:RyRo                     0]
      [RyRc    :.:RyRc                     0]
      [CaSR    :../../SR_@(x==0 ? 4:x):Ca  0]
      [Cai     :.:Ca                       0];
  }

  # ss, bulk_1-3
  Process ZeroVariableAsFluxProcess(Jrel)
  {
    VariableReferenceList
      [Jrel :.:Jrel                     0] # pmol/sec
      [Cai  :.:Ca                       1]
      [CaSR :../../SR_@(x==0 ? 4:x):Ca -1];

    k @(N_A * 1e-12);  # pmol/sec -> NoM/sec
  }

  # ss, bulk_1-3
  Process Nygren_1998_GatingFluxProcess(dRyRo_dt)
  {
    VariableReferenceList
      [gate  :.:RyRo       1]
      [g_inf :.:RyRoinf    0]
      [g_tau :.:RyRtauact  0];
  }

  # ss, bulk_1-3
  Process Nygren_1998_GatingFluxProcess(dRyRc_dt)
  {
    VariableReferenceList
      [gate  :.:RyRc         1]
      [g_inf :.:RyRcinf      0]
      [g_tau :.:RyRtauinact  0];
  }

  # ss, bulk_1-3
  Process Nygren_1998_GatingFluxProcess(dRyRa_dt)
  {
    VariableReferenceList
      [gate  :.:RyRa         1]
      [g_inf :.:RyRainf      0]
      [g_tau :.:RyRtauadapt  0];
  }
  @[end if]  @#{ENDIF DEBUG_WITHOUT_BULK_PROCESSES}
  @[end if]  @#{ENDIF if x < 4}

  @[if not DEBUG_WITHOUT_BULK_PROCESSES]
  @[if x > 0] # bulk_1-4
  # bulk_1-4
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
      [Ca_up   :../bulk_@(x==4 ? x:x+1):Ca  0]
      [Ca_down :../bulk_@(x==1 ? x:x-1):Ca  0]
      [Ca      :.:Ca                        1];
  }

  # bulk_1-4
  Process Koivumaki_2011_BufferFluxProcess(Ca_buffer)
  {
    Name "Ca buffering";

    @{'''
    beta = ( 1 + BCa*KdBCa/(Ca + KdBCa)**2  )**(-1)
    '''}

    B    @BCa;
    KdB  @KdBCa;

    VariableReferenceList
      [ion    :.:Ca        -1]
      [buffer :.:Ca_buffer  1];
  }

  @[else] # ss
  # ss only
  Process Koivumaki_2011_CassBufferFluxProcess(Ca_buffer)
  {
    @{'''
    # Ca buffers
    betass = ( 1 + SLlow*KdSLlow/(Cass + KdSLlow)**2 + SLhigh*KdSLhigh/(Cass + KdSLhigh)**2 + BCa*KdBCa/(Cass + KdBCa)**2  )**(-1)
    dCass_dt = (1-betass) * ( JCass/Vss + (-ICaL - ICab - ICaP + 2*INaCa) / (2*Vss*F) )
    '''}

    SLlow    @SLlow;
    KdSLlow  @KdSLlow;
    SLhigh   @SLhigh;
    KdSLhigh @KdSLhigh;
    BCa      @BCa;
    KdBCa    @KdBCa;

    VariableReferenceList
      [Cass   :.:Ca        -1]
      [buffer :.:Ca_buffer  1];
  }

  # ss only
  Process Koivumaki_2011_BufferFluxProcess(Na_buffer)
  {
    Name "Sodium buffering";

    @{'''
    beta = 1.0 / ( 1.0 + B * KdB / pow(( ion.MolarConc * 1000 + KdB ), 2 ) )
    '''}

    B    @BNa;
    KdB  @KdBNa;

    VariableReferenceList
      [ion    :.:Na        -1]
      [buffer :.:Na_buffer  1];
  }

  # ss only
  Process Koivumaki_2011_DiffusionJNjFluxProcess(Jj_nj)
  {
    Name "Ca diffusion from junct to non-junct";
    @{'''
    #  Diffusion from junct to non-junct (pmol/sec)
    Jj_nj = DCa * Aj_nj / xj_nj * (Cass-Cai4)*1e-6
    '''}

    D  @DCa;
    Aj_nj  @Aj_nj;
    xj_nj  @xj_nj;

    VariableReferenceList
      [nj :../bulk_4:Ca  1]  # Cai4
      [j  :.:Ca         -1]; # Cass
  }
  @[end if]
  @[end if]  @#{ENDIF DEBUG_WITHOUT_BULK_PROCESSES}

} # END of /Cell/Cytosol/@SystemName
