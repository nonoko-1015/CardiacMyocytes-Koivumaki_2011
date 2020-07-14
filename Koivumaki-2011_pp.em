%line 1 Koivumaki-2011.em



Stepper FixedODE1Stepper( Default ){ StepInterval 1.0e-5; }

Stepper PassiveStepper( PSV ) {}

System System( / )
{
  StepperID    Default;

  Variable Variable( SIZE )
  {
      Value    1.0;
  }

  Variable Variable(voi)
  {
    Name "time in component environment (second)";
    Value  0.0;
  }

  Variable Variable( Nao )
  {
    MolarConc    0.13;
%line 191 Koivumaki-2011.em
    Fixed  1;
  }

  Variable Variable( Ko )
  {
    MolarConc    0.0054;
%line 197 Koivumaki-2011.em
    Fixed  1;
  }

  Variable Variable( Cao )
  {
    MolarConc    0.0018;
%line 203 Koivumaki-2011.em
    Fixed  1;
  }

  Process Nygren_1998voiFluxProcess(voi)
  {
    Name "time in component environment (second)";

    VariableReferenceList
      [voi :.:voi  1];
  }
}

System System( /Cell )
{
  StepperID    Default;
  Name "Cell";

  Variable Variable( SIZE )
  {
    Value    8.3322287625e-12;
%line 223 Koivumaki-2011.em
  }
}

