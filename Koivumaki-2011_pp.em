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

  Variable Variable(t)
  {
    Name "time in component environment (second)";
    Value  0.0;
  }

  Variable Variable( Nao )
  {
    MolarConc    0.13;
%line 323 Koivumaki-2011.em
    Fixed  1;
  }

  Variable Variable( Ko )
  {
    MolarConc    0.0054;
%line 329 Koivumaki-2011.em
    Fixed  1;
  }

  Variable Variable( Cao )
  {
    MolarConc    0.0018;
%line 335 Koivumaki-2011.em
    Fixed  1;
  }

  Process Nygren_1998voiFluxProcess(t)
  {
    Name "time in component environment (second)";

    VariableReferenceList
      [voi :.:t  1];
  }
}

System System( /Cell )
{
  StepperID    Default;
  Name "Cell";

  Variable Variable( SIZE )
  {
    Value    8.3322287625e-12;
%line 355 Koivumaki-2011.em
  }
}

System System( /Cell/Cytosol )
{
  StepperID    Default;
  Name "Cell";

  Variable Variable( SIZE )
  {
    Value    8.14997753985e-12;
%line 366 Koivumaki-2011.em
  }

  Variable Variable(K_i)
  {
    Name "K_i in component intracellular_ion_concentrations (molar)";
    MolarConc  134.631300e-3;  # hAM_KKT.ode Ki
  }

} # END of /Cell/Cytosol

System System( /Cell/Cytosol/bulk )
{
  StepperID    Default;
  Name "Cell";

  Variable Variable( SIZE )
  {
    Value    8.14997753985e-12;
%line 384 Koivumaki-2011.em
  }

  Variable Variable(Na_i)
  {
    Name "Na_i in component intracellular_ion_concentrations (molar)";
    MolarConc  9.286860e-3;    # hAM_KKT.ode Nai
  }

  Variable Variable(JNa)
  {
    Value  -5.46193353657e-05;
%line 395 Koivumaki-2011.em
  }

  Process Koivumaki_2011_Jj_njAssignmentProcess(JNa_assign)
  {
    StepperID    PSV;
    Name "Na diffusion from junct to non-junct";
    

    D  0.12;
%line 407 Koivumaki-2011.em
    Aj_nj  2492.32441226;
%line 408 Koivumaki-2011.em
    xj_nj  3.26;
%line 409 Koivumaki-2011.em

    VariableReferenceList
      [Jj_nj :.:JNa     1]
      [nj    :.:Na_i    0]
      [j     :../ss:Na  0];
  }

  Process ZeroVariableAsFluxProcess(JNa)
  {
    VariableReferenceList
      [JNa  :.:JNa     0] # pmol/sec
      [Nai  :.:Na_i    1]
      [Nass :../ss:Na -1];

    k 6.02214076e+11;  # pmol/sec -> NoM/sec
%line 424 Koivumaki-2011.em
  }

} # END of /Cell/Cytosol/bulk



# /Cell/Membrane
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
    Value  -75.31941;
