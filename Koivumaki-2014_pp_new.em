<?xml version="1.0" ?>
<!-- created by ecell.Session.saveModel
 date: Sat Dec 26 14:10:19 2020
 currenttime: 402.0
-->
<eml>
<stepper class="FixedODE1Stepper" id="Default">
<property name="MaxStepInterval">
<value>inf</value>
</property>
<property name="MinStepInterval">
<value>1e-100</value>
</property>
<property name="NextTime">
<value>402.00001</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepInterval">
<value>9.99999997475e-06</value>
</property>
</stepper>
<stepper class="PassiveStepper" id="PSV">
<property name="MaxStepInterval">
<value>inf</value>
</property>
<property name="MinStepInterval">
<value>1e-100</value>
</property>
<property name="NextTime">
<value>inf</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepInterval">
<value>inf</value>
</property>
</stepper>
<system class="System" id="/">
<variable class="Variable" id="Cao">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Value">
<value>1.083984606e+21</value>
</property>
</variable>
<variable class="Variable" id="Ko">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Value">
<value>3.251953818e+21</value>
</property>
</variable>
<variable class="Variable" id="Nao">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Value">
<value>7.82877771e+22</value>
</property>
</variable>
<variable class="Variable" id="SIZE">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>1.0</value>
</property>
</variable>
<variable class="Variable" id="t">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>time in component environment (second)</value>
</property>
<property name="Value">
<value>402.0</value>
</property>
</variable>
<process class="Nygren_1998voiFluxProcess" id="t">
<property name="Name">
<value>time in component environment (second)</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>voi</value>
<value>:/:t</value>
<value>1</value>
</value>
</property>
</process>
<property name="Name">
<value>The Root System</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
</system>
<system class="System" id="/Cell">
<variable class="Variable" id="SIZE">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>8.3322287625e-12</value>
</property>
</variable>
<property name="Name">
<value>Cell</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
</system>
<system class="System" id="/Cell/Cytosol">
<variable class="Variable" id="K_i">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>K_i in component intracellular_ion_concentrations (molar)</value>
</property>
<property name="Value">
<value>6.5931643567e+11</value>
</property>
</variable>
<variable class="Variable" id="SIZE">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>8.14997753985e-12</value>
</property>
</variable>
<property name="Name">
<value>Cell</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
</system>
<system class="System" id="/Cell/Membrane">
<variable class="Variable" id="ECa">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>ECa in component background_currents (millivolt)</value>
</property>
<property name="Value">
<value>89.2903691162</value>
</property>
</variable>
<variable class="Variable" id="EK">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>EK in component Ca_independent_transient_outward_K_current (millivolt)</value>
</property>
<property name="Value">
<value>-84.7836721502</value>
</property>
</variable>
<variable class="Variable" id="ENa">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>ENa in component sodium_current (millivolt)</value>
</property>
<property name="Value">
<value>49.3588409983</value>
</property>
</variable>
<variable class="Variable" id="ICaL">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>ICaL in component L_type_Ca_channel (picoA)</value>
</property>
<property name="Value">
<value>-0.0158385401852</value>
</property>
</variable>
<variable class="Variable" id="ICaLd">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>ICaLd in component L_type_Ca_channel_d_L_gate (dimensionless)</value>
</property>
<property name="Value">
<value>7.69777820076e-06</value>
</property>
</variable>
<variable class="Variable" id="ICaLdinf">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>ICaLdinf in component L_type_Ca_channel_d_L_gate (dimensionless)</value>
</property>
<property name="Value">
<value>7.69262996757e-06</value>
</property>
</variable>
<variable class="Variable" id="ICaLdtau">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>ICaLdtau in component L_type_Ca_channel_d_L_gate (second)</value>
</property>
<property name="Value">
<value>0.00236990496163</value>
</property>
</variable>
<variable class="Variable" id="ICaLf1">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>ICaLf1 in component L_type_Ca_channel_f_L1_gate (dimensionless)</value>
</property>
<property name="Value">
<value>0.999105834257</value>
</property>
</variable>
<variable class="Variable" id="ICaLf1tau">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>ICaLf1tau in component L_type_Ca_channel_f_L1_gate (second)</value>
</property>
<property name="Value">
<value>0.0337950311623</value>
</property>
</variable>
<variable class="Variable" id="ICaLf2">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>ICaLf2 in component L_type_Ca_channel_f_L2_gate (dimensionless)</value>
</property>
<property name="Value">
<value>0.999077943293</value>
</property>
</variable>
<variable class="Variable" id="ICaLf2tau">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>ICaLf2tau in component L_type_Ca_channel_f_L2_gate (second)</value>
</property>
<property name="Value">
<value>0.0639446388487</value>
</property>
</variable>
<variable class="Variable" id="ICaLfca">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>ICaLfca in component L_type_Ca_channel (dimensionless)</value>
</property>
<property name="Value">
<value>0.999999999988</value>
</property>
</variable>
<variable class="Variable" id="ICaLfcainf">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>0.999999999988</value>
</property>
</variable>
<variable class="Variable" id="ICaLfcatau">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>0.002</value>
</property>
</variable>
<variable class="Variable" id="ICaLfinf">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>ICaLfinf in component L_type_Ca_channel_f_L1_gate (dimensionless)</value>
</property>
<property name="Value">
<value>0.999113781986</value>
</property>
</variable>
<variable class="Variable" id="ICaP">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>ICaP in component sarcolemmal_calcium_pump_current (picoA)</value>
</property>
<property name="Value">
<value>1.61041010646</value>
</property>
</variable>
<variable class="Variable" id="ICab">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>ICab in component background_currents (picoA)</value>
</property>
<property name="Value">
<value>-13.1072130161</value>
</property>
</variable>
<variable class="Variable" id="IK1">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>IK1 in component inward_rectifier (picoA)</value>
</property>
<property name="Value">
<value>19.0289815837</value>
</property>
</variable>
<variable class="Variable" id="IKr">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>IKr in component delayed_rectifier_K_currents (picoA)</value>
</property>
<property name="Value">
<value>8.39059496784e-05</value>
</property>
</variable>
<variable class="Variable" id="IKrpa">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>IKrpa in component delayed_rectifier_K_currents_pa_gate (dimensionless)</value>
</property>
<property name="Value">
<value>3.1264743279e-05</value>
</property>
</variable>
<variable class="Variable" id="IKrpainf">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>IKrpainf in component delayed_rectifier_K_currents_pa_gate (dimensionless)</value>
</property>
<property name="Value">
<value>3.09615916954e-05</value>
</property>
</variable>
<variable class="Variable" id="IKrpatau">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>IKrpatau in component delayed_rectifier_K_currents_pa_gate (second)</value>
</property>
<property name="Value">
<value>0.0314668782073</value>
</property>
</variable>
<variable class="Variable" id="IKrpi">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>IKrpi in component delayed_rectifier_K_currents_pi_gate (dimensionless)</value>
</property>
<property name="Value">
<value>0.716875685205</value>
</property>
</variable>
<variable class="Variable" id="IKs">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>IKs in component delayed_rectifier_K_currents (picoA)</value>
</property>
<property name="Value">
<value>0.144136983705</value>
</property>
</variable>
<variable class="Variable" id="IKsn">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>IKsn in component delayed_rectifier_K_currents_n_gate (dimensionless)</value>
</property>
<property name="Value">
<value>0.0192509157738</value>
</property>
</variable>
<variable class="Variable" id="IKsninf">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>IKsninf in component delayed_rectifier_K_currents_n_gate (dimensionless)</value>
</property>
<property name="Value">
<value>0.000474270056078</value>
</property>
</variable>
<variable class="Variable" id="IKsntau">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>IKsntau in component delayed_rectifier_K_currents_n_gate (second)</value>
</property>
<property name="Value">
<value>0.700000000021</value>
</property>
</variable>
<variable class="Variable" id="INa">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>INa in component sodium_current (picoA)</value>
</property>
<property name="Value">
<value>-0.000696543262044</value>
</property>
</variable>
<variable class="Variable" id="INaCa">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>INaCa in component Na_Ca_ion_exchanger_current (picoA)</value>
</property>
<property name="Value">
<value>-23.7136670194</value>
</property>
</variable>
<variable class="Variable" id="INaK">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>INaK in component sodium_potassium_pump (picoA)</value>
</property>
<property name="Value">
<value>25.1576702514</value>
</property>
</variable>
<variable class="Variable" id="INab">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>INab in component background_currents (picoA)</value>
</property>
<property name="Value">
<value>-7.67518051433</value>
</property>
</variable>
<variable class="Variable" id="INah1">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>INah1 in component sodium_current_h1_gate (dimensionless)</value>
</property>
<property name="Value">
<value>0.929147656074</value>
</property>
</variable>
<variable class="Variable" id="INah1tau">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>INah1tau in component sodium_current_h1_gate (second)</value>
</property>
<property name="Value">
<value>0.0302999437203</value>
</property>
</variable>
<variable class="Variable" id="INah2">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>INah2 in component sodium_current_h2_gate (dimensionless)</value>
</property>
<property name="Value">
<value>0.921740320933</value>
</property>
</variable>
<variable class="Variable" id="INah2tau">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>INah2tau in component sodium_current_h2_gate (second)</value>
</property>
<property name="Value">
<value>0.122999774881</value>
</property>
</variable>
<variable class="Variable" id="INahinf">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>INahinf in component sodium_current_h1_gate (dimensionless)</value>
</property>
<property name="Value">
<value>0.929839405073</value>
</property>
</variable>
<variable class="Variable" id="INam">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>INam in component sodium_current_m_gate (dimensionless)</value>
</property>
<property name="Value">
<value>0.00221206988033</value>
</property>
</variable>
<variable class="Variable" id="INaminf">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>INaminf in component sodium_current_m_gate (dimensionless)</value>
</property>
<property name="Value">
<value>0.00221205439216</value>
</property>
</variable>
<variable class="Variable" id="INamtau">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>INamtau in component sodium_current_m_gate (second)</value>
</property>
<property name="Value">
<value>2.56683831017e-05</value>
</property>
</variable>
<variable class="Variable" id="If">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>-1.3997353512</value>
</property>
</variable>
<variable class="Variable" id="IfK">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>0.270018864181</value>
</property>
</variable>
<variable class="Variable" id="IfNa">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>-1.66975421538</value>
</property>
</variable>
<variable class="Variable" id="Ify">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>0.0492471425154</value>
</property>
</variable>
<variable class="Variable" id="Ifyinf">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>0.161760478712</value>
</property>
</variable>
<variable class="Variable" id="Ifytau">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>1.73330845417</value>
</property>
</variable>
<variable class="Variable" id="Isus">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>Isus in component sustained_outward_K_current (picoA)</value>
</property>
<property name="Value">
<value>0.0037251892316</value>
</property>
</variable>
<variable class="Variable" id="Isusr">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>Isusr in component sustained_outward_K_current_r_sus_gate (dimensionless)</value>
</property>
<property name="Value">
<value>0.000251346446933</value>
</property>
</variable>
<variable class="Variable" id="Isusrinf">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>Isusrinf in component sustained_outward_K_current_r_sus_gate (dimensionless)</value>
</property>
<property name="Value">
<value>0.000250881673986</value>
</property>
</variable>
<variable class="Variable" id="Isusrtau">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>Isusrtau in component sustained_outward_K_current_r_sus_gate (second)</value>
</property>
<property name="Value">
<value>0.00947828800017</value>
</property>
</variable>
<variable class="Variable" id="Isuss">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>Isuss in component sustained_outward_K_current_s_sus_gate (dimensionless)</value>
</property>
<property name="Value">
<value>0.879769769571</value>
</property>
</variable>
<variable class="Variable" id="Isussinf">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>Isussinf in component sustained_outward_K_current_s_sus_gate (dimensionless)</value>
</property>
<property name="Value">
<value>0.999070226443</value>
</property>
</variable>
<variable class="Variable" id="Isusstau">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>Isusstau in component sustained_outward_K_current_s_sus_gate (second)</value>
</property>
<property name="Value">
<value>3.55112610207</value>
</property>
</variable>
<variable class="Variable" id="It">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>It in component Ca_independent_transient_outward_K_current (picoA)</value>
</property>
<property name="Value">
<value>0.0480706252354</value>
</property>
</variable>
<variable class="Variable" id="Itr">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>Itr in component Ca_independent_transient_outward_K_current_r_gate (dimensionless)</value>
</property>
<property name="Value">
<value>0.000810028952959</value>
</property>
</variable>
<variable class="Variable" id="Itrinf">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>Itrinf in component Ca_independent_transient_outward_K_current_r_gate (dimensionless)</value>
</property>
<property name="Value">
<value>0.000809847929711</value>
</property>
</variable>
<variable class="Variable" id="Itrtau">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>Itrtau in component Ca_independent_transient_outward_K_current_r_gate (second)</value>
</property>
<property name="Value">
<value>0.00150458104324</value>
</property>
</variable>
<variable class="Variable" id="Its">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>Its in component Ca_independent_transient_outward_K_current_s_gate (dimensionless)</value>
</property>
<property name="Value">
<value>0.960729761509</value>
</property>
</variable>
<variable class="Variable" id="Itsinf">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>Itsinf in component Ca_independent_transient_outward_K_current_s_gate (dimensionless)</value>
</property>
<property name="Value">
<value>0.960822471631</value>
</property>
</variable>
<variable class="Variable" id="Itstau">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>Itstau in component Ca_independent_transient_outward_K_current_s_gate (second)</value>
</property>
<property name="Value">
<value>0.0163582316925</value>
</property>
</variable>
<variable class="Variable" id="SIZE">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>4.99232e-05</value>
</property>
</variable>
<variable class="Variable" id="V">
<property name="DiffusionCoeff">
<value>2.28648011787e-314</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>V in component membrane (millivolt)</value>
</property>
<property name="Value">
<value>-77.2963928229</value>
</property>
</variable>
<variable class="Variable" id="ist">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>ist in component membrane (picoA)</value>
</property>
<property name="Value">
<value>0.0</value>
</property>
</variable>
<process class="Nygren_1998_EAssignmentProcess" id="ECa">
<property name="F">
<value>96487.0</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="R">
<value>8314.0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="T">
<value>306.15</value>
</property>
<property name="VariableReferenceList">
<value>
<value>i</value>
<value>:/Cell/Cytosol/ss:Ca</value>
</value>
<value>
<value>o</value>
<value>:/:Cao</value>
</value>
<value>
<value>E</value>
<value>:/Cell/Membrane:ECa</value>
<value>1</value>
</value>
</property>
<property name="z">
<value>2.0</value>
</property>
</process>
<process class="Nygren_1998_EAssignmentProcess" id="EK">
<property name="F">
<value>96487.0</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="R">
<value>8314.0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="T">
<value>306.15</value>
</property>
<property name="VariableReferenceList">
<value>
<value>i</value>
<value>:/Cell/Cytosol:K_i</value>
</value>
<value>
<value>o</value>
<value>:/:Ko</value>
</value>
<value>
<value>E</value>
<value>:/Cell/Membrane:EK</value>
<value>1</value>
</value>
</property>
<property name="z">
<value>1.0</value>
</property>
</process>
<process class="Nygren_1998_EAssignmentProcess" id="ENa">
<property name="F">
<value>96487.0</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="R">
<value>8314.0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="T">
<value>306.15</value>
</property>
<property name="VariableReferenceList">
<value>
<value>i</value>
<value>:/Cell/Cytosol/ss:Na</value>
</value>
<value>
<value>o</value>
<value>:/:Nao</value>
</value>
<value>
<value>E</value>
<value>:/Cell/Membrane:ENa</value>
<value>1</value>
</value>
</property>
<property name="z">
<value>1.0</value>
</property>
</process>
<process class="Koivumaki_2011_ICaLAssignmentProcess" id="ICaL">
<property name="E_Ca_app">
<value>60.0</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>Ca_ss</value>
<value>:/Cell/Cytosol/ss:Ca</value>
</value>
<value>
<value>ICaLd</value>
<value>:/Cell/Membrane:ICaLd</value>
</value>
<value>
<value>ICaLf1</value>
<value>:/Cell/Membrane:ICaLf1</value>
</value>
<value>
<value>ICaLf2</value>
<value>:/Cell/Membrane:ICaLf2</value>
</value>
<value>
<value>ICaLfca</value>
<value>:/Cell/Membrane:ICaLfca</value>
</value>
<value>
<value>V</value>
<value>:/Cell/Membrane:V</value>
</value>
<value>
<value>ICaL</value>
<value>:/Cell/Membrane:ICaL</value>
<value>1</value>
</value>
<value>
<value>ICaLdinf</value>
<value>:/Cell/Membrane:ICaLdinf</value>
<value>1</value>
</value>
<value>
<value>ICaLdtau</value>
<value>:/Cell/Membrane:ICaLdtau</value>
<value>1</value>
</value>
<value>
<value>ICaLf1tau</value>
<value>:/Cell/Membrane:ICaLf1tau</value>
<value>1</value>
</value>
<value>
<value>ICaLf2tau</value>
<value>:/Cell/Membrane:ICaLf2tau</value>
<value>1</value>
</value>
<value>
<value>ICaLfcainf</value>
<value>:/Cell/Membrane:ICaLfcainf</value>
<value>1</value>
</value>
<value>
<value>ICaLfcatau</value>
<value>:/Cell/Membrane:ICaLfcatau</value>
<value>1</value>
</value>
<value>
<value>ICaLfinf</value>
<value>:/Cell/Membrane:ICaLfinf</value>
<value>1</value>
</value>
</property>
<property name="g_Ca_L">
<value>15.0</value>
</property>
<property name="h_f1">
<value>0.0</value>
</property>
<property name="kCa">
<value>0.0006</value>
</property>
<property name="kCan">
<value>2.0</value>
</property>
<property name="k_dtau1">
<value>0.00065</value>
</property>
<property name="k_dtau2">
<value>35.0</value>
</property>
<property name="k_dtau3">
<value>30.0</value>
</property>
<property name="k_dtau4">
<value>2.0</value>
</property>
<property name="k_dtau5">
<value>0.0005</value>
</property>
<property name="k_f2tau1">
<value>1.34</value>
</property>
<property name="k_f2tau2">
<value>40.0</value>
</property>
<property name="k_f2tau3">
<value>14.2</value>
</property>
<property name="k_f2tau4">
<value>2.0</value>
</property>
<property name="k_f2tau5">
<value>0.04</value>
</property>
<property name="k_finf1">
<value>0.04</value>
</property>
<property name="k_finf2">
<value>0.96</value>
</property>
<property name="k_finf3">
<value>1.0</value>
</property>
<property name="k_finf4">
<value>25.5</value>
</property>
<property name="k_finf5">
<value>8.4</value>
</property>
<property name="k_finf6">
<value>1.0</value>
</property>
<property name="k_finf7">
<value>1.0</value>
</property>
<property name="k_finf8">
<value>60.0</value>
</property>
<property name="k_finf9">
<value>8.0</value>
</property>
</process>
<process class="Nygren_1998i_CaPAssignmentProcess" id="ICaP">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>Ca_i</value>
<value>:/Cell/Cytosol/ss:Ca</value>
</value>
<value>
<value>i_CaP</value>
<value>:/Cell/Membrane:ICaP</value>
<value>1</value>
</value>
</property>
<property name="i_CaP_max">
<value>2.0</value>
</property>
<property name="k_CaP">
<value>0.0005</value>
</property>
</process>
<process class="Nygren_1998_BackgroudLeakAssignmentProcess" id="ICab">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>E</value>
<value>:/Cell/Membrane:ECa</value>
</value>
<value>
<value>V</value>
<value>:/Cell/Membrane:V</value>
</value>
<value>
<value>i</value>
<value>:/Cell/Membrane:ICab</value>
<value>1</value>
</value>
</property>
<property name="g">
<value>0.078681</value>
</property>
</process>
<process class="Nygren_1998i_K1AssignmentProcess" id="IK1">
<property name="F">
<value>96487.0</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="R">
<value>8314.0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="T">
<value>306.15</value>
</property>
<property name="VariableReferenceList">
<value>
<value>E_K</value>
<value>:/Cell/Membrane:EK</value>
</value>
<value>
<value>V</value>
<value>:/Cell/Membrane:V</value>
</value>
<value>
<value>K_c</value>
<value>:/:Ko</value>
</value>
<value>
<value>i_K1</value>
<value>:/Cell/Membrane:IK1</value>
<value>1</value>
</value>
</property>
<property name="g_K1">
<value>3.45</value>
</property>
</process>
<process class="Nygren_1998_IKrAssignmentProcess" id="IKr">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>E_K</value>
<value>:/Cell/Membrane:EK</value>
</value>
<value>
<value>p_a</value>
<value>:/Cell/Membrane:IKrpa</value>
</value>
<value>
<value>V</value>
<value>:/Cell/Membrane:V</value>
</value>
<value>
<value>i_Kr</value>
<value>:/Cell/Membrane:IKr</value>
<value>1</value>
</value>
<value>
<value>p_a_infinity</value>
<value>:/Cell/Membrane:IKrpainf</value>
<value>1</value>
</value>
<value>
<value>tau_p_a</value>
<value>:/Cell/Membrane:IKrpatau</value>
<value>1</value>
</value>
<value>
<value>p_i</value>
<value>:/Cell/Membrane:IKrpi</value>
<value>1</value>
</value>
</property>
<property name="g_Kr">
<value>0.5</value>
</property>
</process>
<process class="Nygren_1998_IKsAssignmentProcess" id="IKs">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>E_K</value>
<value>:/Cell/Membrane:EK</value>
</value>
<value>
<value>n</value>
<value>:/Cell/Membrane:IKsn</value>
</value>
<value>
<value>V</value>
<value>:/Cell/Membrane:V</value>
</value>
<value>
<value>i_Ks</value>
<value>:/Cell/Membrane:IKs</value>
<value>1</value>
</value>
<value>
<value>n_infinity</value>
<value>:/Cell/Membrane:IKsninf</value>
<value>1</value>
</value>
<value>
<value>tau_n</value>
<value>:/Cell/Membrane:IKsntau</value>
<value>1</value>
</value>
</property>
<property name="g_Ks">
<value>1.0</value>
</property>
</process>
<process class="Nygren_1998_INaAssignmentProcess" id="INa">
<property name="F">
<value>96487.0</value>
</property>
<property name="P_Na">
<value>0.0018</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="R">
<value>8314.0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="T">
<value>306.15</value>
</property>
<property name="VariableReferenceList">
<value>
<value>E_Na</value>
<value>:/Cell/Membrane:ENa</value>
</value>
<value>
<value>h1</value>
<value>:/Cell/Membrane:INah1</value>
</value>
<value>
<value>h2</value>
<value>:/Cell/Membrane:INah2</value>
</value>
<value>
<value>m</value>
<value>:/Cell/Membrane:INam</value>
</value>
<value>
<value>V</value>
<value>:/Cell/Membrane:V</value>
</value>
<value>
<value>Na_c</value>
<value>:/:Nao</value>
</value>
<value>
<value>i_Na</value>
<value>:/Cell/Membrane:INa</value>
<value>1</value>
</value>
<value>
<value>tau_h1</value>
<value>:/Cell/Membrane:INah1tau</value>
<value>1</value>
</value>
<value>
<value>tau_h2</value>
<value>:/Cell/Membrane:INah2tau</value>
<value>1</value>
</value>
<value>
<value>h_infinity</value>
<value>:/Cell/Membrane:INahinf</value>
<value>1</value>
</value>
<value>
<value>m_infinity</value>
<value>:/Cell/Membrane:INaminf</value>
<value>1</value>
</value>
<value>
<value>tau_m</value>
<value>:/Cell/Membrane:INamtau</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998i_NaCaAssignmentProcess" id="INaCa">
<property name="F">
<value>96487.0</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="R">
<value>8314.0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="T">
<value>306.15</value>
</property>
<property name="VariableReferenceList">
<value>
<value>Ca_i</value>
<value>:/Cell/Cytosol/ss:Ca</value>
</value>
<value>
<value>Na_i</value>
<value>:/Cell/Cytosol/ss:Na</value>
</value>
<value>
<value>V</value>
<value>:/Cell/Membrane:V</value>
</value>
<value>
<value>Ca_c</value>
<value>:/:Cao</value>
</value>
<value>
<value>Na_c</value>
<value>:/:Nao</value>
</value>
<value>
<value>i_NaCa</value>
<value>:/Cell/Membrane:INaCa</value>
<value>1</value>
</value>
</property>
<property name="d_NaCa">
<value>0.0003</value>
</property>
<property name="gamma">
<value>0.45</value>
</property>
<property name="k_NaCa">
<value>0.0084</value>
</property>
</process>
<process class="Nygren_1998i_NaKAssignmentProcess" id="INaK">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>Na_i</value>
<value>:/Cell/Cytosol/ss:Na</value>
</value>
<value>
<value>V</value>
<value>:/Cell/Membrane:V</value>
</value>
<value>
<value>K_c</value>
<value>:/:Ko</value>
</value>
<value>
<value>i_NaK</value>
<value>:/Cell/Membrane:INaK</value>
<value>1</value>
</value>
</property>
<property name="i_NaK_max">
<value>70.8253</value>
</property>
<property name="k_NaK_K">
<value>1.0</value>
</property>
<property name="k_NaK_Na">
<value>11.0</value>
</property>
</process>
<process class="Nygren_1998_BackgroudLeakAssignmentProcess" id="INab">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>E</value>
<value>:/Cell/Membrane:ENa</value>
</value>
<value>
<value>V</value>
<value>:/Cell/Membrane:V</value>
</value>
<value>
<value>i</value>
<value>:/Cell/Membrane:INab</value>
<value>1</value>
</value>
</property>
<property name="g">
<value>0.060599</value>
</property>
</process>
<process class="Koivumaki_2011_IfAssignmentProcess" id="If">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>EK</value>
<value>:/Cell/Membrane:EK</value>
</value>
<value>
<value>ENa</value>
<value>:/Cell/Membrane:ENa</value>
</value>
<value>
<value>Ify</value>
<value>:/Cell/Membrane:Ify</value>
</value>
<value>
<value>V</value>
<value>:/Cell/Membrane:V</value>
</value>
<value>
<value>If</value>
<value>:/Cell/Membrane:If</value>
<value>1</value>
</value>
<value>
<value>IfK</value>
<value>:/Cell/Membrane:IfK</value>
<value>1</value>
</value>
<value>
<value>IfNa</value>
<value>:/Cell/Membrane:IfNa</value>
<value>1</value>
</value>
<value>
<value>Ifyinf</value>
<value>:/Cell/Membrane:Ifyinf</value>
<value>1</value>
</value>
<value>
<value>Ifytau</value>
<value>:/Cell/Membrane:Ifytau</value>
<value>1</value>
</value>
</property>
<property name="gIf">
<value>1.0</value>
</property>
</process>
<process class="Koivumaki_2011_IsusAssignmentProcess" id="Isus">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>EK</value>
<value>:/Cell/Membrane:EK</value>
</value>
<value>
<value>Isusr</value>
<value>:/Cell/Membrane:Isusr</value>
</value>
<value>
<value>Isuss</value>
<value>:/Cell/Membrane:Isuss</value>
</value>
<value>
<value>V</value>
<value>:/Cell/Membrane:V</value>
</value>
<value>
<value>Isus</value>
<value>:/Cell/Membrane:Isus</value>
<value>1</value>
</value>
<value>
<value>Isusrinf</value>
<value>:/Cell/Membrane:Isusrinf</value>
<value>1</value>
</value>
<value>
<value>Isusrtau</value>
<value>:/Cell/Membrane:Isusrtau</value>
<value>1</value>
</value>
<value>
<value>Isussinf</value>
<value>:/Cell/Membrane:Isussinf</value>
<value>1</value>
</value>
<value>
<value>Isusstau</value>
<value>:/Cell/Membrane:Isusstau</value>
<value>1</value>
</value>
</property>
<property name="g_sus">
<value>2.25</value>
</property>
</process>
<process class="Koivumaki_2011_ItAssignmentProcess" id="It">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>EK</value>
<value>:/Cell/Membrane:EK</value>
</value>
<value>
<value>Itr</value>
<value>:/Cell/Membrane:Itr</value>
</value>
<value>
<value>Its</value>
<value>:/Cell/Membrane:Its</value>
</value>
<value>
<value>V</value>
<value>:/Cell/Membrane:V</value>
</value>
<value>
<value>It</value>
<value>:/Cell/Membrane:It</value>
<value>1</value>
</value>
<value>
<value>Itrinf</value>
<value>:/Cell/Membrane:Itrinf</value>
<value>1</value>
</value>
<value>
<value>Itrtau</value>
<value>:/Cell/Membrane:Itrtau</value>
<value>1</value>
</value>
<value>
<value>Itsinf</value>
<value>:/Cell/Membrane:Itsinf</value>
<value>1</value>
</value>
<value>
<value>Itstau</value>
<value>:/Cell/Membrane:Itstau</value>
<value>1</value>
</value>
</property>
<property name="g_t">
<value>8.25</value>
</property>
</process>
<process class="Koivumaki_2011_ZeroVariableAsCurrentFluxProcess" id="JCa_INaCa">
<property name="F">
<value>96487.0</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>INaCa</value>
<value>:/Cell/Membrane:INaCa</value>
</value>
<value>
<value>Cass</value>
<value>:/Cell/Cytosol/ss:Ca</value>
<value>1</value>
</value>
</property>
<property name="k">
<value>1.0</value>
</property>
</process>
<process class="Koivumaki_2011_ZeroVariableAsCurrentFluxProcess" id="JCa_mem">
<property name="F">
<value>96487.0</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>ICaL</value>
<value>:/Cell/Membrane:ICaL</value>
</value>
<value>
<value>ICaP</value>
<value>:/Cell/Membrane:ICaP</value>
</value>
<value>
<value>ICab</value>
<value>:/Cell/Membrane:ICab</value>
</value>
<value>
<value>Cass</value>
<value>:/Cell/Cytosol/ss:Ca</value>
<value>1</value>
</value>
</property>
<property name="k">
<value>-0.5</value>
</property>
</process>
<process class="Koivumaki_2011_ZeroVariableAsCurrentFluxProcess" id="JK_INaK">
<property name="F">
<value>96487.0</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>INaK</value>
<value>:/Cell/Membrane:INaK</value>
</value>
<value>
<value>Ki</value>
<value>:/Cell/Cytosol:K_i</value>
<value>1</value>
</value>
</property>
<property name="k">
<value>2.0</value>
</property>
</process>
<process class="Koivumaki_2011_ZeroVariableAsCurrentFluxProcess" id="JK_mem">
<property name="F">
<value>96487.0</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>IK1</value>
<value>:/Cell/Membrane:IK1</value>
</value>
<value>
<value>IKr</value>
<value>:/Cell/Membrane:IKr</value>
</value>
<value>
<value>IKs</value>
<value>:/Cell/Membrane:IKs</value>
</value>
<value>
<value>IfK</value>
<value>:/Cell/Membrane:IfK</value>
</value>
<value>
<value>Isus</value>
<value>:/Cell/Membrane:Isus</value>
</value>
<value>
<value>It</value>
<value>:/Cell/Membrane:It</value>
</value>
<value>
<value>ist</value>
<value>:/Cell/Membrane:ist</value>
</value>
<value>
<value>Ki</value>
<value>:/Cell/Cytosol:K_i</value>
<value>1</value>
</value>
</property>
<property name="k">
<value>-1.0</value>
</property>
</process>
<process class="Koivumaki_2011_ZeroVariableAsCurrentFluxProcess" id="JNa_mem">
<property name="F">
<value>96487.0</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>INa</value>
<value>:/Cell/Membrane:INa</value>
</value>
<value>
<value>INaCa</value>
<value>:/Cell/Membrane:INaCa</value>
</value>
<value>
<value>INaCa</value>
<value>:/Cell/Membrane:INaCa</value>
</value>
<value>
<value>INaCa</value>
<value>:/Cell/Membrane:INaCa</value>
</value>
<value>
<value>INaK</value>
<value>:/Cell/Membrane:INaK</value>
</value>
<value>
<value>INaK</value>
<value>:/Cell/Membrane:INaK</value>
</value>
<value>
<value>INaK</value>
<value>:/Cell/Membrane:INaK</value>
</value>
<value>
<value>INab</value>
<value>:/Cell/Membrane:INab</value>
</value>
<value>
<value>IfNa</value>
<value>:/Cell/Membrane:IfNa</value>
</value>
<value>
<value>Nass</value>
<value>:/Cell/Cytosol/ss:Na</value>
<value>1</value>
</value>
</property>
<property name="k">
<value>-1.0</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dICaLd_dt">
<property name="Name">
<value>dICaLd_dt in component L_type_Ca_channel_d_L_gate (dimensionless)</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Membrane:ICaLdinf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Membrane:ICaLdtau</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Membrane:ICaLd</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dICaLf1_dt">
<property name="Name">
<value>dICaLf1_dt in component L_type_Ca_channel_f_L1_gate (dimensionless)</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_tau</value>
<value>:/Cell/Membrane:ICaLf1tau</value>
</value>
<value>
<value>g_inf</value>
<value>:/Cell/Membrane:ICaLfinf</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Membrane:ICaLf1</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dICaLf2_dt">
<property name="Name">
<value>dICaLf2_dt in component L_type_Ca_channel_f_L2_gate (dimensionless)</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_tau</value>
<value>:/Cell/Membrane:ICaLf2tau</value>
</value>
<value>
<value>g_inf</value>
<value>:/Cell/Membrane:ICaLfinf</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Membrane:ICaLf2</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dICaLfca_dt">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Membrane:ICaLfcainf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Membrane:ICaLfcatau</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Membrane:ICaLfca</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dIKrpa_dt">
<property name="Name">
<value>dIKrpa_dt in component delayed_rectifier_K_currents_pa_gate (dimensionless)</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Membrane:IKrpainf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Membrane:IKrpatau</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Membrane:IKrpa</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dIKsn_dt">
<property name="Name">
<value>dIKsn_dt in component delayed_rectifier_K_currents_n_gate (dimensionless)</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Membrane:IKsninf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Membrane:IKsntau</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Membrane:IKsn</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dINah1_dt">
<property name="Name">
<value>dINah1_dt in component sodium_current_h1_gate (dimensionless)</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_tau</value>
<value>:/Cell/Membrane:INah1tau</value>
</value>
<value>
<value>g_inf</value>
<value>:/Cell/Membrane:INahinf</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Membrane:INah1</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dINah2_dt">
<property name="Name">
<value>dINah2_dt in component sodium_current_h2_gate (dimensionless)</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_tau</value>
<value>:/Cell/Membrane:INah2tau</value>
</value>
<value>
<value>g_inf</value>
<value>:/Cell/Membrane:INahinf</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Membrane:INah2</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dINam_dt">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Membrane:INaminf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Membrane:INamtau</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Membrane:INam</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dIfy_dt">
<property name="Name">
<value>dIfy_dt (sec^-1)</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Membrane:Ifyinf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Membrane:Ifytau</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Membrane:Ify</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dIsusr_dt">
<property name="Name">
<value>dIsusr_dt in component sustained_outward_K_current_r_sus_gate (dimensionless)</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Membrane:Isusrinf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Membrane:Isusrtau</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Membrane:Isusr</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dIsuss_dt">
<property name="Name">
<value>dIsuss_dt in component sustained_outward_K_current_s_sus_gate (dimensionless)</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Membrane:Isussinf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Membrane:Isusstau</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Membrane:Isuss</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dItr_dt">
<property name="Name">
<value>dItr_dt in component Ca_independent_transient_outward_K_current_r_gate (dimensionless)</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Membrane:Itrinf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Membrane:Itrtau</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Membrane:Itr</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dIts_dt">
<property name="Name">
<value>dIts_dt in component Ca_independent_transient_outward_K_current_s_gate (dimensionless)</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Membrane:Itsinf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Membrane:Itstau</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Membrane:Its</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_VFluxProcess" id="dV_dt">
<property name="Cm">
<value>0.05</value>
</property>
<property name="Name">
<value>d/dt V in component membrane (millivolt)</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>ICaL</value>
<value>:/Cell/Membrane:ICaL</value>
</value>
<value>
<value>ICaP</value>
<value>:/Cell/Membrane:ICaP</value>
</value>
<value>
<value>ICab</value>
<value>:/Cell/Membrane:ICab</value>
</value>
<value>
<value>IK1</value>
<value>:/Cell/Membrane:IK1</value>
</value>
<value>
<value>IKr</value>
<value>:/Cell/Membrane:IKr</value>
</value>
<value>
<value>IKs</value>
<value>:/Cell/Membrane:IKs</value>
</value>
<value>
<value>INa</value>
<value>:/Cell/Membrane:INa</value>
</value>
<value>
<value>INaCa</value>
<value>:/Cell/Membrane:INaCa</value>
</value>
<value>
<value>INaK</value>
<value>:/Cell/Membrane:INaK</value>
</value>
<value>
<value>INab</value>
<value>:/Cell/Membrane:INab</value>
</value>
<value>
<value>If</value>
<value>:/Cell/Membrane:If</value>
</value>
<value>
<value>Isus</value>
<value>:/Cell/Membrane:Isus</value>
</value>
<value>
<value>It</value>
<value>:/Cell/Membrane:It</value>
</value>
<value>
<value>ist</value>
<value>:/Cell/Membrane:ist</value>
</value>
<value>
<value>V</value>
<value>:/Cell/Membrane:V</value>
<value>1</value>
</value>
</property>
</process>
<process class="Koivumaki_2011_IstAssignmentProcess" id="ist">
<property name="BCL">
<value>1.0</value>
</property>
<property name="Name">
<value>ist in component membrane (picoA)</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>t</value>
<value>:/:t</value>
</value>
<value>
<value>ist</value>
<value>:/Cell/Membrane:ist</value>
<value>1</value>
</value>
</property>
<property name="stim_amp">
<value>-2820.0</value>
</property>
<property name="stim_duration">
<value>0.001</value>
</property>
<property name="stim_offset">
<value>0.01</value>
</property>
<property name="stim_steepness">
<value>20.0</value>
</property>
</process>
<property name="Name">
<value>Cell membrane</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
</system>
<system class="System" id="/Cell/SR_1">
<variable class="Variable" id="Ca">
<property name="DiffusionCoeff">
<value>2.6867852031e+154</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>56430655.6208</value>
</property>
</variable>
<variable class="Variable" id="Ca_buffer">
<property name="DiffusionCoeff">
<value>9.73469813097e-309</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Name">
<value>Variable to hold Velocity of Ca buffering</value>
</property>
<property name="Value">
<value>0.0</value>
</property>
</variable>
<variable class="Variable" id="SIZE">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>1.13907014154e-14</value>
</property>
</variable>
<process class="Koivumaki_2011_BufferFluxProcess" id="Ca_buffer">
<property name="B">
<value>6.7</value>
</property>
<property name="KdB">
<value>0.8</value>
</property>
<property name="Name">
<value>Ca buffering</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>ion</value>
<value>:/Cell/SR_1:Ca</value>
<value>-1</value>
</value>
<value>
<value>buffer</value>
<value>:/Cell/SR_1:Ca_buffer</value>
<value>1</value>
</value>
</property>
</process>
<process class="Koivumaki_2011_CaSRDiffusionFluxProcess" id="Ca_diff">
<property name="DCa">
<value>44.0</value>
</property>
<property name="Name">
<value>Ca buffering</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>Ca_down</value>
<value>:/Cell/SR_1:Ca</value>
</value>
<value>
<value>Ca_up</value>
<value>:/Cell/SR_2:Ca</value>
</value>
<value>
<value>Ca</value>
<value>:/Cell/SR_1:Ca</value>
<value>1</value>
</value>
</property>
<property name="dx">
<value>1.625</value>
</property>
<property name="j">
<value>1.0</value>
</property>
</process>
<property name="Name">
<value>SR 1</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
</system>
<system class="System" id="/Cell/SR_2">
<variable class="Variable" id="Ca">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>169451869.027</value>
</property>
</variable>
<variable class="Variable" id="Ca_buffer">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Name">
<value>Variable to hold Velocity of Ca buffering</value>
</property>
<property name="Value">
<value>0.0</value>
</property>
</variable>
<variable class="Variable" id="SIZE">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>3.41721042462e-14</value>
</property>
</variable>
<process class="Koivumaki_2011_BufferFluxProcess" id="Ca_buffer">
<property name="B">
<value>6.7</value>
</property>
<property name="KdB">
<value>0.8</value>
</property>
<property name="Name">
<value>Ca buffering</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>ion</value>
<value>:/Cell/SR_2:Ca</value>
<value>-1</value>
</value>
<value>
<value>buffer</value>
<value>:/Cell/SR_2:Ca_buffer</value>
<value>1</value>
</value>
</property>
</process>
<process class="Koivumaki_2011_CaSRDiffusionFluxProcess" id="Ca_diff">
<property name="DCa">
<value>44.0</value>
</property>
<property name="Name">
<value>Ca buffering</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>Ca_down</value>
<value>:/Cell/SR_1:Ca</value>
</value>
<value>
<value>Ca_up</value>
<value>:/Cell/SR_3:Ca</value>
</value>
<value>
<value>Ca</value>
<value>:/Cell/SR_2:Ca</value>
<value>1</value>
</value>
</property>
<property name="dx">
<value>1.625</value>
</property>
<property name="j">
<value>2.0</value>
</property>
</process>
<property name="Name">
<value>SR 2</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
</system>
<system class="System" id="/Cell/SR_3">
<variable class="Variable" id="Ca">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>283199482.038</value>
</property>
</variable>
<variable class="Variable" id="Ca_buffer">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Name">
<value>Variable to hold Velocity of Ca buffering</value>
</property>
<property name="Value">
<value>0.0</value>
</property>
</variable>
<variable class="Variable" id="SIZE">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>5.69535070771e-14</value>
</property>
</variable>
<process class="Koivumaki_2011_BufferFluxProcess" id="Ca_buffer">
<property name="B">
<value>6.7</value>
</property>
<property name="KdB">
<value>0.8</value>
</property>
<property name="Name">
<value>Ca buffering</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>ion</value>
<value>:/Cell/SR_3:Ca</value>
<value>-1</value>
</value>
<value>
<value>buffer</value>
<value>:/Cell/SR_3:Ca_buffer</value>
<value>1</value>
</value>
</property>
</process>
<process class="Koivumaki_2011_CaSRDiffusionFluxProcess" id="Ca_diff">
<property name="DCa">
<value>44.0</value>
</property>
<property name="Name">
<value>Ca buffering</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>Ca_down</value>
<value>:/Cell/SR_2:Ca</value>
</value>
<value>
<value>Ca_up</value>
<value>:/Cell/SR_4:Ca</value>
</value>
<value>
<value>Ca</value>
<value>:/Cell/SR_3:Ca</value>
<value>1</value>
</value>
</property>
<property name="dx">
<value>1.625</value>
</property>
<property name="j">
<value>3.0</value>
</property>
</process>
<property name="Name">
<value>SR 3</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
</system>
<system class="System" id="/Cell/SR_4">
<variable class="Variable" id="Ca">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>399080496.548</value>
</property>
</variable>
<variable class="Variable" id="Ca_buffer">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Name">
<value>Variable to hold Velocity of Ca buffering</value>
</property>
<property name="Value">
<value>0.0</value>
</property>
</variable>
<variable class="Variable" id="SIZE">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>7.97349099079e-14</value>
</property>
</variable>
<process class="Koivumaki_2011_BufferFluxProcess" id="Ca_buffer">
<property name="B">
<value>6.7</value>
</property>
<property name="KdB">
<value>0.8</value>
</property>
<property name="Name">
<value>Ca buffering</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>ion</value>
<value>:/Cell/SR_4:Ca</value>
<value>-1</value>
</value>
<value>
<value>buffer</value>
<value>:/Cell/SR_4:Ca_buffer</value>
<value>1</value>
</value>
</property>
</process>
<process class="Koivumaki_2011_CaSRDiffusionFluxProcess" id="Ca_diff">
<property name="DCa">
<value>44.0</value>
</property>
<property name="Name">
<value>Ca buffering</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>Ca_down</value>
<value>:/Cell/SR_3:Ca</value>
</value>
<value>
<value>Ca_up</value>
<value>:/Cell/SR_4:Ca</value>
</value>
<value>
<value>Ca</value>
<value>:/Cell/SR_4:Ca</value>
<value>1</value>
</value>
</property>
<property name="dx">
<value>1.625</value>
</property>
<property name="j">
<value>4.0</value>
</property>
</process>
<property name="Name">
<value>SR 4</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
</system>
<system class="System" id="/Cell/Cytosol/bulk">
<variable class="Variable" id="Na_i">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>Na_i in component intracellular_ion_concentrations (molar)</value>
</property>
<property name="Value">
<value>45580167841.2</value>
</property>
</variable>
<variable class="Variable" id="SIZE">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>8.14997753985e-12</value>
</property>
</variable>
<process class="Koivumaki_2011_DiffusionJNjFluxProcess" id="JNa_assign">
<property name="Aj_nj">
<value>2492.32441226</value>
</property>
<property name="D">
<value>0.12</value>
</property>
<property name="Name">
<value>Na diffusion from junct to non-junct</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>j</value>
<value>:/Cell/Cytosol/ss:Na</value>
</value>
<value>
<value>nj</value>
<value>:/Cell/Cytosol/bulk:Na_i</value>
</value>
</property>
<property name="xj_nj">
<value>3.26</value>
</property>
</process>
<property name="Name">
<value>Cell</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
</system>
<system class="System" id="/Cell/Cytosol/bulk_1">
<variable class="Variable" id="Ca">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>750767.9636</value>
</property>
</variable>
<variable class="Variable" id="Ca_buffer">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Name">
<value>Variable to hold Velocity of Ca buffering</value>
</property>
<property name="Value">
<value>0.0</value>
</property>
</variable>
<variable class="Variable" id="JSRCaleak">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>2.49806189628e-05</value>
</property>
</variable>
<variable class="Variable" id="J_SERCASR">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>pmol/sec</value>
</property>
<property name="Value">
<value>1.32240835606e-05</value>
</property>
</variable>
<variable class="Variable" id="J_bulkSERCA">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>pmol/sec</value>
</property>
<property name="Value">
<value>1.30956913104e-05</value>
</property>
</variable>
<variable class="Variable" id="Jrel">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>pmol/sec</value>
</property>
<property name="Value">
<value>8.36058386003e-88</value>
</property>
</variable>
<variable class="Variable" id="RyRa">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>0.504999999994</value>
</property>
</variable>
<variable class="Variable" id="RyRainf">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>0.504999999999</value>
</property>
</variable>
<variable class="Variable" id="RyRc">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>2.00809688643e-85</value>
</property>
</variable>
<variable class="Variable" id="RyRcinf">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>7.1244548125e-85</value>
</property>
</variable>
<variable class="Variable" id="RyRo">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>1.0</value>
</property>
</variable>
<variable class="Variable" id="RyRoinf">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>1.0</value>
</property>
</variable>
<variable class="Variable" id="RyRtauact">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Value">
<value>0.01875</value>
</property>
</variable>
<variable class="Variable" id="RyRtauadapt">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Value">
<value>1.0</value>
</property>
</variable>
<variable class="Variable" id="RyRtauinact">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Value">
<value>0.0875</value>
</property>
</variable>
<variable class="Variable" id="SERCACa">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>8944186.35077</value>
</property>
</variable>
<variable class="Variable" id="SIZE">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>5.06253396241e-13</value>
</property>
</variable>
<process class="Koivumaki_2011_BufferFluxProcess" id="Ca_buffer">
<property name="B">
<value>0.024</value>
</property>
<property name="KdB">
<value>0.00238</value>
</property>
<property name="Name">
<value>Ca buffering</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>ion</value>
<value>:/Cell/Cytosol/bulk_1:Ca</value>
<value>-1</value>
</value>
<value>
<value>buffer</value>
<value>:/Cell/Cytosol/bulk_1:Ca_buffer</value>
<value>1</value>
</value>
</property>
</process>
<process class="Koivumaki_2011_CaBulkDiffusionFluxProcess" id="Ca_diff">
<property name="BCa">
<value>0.024</value>
</property>
<property name="DCa">
<value>780.0</value>
</property>
<property name="DCaBm">
<value>25.0</value>
</property>
<property name="KdBCa">
<value>0.00238</value>
</property>
<property name="Name">
<value>Sodium buffering</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>Ca_down</value>
<value>:/Cell/Cytosol/bulk_1:Ca</value>
</value>
<value>
<value>Ca_up</value>
<value>:/Cell/Cytosol/bulk_2:Ca</value>
</value>
<value>
<value>Ca</value>
<value>:/Cell/Cytosol/bulk_1:Ca</value>
<value>1</value>
</value>
</property>
<property name="dx">
<value>1.625</value>
</property>
<property name="j">
<value>1.0</value>
</property>
</process>
<process class="ZeroVariableAsFluxProcess" id="JSRCaleak">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>CaSR</value>
<value>:/Cell/SR_1:Ca</value>
<value>-1</value>
</value>
<value>
<value>JSRCaleak</value>
<value>:/Cell/Cytosol/bulk_1:JSRCaleak</value>
</value>
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/bulk_1:Ca</value>
<value>1</value>
</value>
</property>
<property name="k">
<value>6.02214076e+11</value>
</property>
</process>
<process class="Koivumaki_2011_JSRCaleakAssignmentProcess" id="JSRCaleak_assign">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>CaSR</value>
<value>:/Cell/SR_1:Ca</value>
</value>
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/bulk_1:Ca</value>
</value>
<value>
<value>JSRCaleak</value>
<value>:/Cell/Cytosol/bulk_1:JSRCaleak</value>
<value>1</value>
</value>
</property>
<property name="kSRleak">
<value>0.006</value>
</property>
</process>
<process class="Koivumaki_2011_J_SERCAAssignmentProcess" id="J_SERCA">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>CaSR</value>
<value>:/Cell/SR_1:Ca</value>
</value>
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/bulk_1:Ca</value>
</value>
<value>
<value>SERCACa</value>
<value>:/Cell/Cytosol/bulk_1:SERCACa</value>
</value>
<value>
<value>J_SERCASR</value>
<value>:/Cell/Cytosol/bulk_1:J_SERCASR</value>
<value>1</value>
</value>
<value>
<value>J_bulkSERCA</value>
<value>:/Cell/Cytosol/bulk_1:J_bulkSERCA</value>
<value>1</value>
</value>
</property>
<property name="cpumps">
<value>0.03</value>
</property>
<property name="k1">
<value>13000000.0</value>
</property>
<property name="k2">
<value>1.339533</value>
</property>
<property name="k3">
<value>8.21451770671</value>
</property>
<property name="k4">
<value>13.0</value>
</property>
</process>
<process class="ZeroVariableAsFluxProcess" id="J_SERCASR">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>SERCACa</value>
<value>:/Cell/Cytosol/bulk_1:SERCACa</value>
<value>-1</value>
</value>
<value>
<value>J_SERCASR</value>
<value>:/Cell/Cytosol/bulk_1:J_SERCASR</value>
</value>
<value>
<value>CaSR</value>
<value>:/Cell/SR_1:Ca</value>
<value>2</value>
</value>
</property>
<property name="k">
<value>3.01107038e+11</value>
</property>
</process>
<process class="ZeroVariableAsFluxProcess" id="J_bulkSERCA">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/bulk_1:Ca</value>
<value>-2</value>
</value>
<value>
<value>J_bulkSERCA</value>
<value>:/Cell/Cytosol/bulk_1:J_bulkSERCA</value>
</value>
<value>
<value>SERCACa</value>
<value>:/Cell/Cytosol/bulk_1:SERCACa</value>
<value>1</value>
</value>
</property>
<property name="k">
<value>3.01107038e+11</value>
</property>
</process>
<process class="ZeroVariableAsFluxProcess" id="Jrel">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>CaSR</value>
<value>:/Cell/SR_1:Ca</value>
<value>-1</value>
</value>
<value>
<value>Jrel</value>
<value>:/Cell/Cytosol/bulk_1:Jrel</value>
</value>
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/bulk_1:Ca</value>
<value>1</value>
</value>
</property>
<property name="k">
<value>6.02214076e+11</value>
</property>
</process>
<process class="Koivumaki_2011_JrelAssignmentProcess" id="Jrel_assign">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>CaSR</value>
<value>:/Cell/SR_1:Ca</value>
</value>
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/bulk_1:Ca</value>
</value>
<value>
<value>RyRa</value>
<value>:/Cell/Cytosol/bulk_1:RyRa</value>
</value>
<value>
<value>RyRc</value>
<value>:/Cell/Cytosol/bulk_1:RyRc</value>
</value>
<value>
<value>RyRo</value>
<value>:/Cell/Cytosol/bulk_1:RyRo</value>
</value>
<value>
<value>Jrel</value>
<value>:/Cell/Cytosol/bulk_1:Jrel</value>
<value>1</value>
</value>
<value>
<value>RyRainf</value>
<value>:/Cell/Cytosol/bulk_1:RyRainf</value>
<value>1</value>
</value>
<value>
<value>RyRcinf</value>
<value>:/Cell/Cytosol/bulk_1:RyRcinf</value>
<value>1</value>
</value>
<value>
<value>RyRoinf</value>
<value>:/Cell/Cytosol/bulk_1:RyRoinf</value>
<value>1</value>
</value>
</property>
<property name="k_Ca">
<value>1.0</value>
</property>
<property name="k_nu">
<value>1.0</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dRyRa_dt">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Cytosol/bulk_1:RyRainf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Cytosol/bulk_1:RyRtauadapt</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Cytosol/bulk_1:RyRa</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dRyRc_dt">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Cytosol/bulk_1:RyRcinf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Cytosol/bulk_1:RyRtauinact</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Cytosol/bulk_1:RyRc</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dRyRo_dt">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Cytosol/bulk_1:RyRoinf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Cytosol/bulk_1:RyRtauact</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Cytosol/bulk_1:RyRo</value>
<value>1</value>
</value>
</property>
</process>
<property name="Name">
<value>Cytosol bulk_1</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
</system>
<system class="System" id="/Cell/Cytosol/bulk_2">
<variable class="Variable" id="Ca">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>2205519.30508</value>
</property>
</variable>
<variable class="Variable" id="Ca_buffer">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Name">
<value>Variable to hold Velocity of Ca buffering</value>
</property>
<property name="Value">
<value>0.0</value>
</property>
</variable>
<variable class="Variable" id="JSRCaleak">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>7.50131294066e-05</value>
</property>
</variable>
<variable class="Variable" id="J_SERCASR">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>pmol/sec</value>
</property>
<property name="Value">
<value>3.36727733001e-05</value>
</property>
</variable>
<variable class="Variable" id="J_bulkSERCA">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>pmol/sec</value>
</property>
<property name="Value">
<value>3.32887109115e-05</value>
</property>
</variable>
<variable class="Variable" id="Jrel">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>pmol/sec</value>
</property>
<property name="Value">
<value>4.22869593355e-85</value>
</property>
</variable>
<variable class="Variable" id="RyRa">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>0.504999999994</value>
</property>
</variable>
<variable class="Variable" id="RyRainf">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>0.504999999998</value>
</property>
</variable>
<variable class="Variable" id="RyRc">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>3.3823646343e-83</value>
</property>
</variable>
<variable class="Variable" id="RyRcinf">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>1.18646952195e-82</value>
</property>
</variable>
<variable class="Variable" id="RyRo">
<property name="DiffusionCoeff">
<value>2.52428926361e+276</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>1.0</value>
</property>
</variable>
<variable class="Variable" id="RyRoinf">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>1.0</value>
</property>
</variable>
<variable class="Variable" id="RyRtauact">
<property name="DiffusionCoeff">
<value>2.52428926361e+276</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Value">
<value>0.01875</value>
</property>
</variable>
<variable class="Variable" id="RyRtauadapt">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Value">
<value>1.0</value>
</property>
</variable>
<variable class="Variable" id="RyRtauinact">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Value">
<value>0.0875</value>
</property>
</variable>
<variable class="Variable" id="SERCACa">
<property name="DiffusionCoeff">
<value>9.29776681664e+25</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>26830506.6599</value>
</property>
</variable>
<variable class="Variable" id="SIZE">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>1.51876018872e-12</value>
</property>
</variable>
<process class="Koivumaki_2011_BufferFluxProcess" id="Ca_buffer">
<property name="B">
<value>0.024</value>
</property>
<property name="KdB">
<value>0.00238</value>
</property>
<property name="Name">
<value>Ca buffering</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>ion</value>
<value>:/Cell/Cytosol/bulk_2:Ca</value>
<value>-1</value>
</value>
<value>
<value>buffer</value>
<value>:/Cell/Cytosol/bulk_2:Ca_buffer</value>
<value>1</value>
</value>
</property>
</process>
<process class="Koivumaki_2011_CaBulkDiffusionFluxProcess" id="Ca_diff">
<property name="BCa">
<value>0.024</value>
</property>
<property name="DCa">
<value>780.0</value>
</property>
<property name="DCaBm">
<value>25.0</value>
</property>
<property name="KdBCa">
<value>0.00238</value>
</property>
<property name="Name">
<value>Sodium buffering</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>Ca_down</value>
<value>:/Cell/Cytosol/bulk_1:Ca</value>
</value>
<value>
<value>Ca_up</value>
<value>:/Cell/Cytosol/bulk_3:Ca</value>
</value>
<value>
<value>Ca</value>
<value>:/Cell/Cytosol/bulk_2:Ca</value>
<value>1</value>
</value>
</property>
<property name="dx">
<value>1.625</value>
</property>
<property name="j">
<value>2.0</value>
</property>
</process>
<process class="ZeroVariableAsFluxProcess" id="JSRCaleak">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>CaSR</value>
<value>:/Cell/SR_2:Ca</value>
<value>-1</value>
</value>
<value>
<value>JSRCaleak</value>
<value>:/Cell/Cytosol/bulk_2:JSRCaleak</value>
</value>
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/bulk_2:Ca</value>
<value>1</value>
</value>
</property>
<property name="k">
<value>6.02214076e+11</value>
</property>
</process>
<process class="Koivumaki_2011_JSRCaleakAssignmentProcess" id="JSRCaleak_assign">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>CaSR</value>
<value>:/Cell/SR_2:Ca</value>
</value>
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/bulk_2:Ca</value>
</value>
<value>
<value>JSRCaleak</value>
<value>:/Cell/Cytosol/bulk_2:JSRCaleak</value>
<value>1</value>
</value>
</property>
<property name="kSRleak">
<value>0.006</value>
</property>
</process>
<process class="Koivumaki_2011_J_SERCAAssignmentProcess" id="J_SERCA">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>CaSR</value>
<value>:/Cell/SR_2:Ca</value>
</value>
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/bulk_2:Ca</value>
</value>
<value>
<value>SERCACa</value>
<value>:/Cell/Cytosol/bulk_2:SERCACa</value>
</value>
<value>
<value>J_SERCASR</value>
<value>:/Cell/Cytosol/bulk_2:J_SERCASR</value>
<value>1</value>
</value>
<value>
<value>J_bulkSERCA</value>
<value>:/Cell/Cytosol/bulk_2:J_bulkSERCA</value>
<value>1</value>
</value>
</property>
<property name="cpumps">
<value>0.03</value>
</property>
<property name="k1">
<value>13000000.0</value>
</property>
<property name="k2">
<value>1.339533</value>
</property>
<property name="k3">
<value>8.21451770671</value>
</property>
<property name="k4">
<value>13.0</value>
</property>
</process>
<process class="ZeroVariableAsFluxProcess" id="J_SERCASR">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>SERCACa</value>
<value>:/Cell/Cytosol/bulk_2:SERCACa</value>
<value>-1</value>
</value>
<value>
<value>J_SERCASR</value>
<value>:/Cell/Cytosol/bulk_2:J_SERCASR</value>
</value>
<value>
<value>CaSR</value>
<value>:/Cell/SR_2:Ca</value>
<value>2</value>
</value>
</property>
<property name="k">
<value>3.01107038e+11</value>
</property>
</process>
<process class="ZeroVariableAsFluxProcess" id="J_bulkSERCA">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/bulk_2:Ca</value>
<value>-2</value>
</value>
<value>
<value>J_bulkSERCA</value>
<value>:/Cell/Cytosol/bulk_2:J_bulkSERCA</value>
</value>
<value>
<value>SERCACa</value>
<value>:/Cell/Cytosol/bulk_2:SERCACa</value>
<value>1</value>
</value>
</property>
<property name="k">
<value>3.01107038e+11</value>
</property>
</process>
<process class="ZeroVariableAsFluxProcess" id="Jrel">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>CaSR</value>
<value>:/Cell/SR_2:Ca</value>
<value>-1</value>
</value>
<value>
<value>Jrel</value>
<value>:/Cell/Cytosol/bulk_2:Jrel</value>
</value>
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/bulk_2:Ca</value>
<value>1</value>
</value>
</property>
<property name="k">
<value>6.02214076e+11</value>
</property>
</process>
<process class="Koivumaki_2011_JrelAssignmentProcess" id="Jrel_assign">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>CaSR</value>
<value>:/Cell/SR_2:Ca</value>
</value>
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/bulk_2:Ca</value>
</value>
<value>
<value>RyRa</value>
<value>:/Cell/Cytosol/bulk_2:RyRa</value>
</value>
<value>
<value>RyRc</value>
<value>:/Cell/Cytosol/bulk_2:RyRc</value>
</value>
<value>
<value>RyRo</value>
<value>:/Cell/Cytosol/bulk_2:RyRo</value>
</value>
<value>
<value>Jrel</value>
<value>:/Cell/Cytosol/bulk_2:Jrel</value>
<value>1</value>
</value>
<value>
<value>RyRainf</value>
<value>:/Cell/Cytosol/bulk_2:RyRainf</value>
<value>1</value>
</value>
<value>
<value>RyRcinf</value>
<value>:/Cell/Cytosol/bulk_2:RyRcinf</value>
<value>1</value>
</value>
<value>
<value>RyRoinf</value>
<value>:/Cell/Cytosol/bulk_2:RyRoinf</value>
<value>1</value>
</value>
</property>
<property name="k_Ca">
<value>1.0</value>
</property>
<property name="k_nu">
<value>1.0</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dRyRa_dt">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Cytosol/bulk_2:RyRainf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Cytosol/bulk_2:RyRtauadapt</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Cytosol/bulk_2:RyRa</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dRyRc_dt">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Cytosol/bulk_2:RyRcinf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Cytosol/bulk_2:RyRtauinact</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Cytosol/bulk_2:RyRc</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dRyRo_dt">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Cytosol/bulk_2:RyRoinf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Cytosol/bulk_2:RyRtauact</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Cytosol/bulk_2:RyRo</value>
<value>1</value>
</value>
</property>
</process>
<property name="Name">
<value>Cytosol bulk_2</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
</system>
<system class="System" id="/Cell/Cytosol/bulk_3">
<variable class="Variable" id="Ca">
<property name="DiffusionCoeff">
<value>3.37899116746e+160</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>3520591.55319</value>
</property>
</variable>
<variable class="Variable" id="Ca_buffer">
<property name="DiffusionCoeff">
<value>3.37899116746e+160</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Name">
<value>Variable to hold Velocity of Ca buffering</value>
</property>
<property name="Value">
<value>0.0</value>
</property>
</variable>
<variable class="Variable" id="JSRCaleak">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>0.000125368689036</value>
</property>
</variable>
<variable class="Variable" id="J_SERCASR">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>pmol/sec</value>
</property>
<property name="Value">
<value>3.62507443824e-05</value>
</property>
</variable>
<variable class="Variable" id="J_bulkSERCA">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>pmol/sec</value>
</property>
<property name="Value">
<value>3.561385635e-05</value>
</property>
</variable>
<variable class="Variable" id="Jrel">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>pmol/sec</value>
</property>
<property name="Value">
<value>1.9153246403e-80</value>
</property>
</variable>
<variable class="Variable" id="RyRa">
<property name="DiffusionCoeff">
<value>2.52429137679e+276</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>0.504999999994</value>
</property>
</variable>
<variable class="Variable" id="RyRainf">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>0.504999999991</value>
</property>
</variable>
<variable class="Variable" id="RyRc">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>9.16652150565e-79</value>
</property>
</variable>
<variable class="Variable" id="RyRcinf">
<property name="DiffusionCoeff">
<value>2.52429137679e+276</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>3.14807572339e-78</value>
</property>
</variable>
<variable class="Variable" id="RyRo">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>1.0</value>
</property>
</variable>
<variable class="Variable" id="RyRoinf">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>1.0</value>
</property>
</variable>
<variable class="Variable" id="RyRtauact">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Value">
<value>0.01875</value>
</property>
</variable>
<variable class="Variable" id="RyRtauadapt">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Value">
<value>1.0</value>
</property>
</variable>
<variable class="Variable" id="RyRtauinact">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Value">
<value>0.0875</value>
</property>
</variable>
<variable class="Variable" id="SERCACa">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>44712516.1913</value>
</property>
</variable>
<variable class="Variable" id="SIZE">
<property name="DiffusionCoeff">
<value>4.4224685446e+15</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>2.5312669812e-12</value>
</property>
</variable>
<process class="Koivumaki_2011_BufferFluxProcess" id="Ca_buffer">
<property name="B">
<value>0.024</value>
</property>
<property name="KdB">
<value>0.00238</value>
</property>
<property name="Name">
<value>Ca buffering</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>ion</value>
<value>:/Cell/Cytosol/bulk_3:Ca</value>
<value>-1</value>
</value>
<value>
<value>buffer</value>
<value>:/Cell/Cytosol/bulk_3:Ca_buffer</value>
<value>1</value>
</value>
</property>
</process>
<process class="Koivumaki_2011_CaBulkDiffusionFluxProcess" id="Ca_diff">
<property name="BCa">
<value>0.024</value>
</property>
<property name="DCa">
<value>780.0</value>
</property>
<property name="DCaBm">
<value>25.0</value>
</property>
<property name="KdBCa">
<value>0.00238</value>
</property>
<property name="Name">
<value>Sodium buffering</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>Ca_down</value>
<value>:/Cell/Cytosol/bulk_2:Ca</value>
</value>
<value>
<value>Ca_up</value>
<value>:/Cell/Cytosol/bulk_4:Ca</value>
</value>
<value>
<value>Ca</value>
<value>:/Cell/Cytosol/bulk_3:Ca</value>
<value>1</value>
</value>
</property>
<property name="dx">
<value>1.625</value>
</property>
<property name="j">
<value>3.0</value>
</property>
</process>
<process class="ZeroVariableAsFluxProcess" id="JSRCaleak">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>CaSR</value>
<value>:/Cell/SR_3:Ca</value>
<value>-1</value>
</value>
<value>
<value>JSRCaleak</value>
<value>:/Cell/Cytosol/bulk_3:JSRCaleak</value>
</value>
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/bulk_3:Ca</value>
<value>1</value>
</value>
</property>
<property name="k">
<value>6.02214076e+11</value>
</property>
</process>
<process class="Koivumaki_2011_JSRCaleakAssignmentProcess" id="JSRCaleak_assign">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>CaSR</value>
<value>:/Cell/SR_3:Ca</value>
</value>
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/bulk_3:Ca</value>
</value>
<value>
<value>JSRCaleak</value>
<value>:/Cell/Cytosol/bulk_3:JSRCaleak</value>
<value>1</value>
</value>
</property>
<property name="kSRleak">
<value>0.006</value>
</property>
</process>
<process class="Koivumaki_2011_J_SERCAAssignmentProcess" id="J_SERCA">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>CaSR</value>
<value>:/Cell/SR_3:Ca</value>
</value>
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/bulk_3:Ca</value>
</value>
<value>
<value>SERCACa</value>
<value>:/Cell/Cytosol/bulk_3:SERCACa</value>
</value>
<value>
<value>J_SERCASR</value>
<value>:/Cell/Cytosol/bulk_3:J_SERCASR</value>
<value>1</value>
</value>
<value>
<value>J_bulkSERCA</value>
<value>:/Cell/Cytosol/bulk_3:J_bulkSERCA</value>
<value>1</value>
</value>
</property>
<property name="cpumps">
<value>0.03</value>
</property>
<property name="k1">
<value>13000000.0</value>
</property>
<property name="k2">
<value>1.339533</value>
</property>
<property name="k3">
<value>8.21451770671</value>
</property>
<property name="k4">
<value>13.0</value>
</property>
</process>
<process class="ZeroVariableAsFluxProcess" id="J_SERCASR">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>SERCACa</value>
<value>:/Cell/Cytosol/bulk_3:SERCACa</value>
<value>-1</value>
</value>
<value>
<value>J_SERCASR</value>
<value>:/Cell/Cytosol/bulk_3:J_SERCASR</value>
</value>
<value>
<value>CaSR</value>
<value>:/Cell/SR_3:Ca</value>
<value>2</value>
</value>
</property>
<property name="k">
<value>3.01107038e+11</value>
</property>
</process>
<process class="ZeroVariableAsFluxProcess" id="J_bulkSERCA">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/bulk_3:Ca</value>
<value>-2</value>
</value>
<value>
<value>J_bulkSERCA</value>
<value>:/Cell/Cytosol/bulk_3:J_bulkSERCA</value>
</value>
<value>
<value>SERCACa</value>
<value>:/Cell/Cytosol/bulk_3:SERCACa</value>
<value>1</value>
</value>
</property>
<property name="k">
<value>3.01107038e+11</value>
</property>
</process>
<process class="ZeroVariableAsFluxProcess" id="Jrel">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>CaSR</value>
<value>:/Cell/SR_3:Ca</value>
<value>-1</value>
</value>
<value>
<value>Jrel</value>
<value>:/Cell/Cytosol/bulk_3:Jrel</value>
</value>
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/bulk_3:Ca</value>
<value>1</value>
</value>
</property>
<property name="k">
<value>6.02214076e+11</value>
</property>
</process>
<process class="Koivumaki_2011_JrelAssignmentProcess" id="Jrel_assign">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>CaSR</value>
<value>:/Cell/SR_3:Ca</value>
</value>
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/bulk_3:Ca</value>
</value>
<value>
<value>RyRa</value>
<value>:/Cell/Cytosol/bulk_3:RyRa</value>
</value>
<value>
<value>RyRc</value>
<value>:/Cell/Cytosol/bulk_3:RyRc</value>
</value>
<value>
<value>RyRo</value>
<value>:/Cell/Cytosol/bulk_3:RyRo</value>
</value>
<value>
<value>Jrel</value>
<value>:/Cell/Cytosol/bulk_3:Jrel</value>
<value>1</value>
</value>
<value>
<value>RyRainf</value>
<value>:/Cell/Cytosol/bulk_3:RyRainf</value>
<value>1</value>
</value>
<value>
<value>RyRcinf</value>
<value>:/Cell/Cytosol/bulk_3:RyRcinf</value>
<value>1</value>
</value>
<value>
<value>RyRoinf</value>
<value>:/Cell/Cytosol/bulk_3:RyRoinf</value>
<value>1</value>
</value>
</property>
<property name="k_Ca">
<value>1.0</value>
</property>
<property name="k_nu">
<value>1.0</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dRyRa_dt">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Cytosol/bulk_3:RyRainf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Cytosol/bulk_3:RyRtauadapt</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Cytosol/bulk_3:RyRa</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dRyRc_dt">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Cytosol/bulk_3:RyRcinf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Cytosol/bulk_3:RyRtauinact</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Cytosol/bulk_3:RyRc</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dRyRo_dt">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Cytosol/bulk_3:RyRoinf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Cytosol/bulk_3:RyRtauact</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Cytosol/bulk_3:RyRo</value>
<value>1</value>
</value>
</property>
</process>
<property name="Name">
<value>Cytosol bulk_3</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
</system>
<system class="System" id="/Cell/Cytosol/bulk_4">
<variable class="Variable" id="Ca">
<property name="DiffusionCoeff">
<value>-3.1050361846e+231</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>4566514.25434</value>
</property>
</variable>
<variable class="Variable" id="Ca_buffer">
<property name="DiffusionCoeff">
<value>3.37899384902e+160</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Name">
<value>Variable to hold Velocity of Ca buffering</value>
</property>
<property name="Value">
<value>0.0</value>
</property>
</variable>
<variable class="Variable" id="SIZE">
<property name="DiffusionCoeff">
<value>2.28743039188e-314</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>3.54377377368e-12</value>
</property>
</variable>
<process class="Koivumaki_2011_BufferFluxProcess" id="Ca_buffer">
<property name="B">
<value>0.024</value>
</property>
<property name="KdB">
<value>0.00238</value>
</property>
<property name="Name">
<value>Ca buffering</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>ion</value>
<value>:/Cell/Cytosol/bulk_4:Ca</value>
<value>-1</value>
</value>
<value>
<value>buffer</value>
<value>:/Cell/Cytosol/bulk_4:Ca_buffer</value>
<value>1</value>
</value>
</property>
</process>
<process class="Koivumaki_2011_CaBulkDiffusionFluxProcess" id="Ca_diff">
<property name="BCa">
<value>0.024</value>
</property>
<property name="DCa">
<value>780.0</value>
</property>
<property name="DCaBm">
<value>25.0</value>
</property>
<property name="KdBCa">
<value>0.00238</value>
</property>
<property name="Name">
<value>Sodium buffering</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>Ca_down</value>
<value>:/Cell/Cytosol/bulk_3:Ca</value>
</value>
<value>
<value>Ca_up</value>
<value>:/Cell/Cytosol/bulk_4:Ca</value>
</value>
<value>
<value>Ca</value>
<value>:/Cell/Cytosol/bulk_4:Ca</value>
<value>1</value>
</value>
</property>
<property name="dx">
<value>1.625</value>
</property>
<property name="j">
<value>4.0</value>
</property>
</process>
<property name="Name">
<value>Cytosol bulk_4</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
</system>
<system class="System" id="/Cell/Cytosol/ss">
<variable class="Variable" id="Ca">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>62137.2221673</value>
</property>
</variable>
<variable class="Variable" id="Ca_buffer">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Name">
<value>Variable to hold Velocity of Ca buffering</value>
</property>
<property name="Value">
<value>0.0</value>
</property>
</variable>
<variable class="Variable" id="JSRCaleak">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>2.48889765825e-06</value>
</property>
</variable>
<variable class="Variable" id="J_SERCASR">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>pmol/sec</value>
</property>
<property name="Value">
<value>-1.67985765181e-07</value>
</property>
</variable>
<variable class="Variable" id="J_bulkSERCA">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>pmol/sec</value>
</property>
<property name="Value">
<value>-1.80505023477e-07</value>
</property>
</variable>
<variable class="Variable" id="Jrel">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>pmol/sec</value>
</property>
<property name="Value">
<value>2.07776003198e-68</value>
</property>
</variable>
<variable class="Variable" id="Na">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Name">
<value>Nass in component cleft_space_ion_concentrations (molar)</value>
</property>
<property name="Value">
<value>601730539.28</value>
</property>
</variable>
<variable class="Variable" id="Na_buffer">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Name">
<value>Variable to hold Velocity of Na buffering</value>
</property>
<property name="Value">
<value>0.0</value>
</property>
</variable>
<variable class="Variable" id="RyRa">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>0.504999999955</value>
</property>
</variable>
<variable class="Variable" id="RyRainf">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>0.504999999834</value>
</property>
</variable>
<variable class="Variable" id="RyRc">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>8.01418902899e-68</value>
</property>
</variable>
<variable class="Variable" id="RyRcinf">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>1.09749629621e-67</value>
</property>
</variable>
<variable class="Variable" id="RyRo">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>1.0</value>
</property>
</variable>
<variable class="Variable" id="RyRoinf">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>1.0</value>
</property>
</variable>
<variable class="Variable" id="RyRtauact">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Value">
<value>0.005</value>
</property>
</variable>
<variable class="Variable" id="RyRtauadapt">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Value">
<value>1.0</value>
</property>
</variable>
<variable class="Variable" id="RyRtauinact">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>1</value>
</property>
<property name="Value">
<value>0.015</value>
</property>
</variable>
<variable class="Variable" id="SERCACa">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>881644.755976</value>
</property>
</variable>
<variable class="Variable" id="SIZE">
<property name="DiffusionCoeff">
<value>0.0</value>
</property>
<property name="Fixed">
<value>0</value>
</property>
<property name="Value">
<value>4.99232e-14</value>
</property>
</variable>
<process class="Koivumaki_2011_CassBufferFluxProcess" id="Ca_buffer">
<property name="BCa">
<value>0.024</value>
</property>
<property name="KdBCa">
<value>0.00238</value>
</property>
<property name="KdSLhigh">
<value>0.013</value>
</property>
<property name="KdSLlow">
<value>1.1</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="SLhigh">
<value>13.0</value>
</property>
<property name="SLlow">
<value>165.0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>Cass</value>
<value>:/Cell/Cytosol/ss:Ca</value>
<value>-1</value>
</value>
<value>
<value>buffer</value>
<value>:/Cell/Cytosol/ss:Ca_buffer</value>
<value>1</value>
</value>
</property>
</process>
<process class="ZeroVariableAsFluxProcess" id="JSRCaleak">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>CaSR</value>
<value>:/Cell/SR_4:Ca</value>
<value>-1</value>
</value>
<value>
<value>JSRCaleak</value>
<value>:/Cell/Cytosol/ss:JSRCaleak</value>
</value>
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/ss:Ca</value>
<value>1</value>
</value>
</property>
<property name="k">
<value>6.02214076e+11</value>
</property>
</process>
<process class="Koivumaki_2011_JSRCaleakAssignmentProcess" id="JSRCaleak_assign">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>CaSR</value>
<value>:/Cell/SR_4:Ca</value>
</value>
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/ss:Ca</value>
</value>
<value>
<value>JSRCaleak</value>
<value>:/Cell/Cytosol/ss:JSRCaleak</value>
<value>1</value>
</value>
</property>
<property name="kSRleak">
<value>0.006</value>
</property>
</process>
<process class="Koivumaki_2011_J_SERCAAssignmentProcess" id="J_SERCA">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>CaSR</value>
<value>:/Cell/SR_4:Ca</value>
</value>
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/ss:Ca</value>
</value>
<value>
<value>SERCACa</value>
<value>:/Cell/Cytosol/ss:SERCACa</value>
</value>
<value>
<value>J_SERCASR</value>
<value>:/Cell/Cytosol/ss:J_SERCASR</value>
<value>1</value>
</value>
<value>
<value>J_bulkSERCA</value>
<value>:/Cell/Cytosol/ss:J_bulkSERCA</value>
<value>1</value>
</value>
</property>
<property name="cpumps">
<value>0.03</value>
</property>
<property name="k1">
<value>13000000.0</value>
</property>
<property name="k2">
<value>1.339533</value>
</property>
<property name="k3">
<value>8.21451770671</value>
</property>
<property name="k4">
<value>13.0</value>
</property>
</process>
<process class="ZeroVariableAsFluxProcess" id="J_SERCASR">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>SERCACa</value>
<value>:/Cell/Cytosol/ss:SERCACa</value>
<value>-1</value>
</value>
<value>
<value>J_SERCASR</value>
<value>:/Cell/Cytosol/ss:J_SERCASR</value>
</value>
<value>
<value>CaSR</value>
<value>:/Cell/SR_4:Ca</value>
<value>2</value>
</value>
</property>
<property name="k">
<value>3.01107038e+11</value>
</property>
</process>
<process class="ZeroVariableAsFluxProcess" id="J_bulkSERCA">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/ss:Ca</value>
<value>-2</value>
</value>
<value>
<value>J_bulkSERCA</value>
<value>:/Cell/Cytosol/ss:J_bulkSERCA</value>
</value>
<value>
<value>SERCACa</value>
<value>:/Cell/Cytosol/ss:SERCACa</value>
<value>1</value>
</value>
</property>
<property name="k">
<value>3.01107038e+11</value>
</property>
</process>
<process class="Koivumaki_2011_DiffusionJNjFluxProcess" id="Jj_nj">
<property name="Aj_nj">
<value>2492.32441226</value>
</property>
<property name="D">
<value>780.0</value>
</property>
<property name="Name">
<value>Ca diffusion from junct to non-junct</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>j</value>
<value>:/Cell/Cytosol/ss:Ca</value>
<value>-1</value>
</value>
<value>
<value>nj</value>
<value>:/Cell/Cytosol/bulk_4:Ca</value>
<value>1</value>
</value>
</property>
<property name="xj_nj">
<value>0.8225</value>
</property>
</process>
<process class="ZeroVariableAsFluxProcess" id="Jrel">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>CaSR</value>
<value>:/Cell/SR_4:Ca</value>
<value>-1</value>
</value>
<value>
<value>Jrel</value>
<value>:/Cell/Cytosol/ss:Jrel</value>
</value>
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/ss:Ca</value>
<value>1</value>
</value>
</property>
<property name="k">
<value>6.02214076e+11</value>
</property>
</process>
<process class="Koivumaki_2011_JrelAssignmentProcess" id="Jrel_assign">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>PSV</value>
</property>
<property name="VariableReferenceList">
<value>
<value>CaSR</value>
<value>:/Cell/SR_4:Ca</value>
</value>
<value>
<value>Cai</value>
<value>:/Cell/Cytosol/ss:Ca</value>
</value>
<value>
<value>RyRa</value>
<value>:/Cell/Cytosol/ss:RyRa</value>
</value>
<value>
<value>RyRc</value>
<value>:/Cell/Cytosol/ss:RyRc</value>
</value>
<value>
<value>RyRo</value>
<value>:/Cell/Cytosol/ss:RyRo</value>
</value>
<value>
<value>Jrel</value>
<value>:/Cell/Cytosol/ss:Jrel</value>
<value>1</value>
</value>
<value>
<value>RyRainf</value>
<value>:/Cell/Cytosol/ss:RyRainf</value>
<value>1</value>
</value>
<value>
<value>RyRcinf</value>
<value>:/Cell/Cytosol/ss:RyRcinf</value>
<value>1</value>
</value>
<value>
<value>RyRoinf</value>
<value>:/Cell/Cytosol/ss:RyRoinf</value>
<value>1</value>
</value>
</property>
<property name="k_Ca">
<value>1.0</value>
</property>
<property name="k_nu">
<value>625.0</value>
</property>
</process>
<process class="Koivumaki_2011_BufferFluxProcess" id="Na_buffer">
<property name="B">
<value>1.1319</value>
</property>
<property name="KdB">
<value>10.0</value>
</property>
<property name="Name">
<value>Sodium buffering</value>
</property>
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>ion</value>
<value>:/Cell/Cytosol/ss:Na</value>
<value>-1</value>
</value>
<value>
<value>buffer</value>
<value>:/Cell/Cytosol/ss:Na_buffer</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dRyRa_dt">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Cytosol/ss:RyRainf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Cytosol/ss:RyRtauadapt</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Cytosol/ss:RyRa</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dRyRc_dt">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Cytosol/ss:RyRcinf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Cytosol/ss:RyRtauinact</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Cytosol/ss:RyRc</value>
<value>1</value>
</value>
</property>
</process>
<process class="Nygren_1998_GatingFluxProcess" id="dRyRo_dt">
<property name="Priority">
<value>0</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
<property name="VariableReferenceList">
<value>
<value>g_inf</value>
<value>:/Cell/Cytosol/ss:RyRoinf</value>
</value>
<value>
<value>g_tau</value>
<value>:/Cell/Cytosol/ss:RyRtauact</value>
</value>
<value>
<value>gate</value>
<value>:/Cell/Cytosol/ss:RyRo</value>
<value>1</value>
</value>
</property>
</process>
<property name="Name">
<value>Cytosol ss</value>
</property>
<property name="StepperID">
<value>Default</value>
</property>
</system>
</eml>