System System( /Cell/Membrane )
{
  StepperID    Default;
  Name "Cell membrane";

  Variable Variable( SIZE )
  {
    Value    4.99232e-05; # dummy
%line 9 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(V)
  {
    Name "V in component membrane (millivolt)";
    Value  -75.319410;  # hAM_KKT.ode V
  }

  Variable Variable(Itr)
  {
    Name "Itr in component Ca_independent_transient_outward_K_current_r_gate (dimensionless)";
    Value  0.000959;  # hAM_KKT.ode Itr
  }

  Variable Variable(Its)
  {
    Name "Its in component Ca_independent_transient_outward_K_current_s_gate (dimensionless)";
    Value  0.954338;  # hAM_KKT.ode Its
  }

  Variable Variable(Isusr)
  {
    Name "Isusr in component sustained_outward_K_current_r_sus_gate (dimensionless)";
    Value  0.000311;  # hAM_KKT.ode Isusr
  }

  Variable Variable(Isuss)
  {
    Name "Isuss in component sustained_outward_K_current_s_sus_gate (dimensionless)";
    Value  0.975109;  # hAM_KKT.ode Isuss
  }

  Variable Variable(IKsn)
  {
    Name "IKsn in component delayed_rectifier_K_currents_n_gate (dimensionless)";
    Value  0.004110;  # hAM_KKT.ode IKsn
  }

  Variable Variable(IKrpa)
  {
    Name "IKrpa in component delayed_rectifier_K_currents_pa_gate (dimensionless)";
    Value  0.000042;  # hAM_KKT.ode IKrpa
  }

  Variable Variable(i_Stim)
  {
    Name "i_Stim in component membrane (picoA)";
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

    Cm  0.05;
%line 302 ./Koivumaki-2011_Cell_Membrane.em

    VariableReferenceList
      [V      :.:V       1]
      [i_Stim :.:i_Stim  0]
      [INa    :.:INa    0]
      [ICaL   :.:ICaL  0]
      [It     :.:It     0]
      [Isus   :.:Isus   0]
      [IK1    :.:IK1    0]
      [IKr    :.:IKr    0]
      [IKs    :.:IKs    0]
      [INab   :.:INab  0]
      [ICab   :.:ICab  0]
      [INaK   :.:INaK   0]
      [ICaP   :.:ICaP   0]
      [INaCa  :.:INaCa  0]
      [If     :.:If      0];
  }

  Process Nygren_1998_EAssignmentProcess(E_Na)
  {
    StepperID    PSV;
    F  96487;
%line 325 ./Koivumaki-2011_Cell_Membrane.em
    T  306.15;
%line 326 ./Koivumaki-2011_Cell_Membrane.em
    R  8314.0;
%line 327 ./Koivumaki-2011_Cell_Membrane.em
    z  1;

    VariableReferenceList
      [E :.:E_Na               1]
      [o :/:Nao               0]
      [i :../Cytosol/ss:Na_ss  0];
  }

  Process Nygren_1998_EAssignmentProcess(E_K)
  {
    StepperID    PSV;
    F  96487;
%line 339 ./Koivumaki-2011_Cell_Membrane.em
    T  306.15;
%line 340 ./Koivumaki-2011_Cell_Membrane.em
    R  8314.0;
%line 341 ./Koivumaki-2011_Cell_Membrane.em
    z  1;

    VariableReferenceList
      [E :.:E_K           1]
      [o :/:Ko            0]
      [i :../Cytosol:K_i  0];
  }

  Process Nygren_1998_EAssignmentProcess(E_Ca)
  {
    StepperID    PSV;
    F  96487;
%line 353 ./Koivumaki-2011_Cell_Membrane.em
    T  306.15;
%line 354 ./Koivumaki-2011_Cell_Membrane.em
    R  8314.0;
%line 355 ./Koivumaki-2011_Cell_Membrane.em
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
    Value  0.002779;  # hAM_KKT.ode INam
  }

  Variable Variable(INah1)
  {
    Name "INah1 in component sodium_current_h1_gate (dimensionless)";
    Value  0.903910;  # hAM_KKT.ode INah1
  }

  Variable Variable(INah2)
  {
    Name "INah2 in component sodium_current_h2_gate (dimensionless)";
    Value  0.903967;  # hAM_KKT.ode INah2
  }

  Process Nygren_1998_INaAssignmentProcess(INa) # same as Nygren_1998
  {
    StepperID    PSV;

    T  306.15;
%line 388 ./Koivumaki-2011_Cell_Membrane.em
    R  8314.0;
%line 389 ./Koivumaki-2011_Cell_Membrane.em
    F  96487;
%line 390 ./Koivumaki-2011_Cell_Membrane.em
    P_Na  0.0018; # 0.0016, P_Na in component sodium_current (nanolitre_per_second)
%line 391 ./Koivumaki-2011_Cell_Membrane.em

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
    Value  0.000011;  # hAM_KKT.ode ICaLd
  }

  Variable Variable(ICaLf1)
  {
    Name "ICaLf1 in component L_type_Ca_channel_f_L1_gate (dimensionless)";
    Value  0.998857;  # hAM_KKT.ode ICaLf1
  }

  Variable Variable(ICaLf2)
  {
    Name "ICaLf2 in component L_type_Ca_channel_f_L2_gate (dimensionless)";
    Value  0.998862;  # hAM_KKT.ode ICaLf2
  }

  Variable Variable(ICaLfca)
  {
    Name "ICaLfca in component L_type_Ca_channel (dimensionless)";
    Value  0.974437; # 0.002891415473410205, hAM_KKT.ode ICaLfca
  }

  Process Koivumaki_2011_ICaLAssignmentProcess(ICaL)
  {
    StepperID    PSV;

    E_Ca_app 60; # 60,    E_Ca_app in component L_type_Ca_channel (millivolt)
%line 467 ./Koivumaki-2011_Cell_Membrane.em
    g_Ca_L   25.3125;    # 6.75,  g_Ca_L in component L_type_Ca_channel (nanoS)
%line 468 ./Koivumaki-2011_Cell_Membrane.em
    kCa      0.001;     # 0.025, k_Ca in component L_type_Ca_channel (millimolar)
%line 469 ./Koivumaki-2011_Cell_Membrane.em
    kCan     2;
%line 470 ./Koivumaki-2011_Cell_Membrane.em

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

    g_t  8.175; # 7.5, g_t in component Ca_independent_transient_outward_K_current (nanoS)
%line 532 ./Koivumaki-2011_Cell_Membrane.em

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

    g_sus  2.4475; # 2.75, g_sus in component sustained_outward_K_current (nanoS)
%line 571 ./Koivumaki-2011_Cell_Membrane.em

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

    g_Ks  1; # 1, g_Ks in component delayed_rectifier_K_currents (nanoS)
%line 610 ./Koivumaki-2011_Cell_Membrane.em

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

    g_Kr  0.5; # 0.5, g_Kr in component delayed_rectifier_K_currents (nanoS)
%line 636 ./Koivumaki-2011_Cell_Membrane.em

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

    T  306.15;
%line 663 ./Koivumaki-2011_Cell_Membrane.em
    R  8314.0;
%line 664 ./Koivumaki-2011_Cell_Membrane.em
    F  96487;
%line 665 ./Koivumaki-2011_Cell_Membrane.em
    g_K1  3.4425; # 3, g_K1 in component inward_rectifier (nanoS)
%line 666 ./Koivumaki-2011_Cell_Membrane.em

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

    k_NaK_Na   11;  # 11,      k_NaK_Na in component sodium_potassium_pump (millimolar)
%line 680 ./Koivumaki-2011_Cell_Membrane.em
    k_NaK_K    1;   # 1,       k_NaK_K in component sodium_potassium_pump (millimolar)
%line 681 ./Koivumaki-2011_Cell_Membrane.em
    i_NaK_max  70.8253; # 70.8253, i_NaK_max in component sodium_potassium_pump (picoA)
%line 682 ./Koivumaki-2011_Cell_Membrane.em

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

    k_CaP      0.0005;    # 0.0002, k_CaP in component sarcolemmal_calcium_pump_current (millimolar)
%line 719 ./Koivumaki-2011_Cell_Membrane.em
    i_CaP_max  2.0; # 4, i_CaP_max in component sarcolemmal_calcium_pump_current (picoA)
%line 720 ./Koivumaki-2011_Cell_Membrane.em

    VariableReferenceList
      [i_CaP :.:ICaP               1]
      [Ca_i  :../Cytosol/ss:Ca_ss  0]; # Cass
  }

  Process Nygren_1998i_NaCaAssignmentProcess(INaCa)
  {
    StepperID    PSV;

    T  306.15;
%line 731 ./Koivumaki-2011_Cell_Membrane.em
    R  8314.0;
%line 732 ./Koivumaki-2011_Cell_Membrane.em
    F  96487;
%line 733 ./Koivumaki-2011_Cell_Membrane.em
    gamma   0.45;   # 0.45, gamma in component Na_Ca_ion_exchanger_current (dimensionless)
%line 734 ./Koivumaki-2011_Cell_Membrane.em
    k_NaCa  0.0084; # 0.0374842, k_NaCa in component Na_Ca_ion_exchanger_current (picoA_per_millimolar_4)
%line 735 ./Koivumaki-2011_Cell_Membrane.em
    d_NaCa  0.0003; # 0.0003, d_NaCa in component Na_Ca_ion_exchanger_current (per_millimolar_4)
%line 736 ./Koivumaki-2011_Cell_Membrane.em
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
    Value  0.056207;
%line 751 ./Koivumaki-2011_Cell_Membrane.em
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

    gIf  1;
%line 788 ./Koivumaki-2011_Cell_Membrane.em

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

  Process Nygren_1998i_StimAssignmentProcess(i_Stim) # TODO
  {
    StepperID    PSV;

    Name "i_Stim in component membrane (picoA)";

    stim_amplitude  -280;
%line 818 ./Koivumaki-2011_Cell_Membrane.em
    stim_duration  0.006;
%line 819 ./Koivumaki-2011_Cell_Membrane.em
    stim_period  1;
%line 820 ./Koivumaki-2011_Cell_Membrane.em
    stim_start  0.1;
%line 821 ./Koivumaki-2011_Cell_Membrane.em
    stim_end  100000000;
%line 822 ./Koivumaki-2011_Cell_Membrane.em

    VariableReferenceList
      [i_Stim :.:i_Stim  1]
      [voi    :/:voi     0];
  }

  Process Koivumaki_2011_ZeroVariableAsCurrentFluxProcess(JNa_INa)
  {
    k -1;
    F 96487;
%line 832 ./Koivumaki-2011_Cell_Membrane.em

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
    F 96487;
%line 850 ./Koivumaki-2011_Cell_Membrane.em

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
    F 96487;
%line 866 ./Koivumaki-2011_Cell_Membrane.em

    VariableReferenceList
      [INaK :../Membrane:INaK  0]
      [Ki   :../Cytosol:K_i    1];
  }

} # End of /Cell/Membrane
%line 226 Koivumaki-2011.em

%line 227 Koivumaki-2011.em

System System( /Cell/Cytosol )
{
  StepperID    Default;
  Name "Cell";

  Variable Variable( SIZE )
  {
    Value    8.14997753985e-12;
%line 236 Koivumaki-2011.em
  }

  Variable Variable(K_i)
  {
    Name "K_i in component intracellular_ion_concentrations (molar)";
    MolarConc  134.631300e-3;  # hAM_KKT.ode Ki
  }

} # END of /Cell/Cytosol

System System( /Cell/Cytosol/ss )
{
  StepperID    Default;

  Name "The the extracellular cleft space";

  Variable Variable(SIZE)
  {
    Name "Vss in component cleft_space_ion_concentrations (litre)";
    Value  4.99232e-14;
%line 256 Koivumaki-2011.em
  }

  Variable Variable(Na_ss)
  {
    Name "Na_c in component cleft_space_ion_concentrations (molar)";
    MolarConc  0.008691502;
%line 262 Koivumaki-2011.em
  }

  Variable Variable(Ca_ss)
  {
    Name "Ca_c in component cleft_space_ion_concentrations (molar)";
    MolarConc  1.62e-07;
%line 268 Koivumaki-2011.em
  }

  Process Koivumaki_2011_BufferFluxProcess(Na_buffer)
  {
    Name "Sodium buffering";

    

    B    1.1319;
%line 279 Koivumaki-2011.em
    KdB  10;
%line 280 Koivumaki-2011.em

    VariableReferenceList
      [ion :../ss:Na_ss -1];
  }

  Process Koivumaki_2011_CassBufferFluxProcess(Ca_buffer)
  {
    

    F  96487;
%line 294 Koivumaki-2011.em
    SLlow  165;
%line 295 Koivumaki-2011.em
    KdSLlow  1.1;
%line 296 Koivumaki-2011.em
    SLhigh  13;
%line 297 Koivumaki-2011.em
    KdSLhigh  0.013;
%line 298 Koivumaki-2011.em
    BCa  0.024;
%line 299 Koivumaki-2011.em
    KdBCa  0.00238;
%line 300 Koivumaki-2011.em

    VariableReferenceList
      [Cass   :.:Ca_ss -1];
  }

  Process Koivumaki_2011_DiffusionJNjFluxProcess(Jj_nj)
  {
    Name "Ca diffusion from junct to non-junct";
    

    D  780.0;
%line 314 Koivumaki-2011.em
    Aj_nj  2492.32441226;
%line 315 Koivumaki-2011.em
    xj_nj  0.8225;
%line 316 Koivumaki-2011.em

    VariableReferenceList
      [nj :../bulk_4:Ca  1]  # Cai4
      [j  :.:Ca_ss      -1]; # Cass
  }

} # END of /Cell/Cytosol/ss

System System( /Cell/Cytosol/bulk; )
{
  StepperID    Default;
  Name "Cell";

  Variable Variable( SIZE )
  {
    Value    8.10005433985e-12;
%line 332 Koivumaki-2011.em
  }

  Variable Variable(Na_i)
  {
    Name "Na_i in component intracellular_ion_concentrations (molar)";
    MolarConc  9.286860e-3;    # hAM_KKT.ode Nai
  }

  Variable Variable(JNa)
  {
    Value  0.0;
  }

  Process Koivumaki_2011_Jj_njAssignmentProcess(JNa)
  {
    StepperID    PSV;
    Name "Na diffusion from junct to non-junct";
    

    D  0.12;
%line 355 Koivumaki-2011.em
    Aj_nj  2492.32441226;
%line 356 Koivumaki-2011.em
    xj_nj  3.26;
%line 357 Koivumaki-2011.em

    VariableReferenceList
      [Jj_nj :.:JNa        1]
      [nj    :.:Na_i       0]
      [j     :../ss:Na_ss  0];
  }

  Process ZeroVariableAsFluxProcess(JNa_flux)
  {
    VariableReferenceList
      [JNa  :.:JNa        0] # pmol/sec
      [Nai  :.:Na_i       1]
      [Nass :../ss:Na_ss -1];

    k 6.02214076e+11;  # pmol/sec -> NoM/sec
%line 372 Koivumaki-2011.em
  }

} # END of /Cell/Cytosol/bulk

# /Cell/Cytoplasm/bulk_x


%line 1 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
System System( /Cell/Cytosol/bulk_1 )
%line 2 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
{
  StepperID    Default;
  Name "Cytosol bulk 1";
%line 5 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

  Variable Variable( SIZE )
  {
    Value    5.06253396241e-13;
%line 9 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
  }

  Variable Variable( Ca )
  {
    MolarConc    1.35e-07;  # Cai1
%line 14 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
  }

  
  Variable Variable( SERCACa )
  {
    MolarConc    4.639e-06;  # SERCACa1
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
    Value    0.192536; # RyRa1
  }

  Variable Variable( RyRo )
  {
    Value    9.5e-05; # RyRo1
  }

  Variable Variable( RyRc )
  {
    Value    0.999372; # RyRc1
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
    Value    0.01875;
    Fixed  1;
  }

  Variable Variable( RyRtauinact )
  {
    Value    0.0875;
    Fixed  1;
  }

  Variable Variable( RyRtauadapt )
  {
    Value    1;
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
    

    k1      7500000.0;
    k2      0.46875;
    k3      2.31481481481;
    k4      7.5;
    cpumps  0.04;

    VariableReferenceList
      [J_SERCASR   :.:J_SERCASR     1]
      [J_bulkSERCA :.:J_bulkSERCA   1]
      [SERCACa     :.:SERCACa       0]
      [CaSR        :../../SR_1:Ca  0]
      [Cai         :.:Ca            0];
  }

  Process ZeroVariableAsFluxProcess(J_SERCASR)
  {
    VariableReferenceList
      [J_SERCASR :.:J_SERCASR     0] # pmol/sec
      [SERCACa   :.:SERCACa      -1]
      [CaSR      :../../SR_1:Ca  2];

    k 3.01107038e+11;  # pmol/sec -> NoM/sec
  }

  Process ZeroVariableAsFluxProcess(J_bulkSERCA)
  {
    VariableReferenceList
      [J_bulkSERCA :.:J_bulkSERCA1  0] # pmol/sec
      [SERCACa     :.:SERCACa       1]
      [Cai         :.:Ca           -2];

    k 3.01107038e+11;  # pmol/sec -> NoM/sec
  }

  Process Koivumaki_2011_JSRCaleakAssignmentProcess( JCaleak_assign )
  {
    StepperID    PSV;
    Name "";
    

    kSRleak  0.006;

    VariableReferenceList
      [JSRCaleak :.:JSRCaleak     1]
      [CaSR      :../../SR_1:Ca  0]
      [Cai       :.:Ca            0];
  }

  Process ZeroVariableAsFluxProcess(JCaleak)
  {
    VariableReferenceList
      [JCaleak :.:JCaleak   0] # pmol/sec
      [Cai     :.:Ca        1]
      [CaSR    :../../SR_1:Ca -1];

    k 6.02214076e+11;  # pmol/sec -> NoM/sec
  }

  Process Koivumaki_2011_JrelAssignmentProcess( Jrel_assign )
  {
    StepperID    PSV;
    Name "";
    

    k_nu  1.0;  # k_nuss in SR4

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
      [CaSR :../../SR_1:Ca -1];

    k 6.02214076e+11;  # pmol/sec -> NoM/sec
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
  
%line 224 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

  Process Koivumaki_2011_CaBulkDiffusionFluxProcess(Ca_diff)
  {
    Name "Sodium buffering";

    

    DCa    780.0;
%line 235 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    DCaBm  25.0;
%line 236 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    BCa    0.024;
%line 237 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    KdBCa  0.00238;
%line 238 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    dx     1.625;
%line 239 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    j      1;
%line 240 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

    VariableReferenceList
      [Ca_up   :../bulk2:Ca             0]
%line 243 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
      [Ca_down :../bulk1:Ca  0]
%line 244 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
      [Ca      :.:Ca                         1];
  }

  Process Koivumaki_2011_BufferFluxProcess(Ca_buffer)
  {
    Name "Ca buffering";

    

    B    0.024;
%line 256 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    KdB  0.00238;
%line 257 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

    VariableReferenceList
      [ion :.:Ca -1];
  }

} END of /Cell/Cytosol/bulk_1
%line 263 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
%line 381 Koivumaki-2011.em



%line 1 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
System System( /Cell/Cytosol/bulk_2 )
%line 2 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
{
  StepperID    Default;
  Name "Cytosol bulk 2";
%line 5 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

  Variable Variable( SIZE )
  {
    Value    1.51876018872e-12;
%line 9 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
  }

  Variable Variable( Ca )
  {
    MolarConc    1.38e-07;  # Cai1
%line 14 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
  }

  
  Variable Variable( SERCACa )
  {
    MolarConc    4.512e-06;  # SERCACa1
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
    Value    0.201034; # RyRa2
  }

  Variable Variable( RyRo )
  {
    Value    7.8e-05; # RyRo2
  }

  Variable Variable( RyRc )
  {
    Value    0.999509; # RyRc2
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
    Value    0.01875;
    Fixed  1;
  }

  Variable Variable( RyRtauinact )
  {
    Value    0.0875;
    Fixed  1;
  }

  Variable Variable( RyRtauadapt )
  {
    Value    1;
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
    

    k1      7500000.0;
    k2      0.46875;
    k3      2.31481481481;
    k4      7.5;
    cpumps  0.04;

    VariableReferenceList
      [J_SERCASR   :.:J_SERCASR     1]
      [J_bulkSERCA :.:J_bulkSERCA   1]
      [SERCACa     :.:SERCACa       0]
      [CaSR        :../../SR_2:Ca  0]
      [Cai         :.:Ca            0];
  }

  Process ZeroVariableAsFluxProcess(J_SERCASR)
  {
    VariableReferenceList
      [J_SERCASR :.:J_SERCASR     0] # pmol/sec
      [SERCACa   :.:SERCACa      -1]
      [CaSR      :../../SR_2:Ca  2];

    k 3.01107038e+11;  # pmol/sec -> NoM/sec
  }

  Process ZeroVariableAsFluxProcess(J_bulkSERCA)
  {
    VariableReferenceList
      [J_bulkSERCA :.:J_bulkSERCA1  0] # pmol/sec
      [SERCACa     :.:SERCACa       1]
      [Cai         :.:Ca           -2];

    k 3.01107038e+11;  # pmol/sec -> NoM/sec
  }

  Process Koivumaki_2011_JSRCaleakAssignmentProcess( JCaleak_assign )
  {
    StepperID    PSV;
    Name "";
    

    kSRleak  0.006;

    VariableReferenceList
      [JSRCaleak :.:JSRCaleak     1]
      [CaSR      :../../SR_2:Ca  0]
      [Cai       :.:Ca            0];
  }

  Process ZeroVariableAsFluxProcess(JCaleak)
  {
    VariableReferenceList
      [JCaleak :.:JCaleak   0] # pmol/sec
      [Cai     :.:Ca        1]
      [CaSR    :../../SR_2:Ca -1];

    k 6.02214076e+11;  # pmol/sec -> NoM/sec
  }

  Process Koivumaki_2011_JrelAssignmentProcess( Jrel_assign )
  {
    StepperID    PSV;
    Name "";
    

    k_nu  1.0;  # k_nuss in SR4

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
      [CaSR :../../SR_2:Ca -1];

    k 6.02214076e+11;  # pmol/sec -> NoM/sec
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
  
%line 224 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

  Process Koivumaki_2011_CaBulkDiffusionFluxProcess(Ca_diff)
  {
    Name "Sodium buffering";

    

    DCa    780.0;
%line 235 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    DCaBm  25.0;
%line 236 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    BCa    0.024;
%line 237 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    KdBCa  0.00238;
%line 238 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    dx     1.625;
%line 239 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    j      2;
%line 240 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

    VariableReferenceList
      [Ca_up   :../bulk3:Ca             0]
%line 243 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
      [Ca_down :../bulk1:Ca  0]
%line 244 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
      [Ca      :.:Ca                         1];
  }

  Process Koivumaki_2011_BufferFluxProcess(Ca_buffer)
  {
    Name "Ca buffering";

    

    B    0.024;
%line 256 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    KdB  0.00238;
%line 257 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

    VariableReferenceList
      [ion :.:Ca -1];
  }

} END of /Cell/Cytosol/bulk_2
%line 263 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
%line 381 Koivumaki-2011.em



%line 1 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
System System( /Cell/Cytosol/bulk_3 )
%line 2 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
{
  StepperID    Default;
  Name "Cytosol bulk 3";
%line 5 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

  Variable Variable( SIZE )
  {
    Value    2.5312669812e-12;
%line 9 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
  }

  Variable Variable( Ca )
  {
    MolarConc    1.44e-07;  # Cai1
%line 14 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
  }

  
  Variable Variable( SERCACa )
  {
    MolarConc    4.326e-06;  # SERCACa1
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
    Value    0.216312; # RyRa3
  }

  Variable Variable( RyRo )
  {
    Value    5.7e-05; # RyRo3
  }

  Variable Variable( RyRc )
  {
    Value    0.99956; # RyRc3
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
    Value    0.01875;
    Fixed  1;
  }

  Variable Variable( RyRtauinact )
  {
    Value    0.0875;
    Fixed  1;
  }

  Variable Variable( RyRtauadapt )
  {
    Value    1;
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
    

    k1      7500000.0;
    k2      0.46875;
    k3      2.31481481481;
    k4      7.5;
    cpumps  0.04;

    VariableReferenceList
      [J_SERCASR   :.:J_SERCASR     1]
      [J_bulkSERCA :.:J_bulkSERCA   1]
      [SERCACa     :.:SERCACa       0]
      [CaSR        :../../SR_3:Ca  0]
      [Cai         :.:Ca            0];
  }

  Process ZeroVariableAsFluxProcess(J_SERCASR)
  {
    VariableReferenceList
      [J_SERCASR :.:J_SERCASR     0] # pmol/sec
      [SERCACa   :.:SERCACa      -1]
      [CaSR      :../../SR_3:Ca  2];

    k 3.01107038e+11;  # pmol/sec -> NoM/sec
  }

  Process ZeroVariableAsFluxProcess(J_bulkSERCA)
  {
    VariableReferenceList
      [J_bulkSERCA :.:J_bulkSERCA1  0] # pmol/sec
      [SERCACa     :.:SERCACa       1]
      [Cai         :.:Ca           -2];

    k 3.01107038e+11;  # pmol/sec -> NoM/sec
  }

  Process Koivumaki_2011_JSRCaleakAssignmentProcess( JCaleak_assign )
  {
    StepperID    PSV;
    Name "";
    

    kSRleak  0.006;

    VariableReferenceList
      [JSRCaleak :.:JSRCaleak     1]
      [CaSR      :../../SR_3:Ca  0]
      [Cai       :.:Ca            0];
  }

  Process ZeroVariableAsFluxProcess(JCaleak)
  {
    VariableReferenceList
      [JCaleak :.:JCaleak   0] # pmol/sec
      [Cai     :.:Ca        1]
      [CaSR    :../../SR_3:Ca -1];

    k 6.02214076e+11;  # pmol/sec -> NoM/sec
  }

  Process Koivumaki_2011_JrelAssignmentProcess( Jrel_assign )
  {
    StepperID    PSV;
    Name "";
    

    k_nu  1.0;  # k_nuss in SR4

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
      [CaSR :../../SR_3:Ca -1];

    k 6.02214076e+11;  # pmol/sec -> NoM/sec
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
  
%line 224 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

  Process Koivumaki_2011_CaBulkDiffusionFluxProcess(Ca_diff)
  {
    Name "Sodium buffering";

    

    DCa    780.0;
%line 235 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    DCaBm  25.0;
%line 236 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    BCa    0.024;
%line 237 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    KdBCa  0.00238;
%line 238 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    dx     1.625;
%line 239 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    j      3;
%line 240 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

    VariableReferenceList
      [Ca_up   :../bulk4:Ca             0]
%line 243 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
      [Ca_down :../bulk2:Ca  0]
%line 244 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
      [Ca      :.:Ca                         1];
  }

  Process Koivumaki_2011_BufferFluxProcess(Ca_buffer)
  {
    Name "Ca buffering";

    

    B    0.024;
%line 256 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    KdB  0.00238;
%line 257 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

    VariableReferenceList
      [ion :.:Ca -1];
  }

} END of /Cell/Cytosol/bulk_3
%line 263 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
%line 381 Koivumaki-2011.em



%line 1 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
System System( /Cell/Cytosol/bulk_4 )
%line 2 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
{
  StepperID    Default;
  Name "Cytosol bulk 4";
%line 5 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

  Variable Variable( SIZE )
  {
    Value    3.54377377368e-12;
%line 9 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
  }

  Variable Variable( Ca )
  {
    MolarConc    1.56e-07;  # Cai1
%line 14 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
  }

  
%line 224 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

  Process Koivumaki_2011_CaBulkDiffusionFluxProcess(Ca_diff)
  {
    Name "Sodium buffering";

    

    DCa    780.0;
%line 235 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    DCaBm  25.0;
%line 236 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    BCa    0.024;
%line 237 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    KdBCa  0.00238;
%line 238 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    dx     1.625;
%line 239 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    j      4;
%line 240 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

    VariableReferenceList
      [Ca_up   :../bulk5:Ca             0]
%line 243 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
      [Ca_down :../bulk3:Ca  0]
%line 244 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
      [Ca      :.:Ca                         1];
  }

  Process Koivumaki_2011_BufferFluxProcess(Ca_buffer)
  {
    Name "Ca buffering";

    

    B    0.024;
%line 256 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
    KdB  0.00238;
%line 257 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

    VariableReferenceList
      [ion :.:Ca -1];
  }

} END of /Cell/Cytosol/bulk_4
%line 263 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
%line 381 Koivumaki-2011.em



%line 382 Koivumaki-2011.em

# /Cell/SR_x


%line 1 ./Koivumaki-2011_Cell_SR_x.em
System System( /Cell/SR_1 )
%line 2 ./Koivumaki-2011_Cell_SR_x.em
{
  StepperID    Default;
  Name "SR 1";
%line 5 ./Koivumaki-2011_Cell_SR_x.em

  Variable Variable( SIZE )
  {
    Value    1.13907014154e-14; # L (nL -> L)
%line 9 ./Koivumaki-2011_Cell_SR_x.em
  }

  Variable Variable( Ca )
  {
    MolarConc    0.000618922;  # CaSR1
%line 14 ./Koivumaki-2011_Cell_SR_x.em
  }

  Process Koivumaki_2011_CaSRDiffusionFluxProcess(Ca_diff)
  {
    Name "Ca buffering";

    

    DCa    44.0;
%line 25 ./Koivumaki-2011_Cell_SR_x.em
    dx     1.625;
%line 26 ./Koivumaki-2011_Cell_SR_x.em
    j      1;
%line 27 ./Koivumaki-2011_Cell_SR_x.em

    VariableReferenceList
      [Ca_up   :../bulk2:Ca             0]
%line 30 ./Koivumaki-2011_Cell_SR_x.em
      [Ca_down :../bulk1:Ca  0]
%line 31 ./Koivumaki-2011_Cell_SR_x.em
      [Ca      :.:Ca                         1];
  }

} END of /Cell/SR_1
%line 35 ./Koivumaki-2011_Cell_SR_x.em
%line 388 Koivumaki-2011.em



%line 1 ./Koivumaki-2011_Cell_SR_x.em
System System( /Cell/SR_2 )
%line 2 ./Koivumaki-2011_Cell_SR_x.em
{
  StepperID    Default;
  Name "SR 2";
%line 5 ./Koivumaki-2011_Cell_SR_x.em

  Variable Variable( SIZE )
  {
    Value    3.41721042462e-14; # L (nL -> L)
%line 9 ./Koivumaki-2011_Cell_SR_x.em
  }

  Variable Variable( Ca )
  {
    MolarConc    0.000607629;  # CaSR2
%line 14 ./Koivumaki-2011_Cell_SR_x.em
  }

  Process Koivumaki_2011_CaSRDiffusionFluxProcess(Ca_diff)
  {
    Name "Ca buffering";

    

    DCa    44.0;
%line 25 ./Koivumaki-2011_Cell_SR_x.em
    dx     1.625;
%line 26 ./Koivumaki-2011_Cell_SR_x.em
    j      2;
%line 27 ./Koivumaki-2011_Cell_SR_x.em

    VariableReferenceList
      [Ca_up   :../bulk3:Ca             0]
%line 30 ./Koivumaki-2011_Cell_SR_x.em
      [Ca_down :../bulk1:Ca  0]
%line 31 ./Koivumaki-2011_Cell_SR_x.em
      [Ca      :.:Ca                         1];
  }

} END of /Cell/SR_2
%line 35 ./Koivumaki-2011_Cell_SR_x.em
%line 388 Koivumaki-2011.em



%line 1 ./Koivumaki-2011_Cell_SR_x.em
System System( /Cell/SR_3 )
%line 2 ./Koivumaki-2011_Cell_SR_x.em
{
  StepperID    Default;
  Name "SR 3";
%line 5 ./Koivumaki-2011_Cell_SR_x.em

  Variable Variable( SIZE )
  {
    Value    5.69535070771e-14; # L (nL -> L)
%line 9 ./Koivumaki-2011_Cell_SR_x.em
  }

  Variable Variable( Ca )
  {
    MolarConc    0.000590527;  # CaSR3
%line 14 ./Koivumaki-2011_Cell_SR_x.em
  }

  Process Koivumaki_2011_CaSRDiffusionFluxProcess(Ca_diff)
  {
    Name "Ca buffering";

    

    DCa    44.0;
%line 25 ./Koivumaki-2011_Cell_SR_x.em
    dx     1.625;
%line 26 ./Koivumaki-2011_Cell_SR_x.em
    j      3;
%line 27 ./Koivumaki-2011_Cell_SR_x.em

    VariableReferenceList
      [Ca_up   :../bulk4:Ca             0]
%line 30 ./Koivumaki-2011_Cell_SR_x.em
      [Ca_down :../bulk2:Ca  0]
%line 31 ./Koivumaki-2011_Cell_SR_x.em
      [Ca      :.:Ca                         1];
  }

} END of /Cell/SR_3
%line 35 ./Koivumaki-2011_Cell_SR_x.em
%line 388 Koivumaki-2011.em



%line 1 ./Koivumaki-2011_Cell_SR_x.em
System System( /Cell/SR_4 )
%line 2 ./Koivumaki-2011_Cell_SR_x.em
{
  StepperID    Default;
  Name "SR 4";
%line 5 ./Koivumaki-2011_Cell_SR_x.em

  Variable Variable( SIZE )
  {
    Value    7.97349099079e-14; # L (nL -> L)
%line 9 ./Koivumaki-2011_Cell_SR_x.em
  }

  Variable Variable( Ca )
  {
    MolarConc    0.000573811;  # CaSR4
%line 14 ./Koivumaki-2011_Cell_SR_x.em
  }

  Process Koivumaki_2011_CaSRDiffusionFluxProcess(Ca_diff)
  {
    Name "Ca buffering";

    

    DCa    44.0;
%line 25 ./Koivumaki-2011_Cell_SR_x.em
    dx     1.625;
%line 26 ./Koivumaki-2011_Cell_SR_x.em
    j      4;
%line 27 ./Koivumaki-2011_Cell_SR_x.em

    VariableReferenceList
      [Ca_up   :../bulk5:Ca             0]
%line 30 ./Koivumaki-2011_Cell_SR_x.em
      [Ca_down :../bulk3:Ca  0]
%line 31 ./Koivumaki-2011_Cell_SR_x.em
      [Ca      :.:Ca                         1];
  }

} END of /Cell/SR_4
%line 35 ./Koivumaki-2011_Cell_SR_x.em
%line 388 Koivumaki-2011.em



%line 389 Koivumaki-2011.em