%line 15 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(ENa)
  {
    Name "ENa in component sodium_current (millivolt)";
    Value  71.3629907465;
%line 21 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(EK)
  {
    Name "EK in component Ca_independent_transient_outward_K_current (millivolt)";
    Value  -84.8419336484;
%line 27 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(ECa)
  {
    Name "ECa in component background_currents (millivolt)";
    Value  122.874289736;
%line 33 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(ist)
  {
    Name "ist in component membrane (picoA)";
    Value  0.0;
  }

  # INa

  Variable Variable(INa)
  {
    Name "INa in component sodium_current (picoA)";
    Value  -0.00132182961579;
%line 47 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(INam)
  {
    Name "INam in component sodium_current_m_gate (dimensionless)";
    Value  0.002779;
%line 53 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(INah1)
  {
    Name "INah1 in component sodium_current_h1_gate (dimensionless)";
    Value  0.90391;
%line 59 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(INah2)
  {
    Name "INah2 in component sodium_current_h2_gate (dimensionless)";
    Value  0.903967;
%line 65 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(INaminf)
  {
    Name "INaminf in component sodium_current_m_gate (dimensionless)";
    Value  0.00281263393065;
%line 71 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(INahinf)
  {
    Name "INahinf in component sodium_current_h1_gate (dimensionless)";
    Value  0.901251615234;
%line 77 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(INamtau)
  {
    Name "INamtau in component sodium_current_m_gate (second)";
    Value  2.61248985717e-05;
%line 83 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(INah1tau)
  {
    Name "INah1tau in component sodium_current_h1_gate (second)";
    Value  0.0302998956095;
%line 89 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(INah2tau)
  {
    Name "INah2tau in component sodium_current_h2_gate (second)";
    Value  0.122999582438;
%line 95 ./Koivumaki-2011_Cell_Membrane.em
  }

  # ICaL

  Variable Variable(ICaLfcainf)
  {
    Value  0.974427134288; # ICaLfcainf
%line 102 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(ICaL)
  {
    Name "ICaL in component L_type_Ca_channel (picoA)";
    Value  -0.0366311367697;
%line 108 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(ICaLdinf)
  {
    Name "ICaLdinf in component L_type_Ca_channel_d_L_gate (dimensionless)";
    Value  1.08169971419e-05;
%line 114 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(ICaLfinf)
  {
    Name "ICaLfinf in component L_type_Ca_channel_f_L1_gate (dimensionless)";
    Value  0.998829569667;
%line 120 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(ICaLdtau)
  {
    Name "ICaLdtau in component L_type_Ca_channel_d_L_gate (second)";
    Value  0.00244351158165;
%line 126 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(ICaLf1tau)
  {
    Name "ICaLf1tau in component L_type_Ca_channel_f_L1_gate (second)";
    Value  0.033795592997;
%line 132 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(ICaLf2tau)
  {
    Name "ICaLf2tau in component L_type_Ca_channel_f_L2_gate (second)";
    Value  0.0653403573775;
%line 138 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(ICaLfcatau)
  {
    Value  0.002;
%line 143 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(ICaLd)
  {
    Name "ICaLd in component L_type_Ca_channel_d_L_gate (dimensionless)";
    Value  1.1e-05;
%line 149 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(ICaLf1)
  {
    Name "ICaLf1 in component L_type_Ca_channel_f_L1_gate (dimensionless)";
    Value  0.998857;
%line 155 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(ICaLf2)
  {
    Name "ICaLf2 in component L_type_Ca_channel_f_L2_gate (dimensionless)";
    Value  0.998862;
%line 161 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(ICaLfca)
  {
    Name "ICaLfca in component L_type_Ca_channel (dimensionless)";
    Value  0.974437;
%line 167 ./Koivumaki-2011_Cell_Membrane.em
  }

  # It

  Variable Variable(It)
  {
    Name "It in component Ca_independent_transient_outward_K_current (picoA)";
    Value  0.0712460260524;
%line 175 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(Itrinf)
  {
    Name "Itrinf in component Ca_independent_transient_outward_K_current_r_gate (dimensionless)";
    Value  0.000969143568724;
%line 181 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(Itsinf)
  {
    Name "Itsinf in component Ca_independent_transient_outward_K_current_s_gate (dimensionless)";
    Value  0.953813243192;
%line 187 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(Itrtau)
  {
    Name "Itrtau in component Ca_independent_transient_outward_K_current_r_gate (second)";
    Value  0.00150640558258;
%line 193 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(Itstau)
  {
    Name "Itstau in component Ca_independent_transient_outward_K_current_s_gate (second)";
    Value  0.0173641290919;
%line 199 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(Itr)
  {
    Name "Itr in component Ca_independent_transient_outward_K_current_r_gate (dimensionless)";
    Value  0.000959;
%line 205 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(Its)
  {
    Name "Its in component Ca_independent_transient_outward_K_current_s_gate (dimensionless)";
    Value  0.954338;
%line 211 ./Koivumaki-2011_Cell_Membrane.em
  }

  # Isus

  Variable Variable(Isus)
  {
    Name "Isus in component sustained_outward_K_current (picoA)";
    Value  0.00706786611635;
%line 219 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(Isusrinf)
  {
    Name "Isusrinf in component sustained_outward_K_current_r_sus_gate (dimensionless)";
    Value  0.000315701862341;
%line 225 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(Isussinf)
  {
    Name "Isussinf in component sustained_outward_K_current_s_sus_gate (dimensionless)";
    Value  0.998867213134;
%line 231 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(Isusrtau)
  {
    Name "Isusrtau in component sustained_outward_K_current_r_sus_gate (second)";
    Value  0.00947441051061;
%line 237 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(Isusstau)
  {
    Name "Isusstau in component sustained_outward_K_current_s_sus_gate (second)";
    Value  3.53515117564;
%line 243 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(Isusr)
  {
    Name "Isusr in component sustained_outward_K_current_r_sus_gate (dimensionless)";
    Value  0.000311;
%line 249 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(Isuss)
  {
    Name "Isuss in component sustained_outward_K_current_s_sus_gate (dimensionless)";
    Value  0.975109;
%line 255 ./Koivumaki-2011_Cell_Membrane.em
  }

  # IKs

  Variable Variable(IKs)
  {
    Name "IKs in component delayed_rectifier_K_currents (picoA)";
    Value  0.039137572195;
%line 263 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(IKsninf)
  {
    Name "IKsninf in component delayed_rectifier_K_currents_n_gate (dimensionless)";
    Value  0.000554110959637;
%line 269 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(IKsntau)
  {
    Name "IKsntau in component delayed_rectifier_K_currents_n_gate (second)";
    Value  0.700000000055;
%line 275 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(IKsn)
  {
    Name "IKsn in component delayed_rectifier_K_currents_n_gate (dimensionless)";
    Value  0.00411;
%line 281 ./Koivumaki-2011_Cell_Membrane.em
  }

  # IKr

  Variable Variable(IKrpi)
  {
    Name "IKrpi in component delayed_rectifier_K_currents_pi_gate (dimensionless)";
    Value  0.699862268759;
%line 289 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(IKr)
  {
    Name "IKr in component delayed_rectifier_K_currents (picoA)";
    Value  0.000139953555103;
%line 295 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(IKrpainf)
  {
    Name "IKrpainf in component delayed_rectifier_K_currents_pa_gate (dimensionless)";
    Value  4.30444159914e-05;
%line 301 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(IKrpatau)
  {
    Name "IKrpatau in component delayed_rectifier_K_currents_pa_gate (second)";
    Value  0.0316302117864;
%line 307 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(IKrpa)
  {
    Name "IKrpa in component delayed_rectifier_K_currents_pa_gate (dimensionless)";
    Value  4.2e-05;
%line 313 ./Koivumaki-2011_Cell_Membrane.em
  }

  # IK1

  Variable Variable(IK1)
  {
    Name "IK1 in component inward_rectifier (picoA)";
    Value  22.3587988235;
%line 321 ./Koivumaki-2011_Cell_Membrane.em
  }

  # Background leaks

  Variable Variable(INab)
  {
    Name "INab in component background_currents (picoA)";
    Value  -8.88880680284;
%line 329 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(ICab)
  {
    Name "ICab in component background_currents (picoA)";
    Value  -18.8680402149;
%line 335 ./Koivumaki-2011_Cell_Membrane.em
  }

  # INaK

  Variable Variable(INaK)
  {
    Name "INaK in component sodium_potassium_pump (picoA)";
    Value  14.7677937671;
%line 343 ./Koivumaki-2011_Cell_Membrane.em
  }

  # INaCa

  Variable Variable(INaCa)
  {
    Name "INaCa in component Na_Ca_ion_exchanger_current (picoA)";
    Value  -7.95738919335;
%line 351 ./Koivumaki-2011_Cell_Membrane.em
  }

  # ICaP

  Variable Variable(ICaP)
  {
    Name "ICaP in component sarcolemmal_calcium_pump_current (picoA)";
    Value  0.489425981873;
%line 359 ./Koivumaki-2011_Cell_Membrane.em
  }

# If

  Variable Variable(Ifyinf)
  {
    Name "";
    Value  0.14141387977;
%line 367 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(Ifytau)
  {
    Name "";
    Value  1.76978039843;
%line 373 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(Ify)
  {
    Name "";
    Value  0.056207;
%line 379 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(IfNa)
  {
    Name "";
    Value  -2.20707344996;
%line 385 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(IfK)
  {
    Name "";
    Value  0.391950750016;
%line 391 ./Koivumaki-2011_Cell_Membrane.em
  }

  Variable Variable(If)
  {
    Name "";
    Value  -1.81512269994;
%line 397 ./Koivumaki-2011_Cell_Membrane.em
  }

  #**********************************************
  # Processes
  #**********************************************

    %line 930 ./Koivumaki-2011_Cell_Membrane.em

} # End of /Cell/Membrane
%line 431 Koivumaki-2011.em

%line 432 Koivumaki-2011.em

# /Cell/Cytoplasm/{ss||bulk_x}



%line 1 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

System System( /Cell/Cytosol/ss )
%line 8 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
{
  StepperID    Default;
  Name "Cytosol ss";
%line 11 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

  Variable Variable( SIZE )
  {
    Value    4.99232e-14;
%line 15 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
  }

  
  Variable Variable(Na)
  {
    Name "Nass in component cleft_space_ion_concentrations (molar)";
    MolarConc  0.008691502;
  }
  
%line 24 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

  Variable Variable( Ca )
  {
    MolarConc    1.62e-07;  # Cai1
%line 28 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
  }

  
  Variable Variable( SERCACa )
  {
    MolarConc    4.25e-06;  # SERCACa1
  }

  Variable Variable( J_SERCASR )
  {
    Name "pmol/sec";
    Value    4.620180615e-07;
  }

  Variable Variable( J_bulkSERCA )
  {
    Name "pmol/sec";
    Value    5.03673667104e-07;
  }

  Variable Variable( JSRCaleak )
  {
    Value    1.71830362541e-07;
  }

  Variable Variable( RyRa )
  {
    Value    0.24553; # RyRa0
  }

  Variable Variable( RyRo )
  {
    Value    4e-05; # RyRo0
  }

  Variable Variable( RyRc )
  {
    Value    0.999972; # RyRc0
  }

  Variable Variable( RyRainf )
  {
    Value    0.152087360021;
  }

  Variable Variable( RyRoinf )
  {
    Value    4.03585606442e-05;
  }

  Variable Variable( RyRcinf )
  {
    Value    0.999968104062;
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
    Value    6.72438095392e-07;
  }

  

   # ss
  Process Koivumaki_2011_CassBufferFluxProcess(Ca_buffer)
  {
    

    SLlow    165;
    KdSLlow  1.1;
    SLhigh   13;
    KdSLhigh 0.013;
    BCa      0.024;
    KdBCa    0.00238;

    VariableReferenceList
      [Cass   :.:Ca -1];
  }

  Process Koivumaki_2011_BufferFluxProcess(Na_buffer)
  {
    Name "Sodium buffering";

    

    B    1.1319;
    KdB  10;

    VariableReferenceList
      [ion :.:Na -1];
  }

  Process Koivumaki_2011_DiffusionJNjFluxProcess(Jj_nj)
  {
    Name "Ca diffusion from junct to non-junct";
    

    D  780.0;
    Aj_nj  2492.32441226;
    xj_nj  0.8225;

    VariableReferenceList
      [nj :../bulk_4:Ca  1]  # Cai4
      [j  :.:Ca         -1]; # Cass
  }
  
    %line 331 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

} # END of /Cell/Cytosol/ss
%line 333 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
%line 444 Koivumaki-2011.em




%line 1 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

System System( /Cell/Cytosol/bulk_1 )
%line 8 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
{
  StepperID    Default;
  Name "Cytosol bulk_1";
%line 11 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

  Variable Variable( SIZE )
  {
    Value    5.06253396241e-13;
%line 15 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
  }

  
%line 24 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

  Variable Variable( Ca )
  {
    MolarConc    1.35e-07;  # Cai1
%line 28 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
  }

  
  Variable Variable( SERCACa )
  {
    MolarConc    4.639e-06;  # SERCACa1
  }

  Variable Variable( J_SERCASR )
  {
    Name "pmol/sec";
    Value    3.4800661513e-06;
  }

  Variable Variable( J_bulkSERCA )
  {
    Name "pmol/sec";
    Value    2.69212944083e-06;
  }

  Variable Variable( JSRCaleak )
  {
    Value    1.8795781218e-06;
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
    Value    0.134029514819;
  }

  Variable Variable( RyRoinf )
  {
    Value    9.59871728298e-05;
  }

  Variable Variable( RyRcinf )
  {
    Value    0.999570989474;
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
    Value    2.85643329524e-08;
  }

  

   # bulk_1-4
  Process Koivumaki_2011_CaBulkDiffusionFluxProcess(Ca_diff)
  {
    Name "Sodium buffering";

    

    DCa    780.0;
    DCaBm  25.0;
    BCa    0.024;
    KdBCa  0.00238;
    dx     1.625;
    j      1;

    VariableReferenceList
      [Ca_up   :../bulk_2:Ca  0]
      [Ca_down :../bulk_1:Ca  0]
      [Ca      :.:Ca                        1];
  }

  Process Koivumaki_2011_BufferFluxProcess(Ca_buffer)
  {
    Name "Ca buffering";

    

    B    0.024;
    KdB  0.00238;

    VariableReferenceList
      [ion :.:Ca -1];
  }

  
    %line 331 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

} # END of /Cell/Cytosol/bulk_1
%line 333 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
%line 444 Koivumaki-2011.em




%line 1 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

System System( /Cell/Cytosol/bulk_2 )
%line 8 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
{
  StepperID    Default;
  Name "Cytosol bulk_2";
%line 11 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

  Variable Variable( SIZE )
  {
    Value    1.51876018872e-12;
%line 15 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
  }

  
%line 24 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

  Variable Variable( Ca )
  {
    MolarConc    1.38e-07;  # Cai1
%line 28 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
  }

  
  Variable Variable( SERCACa )
  {
    MolarConc    4.512e-06;  # SERCACa1
  }

  Variable Variable( J_SERCASR )
  {
    Name "pmol/sec";
    Value    1.0661197287e-05;
  }

  Variable Variable( J_bulkSERCA )
  {
    Name "pmol/sec";
    Value    8.9720789739e-06;
  }

  Variable Variable( JSRCaleak )
  {
    Value    5.53579887484e-06;
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
    Value    0.135834551649;
  }

  Variable Variable( RyRoinf )
  {
    Value    7.99150322259e-05;
  }

  Variable Variable( RyRcinf )
  {
    Value    0.999752388022;
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
    Value    6.87582276757e-08;
  }

  

   # bulk_1-4
  Process Koivumaki_2011_CaBulkDiffusionFluxProcess(Ca_diff)
  {
    Name "Sodium buffering";

    

    DCa    780.0;
    DCaBm  25.0;
    BCa    0.024;
    KdBCa  0.00238;
    dx     1.625;
    j      2;

    VariableReferenceList
      [Ca_up   :../bulk_3:Ca  0]
      [Ca_down :../bulk_1:Ca  0]
      [Ca      :.:Ca                        1];
  }

  Process Koivumaki_2011_BufferFluxProcess(Ca_buffer)
  {
    Name "Ca buffering";

    

    B    0.024;
    KdB  0.00238;

    VariableReferenceList
      [ion :.:Ca -1];
  }

  
    %line 331 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

} # END of /Cell/Cytosol/bulk_2
%line 333 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
%line 444 Koivumaki-2011.em




%line 1 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

System System( /Cell/Cytosol/bulk_3 )
%line 8 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
{
  StepperID    Default;
  Name "Cytosol bulk_3";
%line 11 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

  Variable Variable( SIZE )
  {
    Value    2.5312669812e-12;
%line 15 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
  }

  
%line 24 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

  Variable Variable( Ca )
  {
    MolarConc    1.44e-07;  # Cai1
%line 28 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
  }

  
  Variable Variable( SERCACa )
  {
    MolarConc    4.326e-06;  # SERCACa1
  }

  Variable Variable( J_SERCASR )
  {
    Name "pmol/sec";
    Value    1.84680120815e-05;
  }

  Variable Variable( J_bulkSERCA )
  {
    Name "pmol/sec";
    Value    1.78211724535e-05;
  }

  Variable Variable( JSRCaleak )
  {
    Value    8.96650196498e-06;
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
    Value    0.139591722793;
  }

  Variable Variable( RyRoinf )
  {
    Value    5.86576830742e-05;
  }

  Variable Variable( RyRcinf )
  {
    Value    0.999902073948;
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
    Value    8.07258397356e-08;
  }

  

   # bulk_1-4
  Process Koivumaki_2011_CaBulkDiffusionFluxProcess(Ca_diff)
  {
    Name "Sodium buffering";

    

    DCa    780.0;
    DCaBm  25.0;
    BCa    0.024;
    KdBCa  0.00238;
    dx     1.625;
    j      3;

    VariableReferenceList
      [Ca_up   :../bulk_4:Ca  0]
      [Ca_down :../bulk_2:Ca  0]
      [Ca      :.:Ca                        1];
  }

  Process Koivumaki_2011_BufferFluxProcess(Ca_buffer)
  {
    Name "Ca buffering";

    

    B    0.024;
    KdB  0.00238;

    VariableReferenceList
      [ion :.:Ca -1];
  }

  
    %line 331 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

} # END of /Cell/Cytosol/bulk_3
%line 333 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
%line 444 Koivumaki-2011.em




%line 1 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

System System( /Cell/Cytosol/bulk_4 )
%line 8 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
{
  StepperID    Default;
  Name "Cytosol bulk_4";
%line 11 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

  Variable Variable( SIZE )
  {
    Value    3.54377377368e-12;
%line 15 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
  }

  
%line 24 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

  Variable Variable( Ca )
  {
    MolarConc    1.56e-07;  # Cai1
%line 28 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
  }

    %line 331 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em

} # END of /Cell/Cytosol/bulk_4
%line 333 ./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em
%line 444 Koivumaki-2011.em



%line 445 Koivumaki-2011.em

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

    %line 50 ./Koivumaki-2011_Cell_SR_x.em

} # END of /Cell/SR_1
%line 52 ./Koivumaki-2011_Cell_SR_x.em
%line 451 Koivumaki-2011.em



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

    %line 50 ./Koivumaki-2011_Cell_SR_x.em

} # END of /Cell/SR_2
%line 52 ./Koivumaki-2011_Cell_SR_x.em
%line 451 Koivumaki-2011.em



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

    %line 50 ./Koivumaki-2011_Cell_SR_x.em

} # END of /Cell/SR_3
%line 52 ./Koivumaki-2011_Cell_SR_x.em
%line 451 Koivumaki-2011.em



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

    %line 50 ./Koivumaki-2011_Cell_SR_x.em

} # END of /Cell/SR_4
%line 52 ./Koivumaki-2011_Cell_SR_x.em
%line 451 Koivumaki-2011.em



%line 452 Koivumaki-2011.em
