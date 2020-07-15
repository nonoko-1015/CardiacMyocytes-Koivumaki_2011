System System( /Cell/Membrane )
{
  StepperID    Default;
  Name "Cell membrane";

  Variable Variable( SIZE )
  {
    Value    @Vss; # dummy
  }

  Variable Variable(V)
  {
    Name "V in component membrane (millivolt)";
    Value  @V_0;
  }

  Variable Variable(Itr)
  {
    Name "Itr in component Ca_independent_transient_outward_K_current_r_gate (dimensionless)";
    Value  @Itr_0;
  }

  Variable Variable(Its)
  {
    Name "Its in component Ca_independent_transient_outward_K_current_s_gate (dimensionless)";
    Value  @Its_0;
  }

  Variable Variable(Isusr)
  {
    Name "Isusr in component sustained_outward_K_current_r_sus_gate (dimensionless)";
    Value  @Isusr_0;
  }

  Variable Variable(Isuss)
  {
    Name "Isuss in component sustained_outward_K_current_s_sus_gate (dimensionless)";
    Value  @Isuss_0;
  }

  Variable Variable(IKsn)
  {
    Name "IKsn in component delayed_rectifier_K_currents_n_gate (dimensionless)";
    Value  @IKsn_0;
  }

  Variable Variable(IKrpa)
  {
    Name "IKrpa in component delayed_rectifier_K_currents_pa_gate (dimensionless)";
    Value  @IKrpa_0;
  }

  Variable Variable(ist) # TODO
  {
    Name "ist in component membrane (picoA)";
    Value  0.0;
  }

  Variable Variable(INaminf)
  {
    Name "INaminf in component sodium_current_m_gate (dimensionless)";
    Value  0.0032017055046363744;
  }

  Variable Variable(INahinf)
  {
    Name "INahinf in component sodium_current_h1_gate (dimensionless)";
    Value  0.8818331920341357;
  }

  Variable Variable(ICaLfcainf)
  {
    Value  0.0; # ICaLfcainf  TODO
  }

  Variable Variable(ICaLdinf)
  {
    Name "ICaLdinf in component L_type_Ca_channel_d_L_gate (dimensionless)";
    Value  1.3001523226591241e-05;
  }

  Variable Variable(ICaLfinf)
  {
    Name "ICaLfinf in component L_type_Ca_channel_f_L1_gate (dimensionless)";
    Value  0.9986400461877076;
  }

  Variable Variable(Itrinf)
  {
    Name "Itrinf in component Ca_independent_transient_outward_K_current_r_gate (dimensionless)";
    Value  0.0010677467619427574;
  }

  Variable Variable(Itsinf)
  {
    Name "Itsinf in component Ca_independent_transient_outward_K_current_s_gate (dimensionless)";
    Value  0.949549739332083;
  }

  Variable Variable(Isusrinf)
  {
    Name "Isusrinf in component sustained_outward_K_current_r_sus_gate (dimensionless)";
    Value  0.00015937958206002146;
  }

  Variable Variable(Isussinf)
  {
    Name "Isussinf in component sustained_outward_K_current_s_sus_gate (dimensionless)";
    Value  0.998246137934045;
  }

  Variable Variable(IKsninf)
  {
    Name "IKsninf in component delayed_rectifier_K_currents_n_gate (dimensionless)";
    Value  0.0006026430448910566;
  }

  Variable Variable(IKrpainf)
  {
    Name "IKrpainf in component delayed_rectifier_K_currents_pa_gate (dimensionless)";
    Value  5.142078505326955e-05;
  }

  Variable Variable(INamtau)
  {
    Name "INamtau in component sodium_current_m_gate (second)";
    Value  2.6411712783673727e-05;
  }

  Variable Variable(INah1tau)
  {
    Name "INah1tau in component sodium_current_h1_gate (second)";
    Value  0.03029985430041965;
  }

  Variable Variable(INah2tau)
  {
    Name "INah2tau in component sodium_current_h2_gate (second)";
    Value  0.12299941720167859;
  }

  Variable Variable(ICaLfcatau)
  {
    Value  2.0e-3; # ICaLfcatau
  }

  Variable Variable(ICaLdtau)
  {
    Name "ICaLdtau in component L_type_Ca_channel_d_L_gate (second)";
    Value  0.0024873842753601674;
  }

  Variable Variable(ICaLf1tau)
  {
    Name "ICaLf1tau in component L_type_Ca_channel_f_L1_gate (second)";
    Value  0.010561832433011065;
  }

  Variable Variable(ICaLf2tau)
  {
    Name "ICaLf2tau in component L_type_Ca_channel_f_L2_gate (second)";
    Value  0.06655984396077287;
  }

  Variable Variable(Itrtau)
  {
    Name "Itrtau in component Ca_independent_transient_outward_K_current_r_gate (second)";
    Value  0.0015076482796525805;
  }

  Variable Variable(Itstau)
  {
    Name "Itstau in component Ca_independent_transient_outward_K_current_s_gate (second)";
    Value  0.07183350864577431;
  }

  Variable Variable(Isusrtau)
  {
    Name "Isusrtau in component sustained_outward_K_current_r_sus_gate (second)";
    Value  0.009472038556972982;
  }

  Variable Variable(Isusstau)
  {
    Name "Isusstau in component sustained_outward_K_current_s_sus_gate (second)";
    Value  0.33788952618800877;
  }

  Variable Variable(IKsntau)
  {
    Name "IKsntau in component delayed_rectifier_K_currents_n_gate (second)";
    Value  0.7000000000905494;
  }

  Variable Variable(IKrpatau)
  {
    Name "IKrpatau in component delayed_rectifier_K_currents_pa_gate (second)";
    Value  0.031750398000436095;
  }

  Variable Variable(INa)
  {
    Name "INa in component sodium_current (picoA)";
    Value  0.0;
  }

  Variable Variable(ICaL)
  {
    Name "ICaL in component L_type_Ca_channel (picoA)";
    Value  0.0;
  }

  Variable Variable(E_Na)
  {
    Name "E_Na in component sodium_current (millivolt)";
    Value  71.78374025254665;
  }

  Variable Variable(E_K)
  {
    Name "E_K in component Ca_independent_transient_outward_K_current (millivolt)";
    Value  -84.00907384905881;
  }

  Variable Variable(It)
  {
    Name "It in component Ca_independent_transient_outward_K_current (picoA)";
    Value  0.0;
  }

  Variable Variable(Isus)
  {
    Name "Isus in component sustained_outward_K_current (picoA)";
    Value  0.0;
  }

  Variable Variable(IKrpi)
  {
    Name "IKrpi in component delayed_rectifier_K_currents_pi_gate (dimensionless)";
    Value  0.6904422140268597;
  }

  Variable Variable(IK1)
  {
    Name "IK1 in component inward_rectifier (picoA)";
    Value  0.0;
  }

  Variable Variable(IKr)
  {
    Name "IKr in component delayed_rectifier_K_currents (picoA)";
    Value  0.0;
  }

  Variable Variable(IKs)
  {
    Name "IKs in component delayed_rectifier_K_currents (picoA)";
    Value  0.0;
  }

  Variable Variable(INab)
  {
    Name "INab in component background_currents (picoA)";
    Value  0.0;
  }

  Variable Variable(E_Ca)
  {
    Name "E_Ca in component background_currents (millivolt)";
    Value  134.5701213309398;
  }

  Variable Variable(ICab)
  {
    Name "ICab in component background_currents (picoA)";
    Value  0.0;
  }

  Variable Variable(INaK)
  {
    Name "INaK in component sodium_potassium_pump (picoA)";
    Value  0.0;
  }

  Variable Variable(ICaP)
  {
    Name "ICaP in component sarcolemmal_calcium_pump_current (picoA)";
    Value  0.0;
  }

  Variable Variable(INaCa)
  {
    Name "INaCa in component Na_Ca_ion_exchanger_current (picoA)";
    Value  0.0;
  }

  Process Nygren_1998_VFluxProcess(dV_dt)
  {
    Name "d/dt V in component membrane (millivolt)";

    Cm  @Cm;

    VariableReferenceList
      [V      :.:V      1]
      [ist    :.:ist    0]
      [INa    :.:INa    0]
      [ICaL   :.:ICaL   0]
      [It     :.:It     0]
      [Isus   :.:Isus   0]
      [IK1    :.:IK1    0]
      [IKr    :.:IKr    0]
      [IKs    :.:IKs    0]
      [INab   :.:INab   0]
      [ICab   :.:ICab   0]
      [INaK   :.:INaK   0]
      [ICaP   :.:ICaP   0]
      [INaCa  :.:INaCa  0]
      [If     :.:If     0];
  }

  Process Nygren_1998_EAssignmentProcess(E_Na)
  {
    StepperID    PSV;
    F  @F;
    T  @T;
    R  @R;
    z  1;

    VariableReferenceList
      [E :.:E_Na               1]
      [o :/:Nao               0]
      [i :../Cytosol/ss:Na_ss  0];
  }

  Process Nygren_1998_EAssignmentProcess(E_K)
  {
    StepperID    PSV;
    F  @F;
    T  @T;
    R  @R;
    z  1;

    VariableReferenceList
      [E :.:E_K           1]
      [o :/:Ko            0]
      [i :../Cytosol:K_i  0];
  }

  Process Nygren_1998_EAssignmentProcess(E_Ca)
  {
    StepperID    PSV;
    F  @F;
    T  @T;
    R  @R;
    z  2;

    VariableReferenceList
      [E :.:E_Ca               1]
      [o :/:Cao               0]
      [i :../Cytosol/ss:Ca_ss  0];
  }

  # INa

  Variable Variable(INam)
  {
    Name "INam in component sodium_current_m_gate (dimensionless)";
    Value  @INam_0;
  }

  Variable Variable(INah1)
  {
    Name "INah1 in component sodium_current_h1_gate (dimensionless)";
    Value  @INah1_0;
  }

  Variable Variable(INah2)
  {
    Name "INah2 in component sodium_current_h2_gate (dimensionless)";
    Value  @INah2_0;
  }

  Process Nygren_1998_INaAssignmentProcess(INa) # same as Nygren_1998
  {
    StepperID    PSV;

    T  @T;
    R  @R;
    F  @F;
    P_Na  @PNa; # 0.0016, P_Na in component sodium_current (nanolitre_per_second)

    VariableReferenceList
      [i_Na        :.:INa               1]
      [m_infinity :.:INaminf         1]
      [tau_m      :.:INamtau              1]
      [h_infinity :.:INahinf         1]
      [tau_h1     :.:INah1tau             1]
      [tau_h2     :.:INah2tau             1]
      [m       :.:INam               0]
      [h1      :.:INah1              0]
      [h2      :.:INah2              0]
      [Na_c       :../Cytosol/ss:Na_ss  0]
      [V          :.:V                  0]
      [E_Na       :.:E_Na               0];
  }

  Process Nygren_1998_GatingFluxProcess(dINam_dt) # ok
  {

    VariableReferenceList
      [gate  :.:INam        1]
      [g_inf :.:INaminf  0]
      [g_tau :.:INamtau       0];
  }

  Process Nygren_1998_GatingFluxProcess(dINah1_dt) # ok
  {
    Name "dINah1_dt in component sodium_current_h1_gate (dimensionless)";

    VariableReferenceList
      [gate  :.:INah1       1]
      [g_inf :.:INahinf  0]
      [g_tau :.:INah1tau      0];
  }

  Process Nygren_1998_GatingFluxProcess(dINah2_dt) # ok
  {
    Name "dINah2_dt in component sodium_current_h2_gate (dimensionless)";

    VariableReferenceList
      [gate  :.:INah2       1]
      [g_inf :.:INahinf  0]
      [g_tau :.:INah2tau      0];
  }

  # ICaL

  Variable Variable(ICaLd)
  {
    Name "ICaLd in component L_type_Ca_channel_d_L_gate (dimensionless)";
    Value  @ICaLd_0;
  }

  Variable Variable(ICaLf1)
  {
    Name "ICaLf1 in component L_type_Ca_channel_f_L1_gate (dimensionless)";
    Value  @ICaLf1_0;
  }

  Variable Variable(ICaLf2)
  {
    Name "ICaLf2 in component L_type_Ca_channel_f_L2_gate (dimensionless)";
    Value  @ICaLf2_0;
  }

  Variable Variable(ICaLfca)
  {
    Name "ICaLfca in component L_type_Ca_channel (dimensionless)";
    Value  @ICaLfca_0;
  }

  Process Koivumaki_2011_ICaLAssignmentProcess(ICaL)
  {
    StepperID    PSV;

    E_Ca_app @ECa_app; # 60,    E_Ca_app in component L_type_Ca_channel (millivolt)
    g_Ca_L   @gCaL;    # 6.75,  g_Ca_L in component L_type_Ca_channel (nanoS)
    kCa      @kCa;     # 0.025, k_Ca in component L_type_Ca_channel (millimolar)
    kCan     @kCan;

    VariableReferenceList
      [ICaL       :.:ICaL               1]
      [ICaLfcainf :.:ICaLfcainf         1]
      [ICaLfcatau :.:ICaLfcatau         1]
      [ICaLdinf   :.:ICaLdinf           1]
      [ICaLdtau   :.:ICaLdtau           1]
      [ICaLfinf   :.:ICaLfinf           1]
      [ICaLf1tau  :.:ICaLf1tau          1]
      [ICaLf2tau  :.:ICaLf2tau          1]
      [ICaLfca    :.:ICaLfca            0]   # ICaLfca
      [ICaLd      :.:ICaLd              0]   # ICaLd
      [ICaLf1     :.:ICaLf1             0]   # ICaLf1
      [ICaLf2     :.:ICaLf2             0]   # ICaLf2
      [Ca_ss      :../Cytosol/ss:Ca_ss  0]
      [V          :.:V                  0];
  }

  Process Nygren_1998_GatingFluxProcess(dICaLd_dt) # ok
  {
    Name "dICaLd_dt in component L_type_Ca_channel_d_L_gate (dimensionless)";

    VariableReferenceList
      [gate  :.:ICaLd     1]
      [g_inf :.:ICaLdinf  0]
      [g_tau :.:ICaLdtau  0];
  }

  Process Nygren_1998_GatingFluxProcess(dICaLf1_dt) # ok
  {
    Name "dICaLf1_dt in component L_type_Ca_channel_f_L1_gate (dimensionless)";

    VariableReferenceList
      [gate  :.:ICaLf1     1]
      [g_inf :.:ICaLfinf   0]
      [g_tau :.:ICaLf1tau  0];
  }

  Process Nygren_1998_GatingFluxProcess(dICaLf2_dt) # ok
  {
    Name "dICaLf2_dt in component L_type_Ca_channel_f_L2_gate (dimensionless)";

    VariableReferenceList
      [gate  :.:ICaLf2     1]
      [g_inf :.:ICaLfinf   0]
      [g_tau :.:ICaLf2tau  0];
  }

  Process Nygren_1998_GatingFluxProcess(dICaLfca_dt) #ok
  {
    VariableReferenceList
      [gate  :.:ICaLfca     1]
      [g_inf :.:ICaLfcainf  0]
      [g_tau :.:ICaLfcatau  0];
  }

  # It
  Process Koivumaki_2011_ItAssignmentProcess(It)
  {
    StepperID    PSV;

    g_t  @gt; # 7.5, g_t in component Ca_independent_transient_outward_K_current (nanoS)

    VariableReferenceList
      [It     :.:It      1]
      [Itrtau :.:Itrtau  1]
      [Itrinf :.:Itrinf  1]
      [Itstau :.:Itstau  1]
      [Itsinf :.:Itsinf  1]
      [Itr    :.:Itr     0]
      [Its    :.:Its     0]
      [V      :.:V       0]
      [E_K    :.:E_K     0];
  }

  Process Nygren_1998_GatingFluxProcess(dItr_dt)
  {
    Name "dItr_dt in component Ca_independent_transient_outward_K_current_r_gate (dimensionless)";

    VariableReferenceList
      [gate  :.:Itr     1]
      [g_inf :.:Itrinf  0]
      [g_tau :.:Itrtau  0];
  }

  Process Nygren_1998_GatingFluxProcess(dIts_dt)
  {
    Name "dIts_dt in component Ca_independent_transient_outward_K_current_s_gate (dimensionless)";

    VariableReferenceList
      [gate  :.:Its     1]
      [g_inf :.:Itsinf  0]
      [g_tau :.:Itstau  0];
  }

  # Isus
  Process Koivumaki_2011_IsusAssignmentProcess(Isus)
  {
    StepperID    PSV;

    g_sus  @gsus; # 2.75, g_sus in component sustained_outward_K_current (nanoS)

    VariableReferenceList
      [Isusrtau :.:Isusrtau  1]
      [Isusrinf :.:Isusrinf  1]
      [Isusstau :.:Isusstau  1]
      [Isussinf :.:Isussinf  1]
      [Isus     :.:Isus      1]
      [Isusr    :.:Isusr     0]
      [Isuss    :.:Isuss     0]
      [V        :.:V         0]
      [E_K      :.:E_K       0];
  }

  Process Nygren_1998_GatingFluxProcess(dIsusr_dt)
  {
    Name "dIsusr_dt in component sustained_outward_K_current_r_sus_gate (dimensionless)";

    VariableReferenceList
      [gate  :.:Isusr     1]
      [g_inf :.:Isusrinf  0]
      [g_tau :.:Isusrtau  0];
  }

  Process Nygren_1998_GatingFluxProcess(dIsuss_dt)
  {
    Name "dIsuss_dt in component sustained_outward_K_current_s_sus_gate (dimensionless)";

    VariableReferenceList
      [gate  :.:Isuss     1]
      [g_inf :.:Isussinf  0]
      [g_tau :.:Isusstau  0];
  }

  # IKs
  Process Nygren_1998_IKsAssignmentProcess(IKs)
  {
    StepperID    PSV;

    g_Ks  @gKs; # 1, g_Ks in component delayed_rectifier_K_currents (nanoS)

    VariableReferenceList
      [tau_n      :.:IKsntau  1]
      [n_infinity :.:IKsninf  1]
      [i_Ks       :.:IKs      1]
      [n          :.:IKsn     0]
      [V          :.:V        0]
      [E_K        :.:E_K      0];
  }

  Process Nygren_1998_GatingFluxProcess(dIKsn_dt)
  {
    Name "dIKsn_dt in component delayed_rectifier_K_currents_n_gate (dimensionless)";

    VariableReferenceList
      [gate  :.:IKsn     1]
      [g_inf :.:IKsninf  0]
      [g_tau :.:IKsntau  0];
  }

  # IKr
  Process Nygren_1998_IKrAssignmentProcess(IKr)
  {
    StepperID    PSV;

    g_Kr  @gKr; # 0.5, g_Kr in component delayed_rectifier_K_currents (nanoS)

    VariableReferenceList
      [tau_p_a      :.:IKrpatau  1]
      [p_a_infinity :.:IKrpainf  1]
      [p_i          :.:IKrpi     1]
      [i_Kr         :.:IKr       1]
      [p_a          :.:IKrpa     0]
      [V            :.:V         0]
      [E_K          :.:E_K       0];
  }

  Process Nygren_1998_GatingFluxProcess(dIKrpa_dt)
  {
    Name "dIKrpa_dt in component delayed_rectifier_K_currents_pa_gate (dimensionless)";

    VariableReferenceList
      [gate  :.:IKrpa     1]
      [g_inf :.:IKrpainf  0]
      [g_tau :.:IKrpatau  0];
  }

  # IK1
  Process Nygren_1998i_K1AssignmentProcess(IK1)
  {
    StepperID    PSV;

    T  @T;
    R  @R;
    F  @F;
    g_K1  @gK1; # 3, g_K1 in component inward_rectifier (nanoS)

    VariableReferenceList
      [i_K1 :.:IK1  1]
      [K_c  :/:Ko   0]
      [V    :.:V    0]
      [E_K  :.:E_K  0];
  }

  # INaK
  Process Nygren_1998i_NaKAssignmentProcess(INaK)
  {
    StepperID    PSV;

    k_NaK_Na   @kNaKNa;  # 11,      k_NaK_Na in component sodium_potassium_pump (millimolar)
    k_NaK_K    @kNaKK;   # 1,       k_NaK_K in component sodium_potassium_pump (millimolar)
    i_NaK_max  @INaKmax; # 70.8253, i_NaK_max in component sodium_potassium_pump (picoA)

    VariableReferenceList
      [i_NaK :.:INaK               1]
      [K_c   :/:Ko                 0]  # Ko
      [Na_i  :../Cytosol/ss:Na_ss  0]  # Nass
      [V     :.:V                  0];
  }

  Process Nygren_1998_BackgroudLeakAssignmentProcess(INab)
  {
    StepperID    PSV;

    g  0.060599; # g_B_Na in component background_currents (nanoS)

    VariableReferenceList
      [i :.:INab  1]
      [V :.:V     0]
      [E :.:E_Na  0];
  }

  Process Nygren_1998_BackgroudLeakAssignmentProcess(ICab)
  {
    StepperID    PSV;

    g  0.078681; # g_B_Ca in component background_currents (nanoS)

    VariableReferenceList
      [i :.:ICab  1]
      [V :.:V     0]
      [E :.:E_Ca  0];
  }

  Process Nygren_1998i_CaPAssignmentProcess(ICaP)
  {
    StepperID    PSV;

    k_CaP      @kCaP;    # 0.0002, k_CaP in component sarcolemmal_calcium_pump_current (millimolar)
    i_CaP_max  @ICaPmax; # 4, i_CaP_max in component sarcolemmal_calcium_pump_current (picoA)

    VariableReferenceList
      [i_CaP :.:ICaP               1]
      [Ca_i  :../Cytosol/ss:Ca_ss  0]; # Cass
  }

  Process Nygren_1998i_NaCaAssignmentProcess(INaCa)
  {
    StepperID    PSV;

    T  @T;
    R  @R;
    F  @F;
    gamma   @gam;   # 0.45, gamma in component Na_Ca_ion_exchanger_current (dimensionless)
    k_NaCa  @kNaCa; # 0.0374842, k_NaCa in component Na_Ca_ion_exchanger_current (picoA_per_millimolar_4)
    d_NaCa  @dNaCa; # 0.0003, d_NaCa in component Na_Ca_ion_exchanger_current (per_millimolar_4)
    # fCaNCX  1;

    VariableReferenceList
      [i_NaCa :.:INaCa              1]
      [Na_i   :../Cytosol/ss:Na_ss  0]  # Nass
      [Ca_c   :/:Cao                0]  # Cao
      [V      :.:V                  0]
      [Na_c   :/:Nao                0]  # Nao
      [Ca_i   :../Cytosol/ss:Ca_ss  0]; # Cass
  }

  Variable Variable(Ify)
  {
    Name "";
    Value  @Ify_0;
  }

  Variable Variable(Ifyinf)
  {
    Name "";
    Value  0.0;  # TODO
  }

  Variable Variable(Ifytau)
  {
    Name "";
    Value  0.0;  # TODO
  }

  Variable Variable(IfNa)
  {
    Name "";
    Value  0.0;
  }

  Variable Variable(IfK)
  {
    Name "";
    Value  0.0;
  }

  Variable Variable(If)
  {
    Name "";
    Value  0.0;
  }

  Process Koivumaki_2011_IfAssignmentProcess(If)
  {
    StepperID    PSV;

    gIf  @gIf;

    VariableReferenceList
      [Ifyinf :.:Ifyinf  1]
      [Ifytau :.:Ifytau  1]
      [IfNa   :.:IfNa    1]
      [IfK    :.:IfK     1]
      [If     :.:If      1]
      [Ify    :.:Ify     0]
      [E_Na   :.:E_Na    0]
      [E_K    :.:E_K     0]
      [V      :.:V       0];
  }

  Process Nygren_1998_GatingFluxProcess(dIfy_dt)
  {
    Name "dIfy_dt (sec^-1)";

    VariableReferenceList
      [gate  :.:Ify     1]
      [g_inf :.:Ifyinf  0]
      [g_tau :.:Ifytau  0];
  }

  Process Koivumaki_2011_IstAssignmentProcess(ist) # TODO
  {
    StepperID    PSV;

    Name "ist in component membrane (picoA)";

    @{'''
    stim_time = time % BCL
    f1 = 1+exp(-stim_steepness*(stim_time - stim_offset))
    f2 = 1+exp(stim_steepness*(stim_time-stim_offset-stim_duration))
    #peak = 1 + exp(-stim_steepness*stim_duration/2)
    #ist = -stim_amp*peak**2/(f1*f2)
    ist = -stim_amp/(f1*f2)
    '''}

    stim_duration  @stim_duration;
    stim_amp  @stim_amp;
    BCL  @BCL;
    stim_steepness  @stim_steepness;
    stim_offset  @stim_offset;

    VariableReferenceList
      [ist :.:ist  1]
      [t   :/:t    0];
  }

  Process Koivumaki_2011_ZeroVariableAsCurrentFluxProcess(JNa_INa)
  {
    k -1;
    F @F;

    VariableReferenceList
      [INa   :../Membrane:INa      0] # pA = pC/sec
      [INab  :../Membrane:INab     0]
      [INaK  :../Membrane:INaK     0] # 3 * INaK
      [INaK  :../Membrane:INaK     0]
      [INaK  :../Membrane:INaK     0]
      [INaCa :../Membrane:INaCa    0] # 3 * INaCa
      [INaCa :../Membrane:INaCa    0]
      [INaCa :../Membrane:INaCa    0]
      [IfNa  :../Membrane:IfNa     0]
      [Nass  :../Cytosol/ss:Na_ss  1];
  }

  Process Koivumaki_2011_ZeroVariableAsCurrentFluxProcess(JK_IK)
  {
    k -1;
    F @F;

    VariableReferenceList
      [It   :../Membrane:It    0] # pA = pC/sec
      [Isus :../Membrane:Isus  0]
      [IK1  :../Membrane:IK1   0]
      [IKr  :../Membrane:IKr   0]
      [IKs  :../Membrane:IKs   0]
      [IfK  :../Membrane:IfK   0]
      [ist  :../Membrane:ist   0]
      [Ki   :../Cytosol:K_i    1];
  }

  Process Koivumaki_2011_ZeroVariableAsCurrentFluxProcess(JK_INaK)
  {
    k 2;
    F @F;

    VariableReferenceList
      [INaK :../Membrane:INaK  0]
      [Ki   :../Cytosol:K_i    1];
  }

} # End of /Cell/Membrane
