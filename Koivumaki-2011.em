@{
from math import pi

N_A = 6.02214076e+23

R  = 8314.0  # R in component membrane (millijoule_per_mole_kelvin) = hAM_KKT.ode
T  = 306.15  # T in component membrane (kelvin) = hAM_KKT.ode
F  = 96487   # F in component membrane (coulomb_per_mole) = hAM_KKT.ode

Nao = 130
Cao = 1.8
Ko = 5.4

Cm = 0.05 #nF

stim_duration = 6.0e-3 # sec
stim_amp = -280.0      # pA
BCL = 1.0              # sec
stim_steepness = 5.0
stim_offset = 1.0e-3   # sec

# Geometry
Vss    = 4.99232e-5  # volume of the subspace (nanolitre) (Table 1)
rjunct = 6.5         # radius of the bulk cytosol (micrometer) (Table 1)
lcell  = 122.051     # length of the cell (micrometer) (Table 1)

# Ca diffusion grid
dx = 1.625  # width of bulk cytosol compartment (micrometer) (Table 1)

'''
Area between junct and nonjunct (Text S1, Eqn. 16)(micrometer**2) '''
Aj_nj = pi * rjunct * 2 * lcell * 0.5
'''
diffusion distance from center to center of junct to first njunct
(Text S1, Eqn. 17)(micrometer) '''
xj_nj = 0.02/2 + dx/2
'''
diffusion distance from center of junct to center of njunct
(between 2nd and 3rd njunct)(micrometer) '''
xj_nj_Nai = 0.02/2 + 2*dx

# Diffusion compartment volumes (uses j^2-(j-1)^2 = 2*j - 1) (Text S1, Eqn. 42)
# (nL)
Vnonjunct1 = pi * lcell * 1e-6 * 0.5 * dx * dx
Vnonjunct2 = 3 * Vnonjunct1
Vnonjunct3 = 5 * Vnonjunct1
Vnonjunct4 = 7 * Vnonjunct1

Vnonjunct = [ 0, Vnonjunct1, Vnonjunct2, Vnonjunct3, Vnonjunct4]

Vcytosol = 16 * Vnonjunct1 + Vss

VSR1 = 0.05*Vnonjunct1/2*0.9  # Accessible volume of SR compartment (Text S1, Eqn. 42)
VSR2 = 0.05*Vnonjunct2/2*0.9
VSR3 = 0.05*Vnonjunct3/2*0.9
VSR4 = 0.05*Vnonjunct4/2*0.9

VSR = [ 0, VSR1, VSR2, VSR3, VSR4]

Vnonjunct_Nai = 16 * Vnonjunct1


# Cytosol Ca Buffers
BCa = 24e-3
SLlow = 165
SLhigh = 13

KdBCa = 2.38e-3
KdSLlow = 1.1
KdSLhigh = 13e-3

# SR Ca buffers
CSQN =  6.7
KdCSQN = 0.8

# Sarcolemmal Na burrering
# Area relation to Grandi et al. model 6.5**2 * pi() * 122 / (10.25**2 * pi() * 100) = 0.49
# Bmax = 7.651*0.11 + 1.65*0.89 = 2.31
BNa = 0.49 * 2.31
KdBNa = 10

# Ion channel conductances & permeabilities & other parameters

PNa = 0.0018  # INa:P_Na

ECa_app = 60    # ICaL:ECa_app
gCaL = 25.3125  # ICaL:ECa_app
kCan = 2
kCa = 1e-3      # ICaL:k_Ca


#gt = 7.5
gt = 1.09*7.5      # It:g_t     Increased by ~9# in Maleckar et al.
#gsus = 2.75
gsus = 0.89*2.75   # Isus:g_sus Decreased by ~11# in Maleckar et al.
gKs = 1            # IKs:g_Ks
gKr = 0.5          # IKr:g_Kr
#gK1 = 3.825
gK1 = 3.825 * 0.90 # IK1:g_K1   3 in Nygren et al. 9 in Courtemanche et al.
gNab = 0.060599    # INab:g_B_Na
gCab = 0.0952      # ICab:g_B_Ca

INaKmax = 70.8253  # INaK:i_NaK_max
kNaKK = 1          # INaK:k_NaK_K
kNaKNa = 11        # INaK:k_NaK_Na

ICaPmax = 2.0      # ICaP:i_CaP_max
kCaP = 0.0005      # ICaP:k_CaP

kNaCa = 0.0084     # INaCa:k_NaCa
gam = 0.45         # INaCa:gamma
dNaCa = 0.0003     # INaCa:d_NaCa

gIf = 1            # If:gIf

# Ca and Na diffusion
DCa = 780.0  # diffusion coefficient for Ca2+ (micrometer**2/sec)
DCaSR = 44.0 # diffusion coefficient for Ca2+ in SR (micrometer**2/sec)
DCaBm = 25.0 # diffusion coefficient for Ca2+-buffer complex (micrometer**2/sec)

#DNa = 0.17 # Despa et al. (2002) 0.12 um2/s, Shannon et al. (2004)
#1.79E-5 cm2/s = 1790 um2/s, Grandi et al. (2009) 1.2722E-6 cm2/s = 127um/s
DNa = 0.12

# SERCA parameters
SERCAKmf = 0.25e-3  # SERCA half-maximal binding in cytosol (mM, Table S1)
SERCAKmr = 1.8  # SERCA half-maximal binding in SR (mM, Table S1)
k4 = 7.5  # pump rate (sec^-1, Table S1)

k3 = k4 / SERCAKmr**2
k1 = 1000**2 * k4
k2 = k1 * SERCAKmf**2

cpumps = 40e-3 # pump concentration in cytosol volume (mM, Table S1)

# SR Ca leak
kSRleak = 6e-3

# RyR
k_nu = 1.0
k_nuss = 625.0

RyRtauadapt = 1

RyRtauactss = 5e-3
RyRtauinactss = 15e-3

RyRtauact = 18.75e-3
RyRtauinact = 87.5e-3

### status
V_0 = -75.319410
INam_0 = 0.002779
INah1_0 = 0.903910
INah2_0 = 0.903967
ICaLd_0 = 0.000011
ICaLf1_0 = 0.998857
ICaLf2_0 = 0.998862
ICaLfca_0 = 0.974437
Itr_0 = 0.000959
Its_0 = 0.954338
Isusr_0 = 0.000311
Isuss_0 = 0.975109
IKsn_0 = 0.004110
IKrpa_0 = 0.000042
Ify_0 = 0.056207
Nai_0 = 9.286860
Ki_0 = 134.631300
Nass_0 = 8.691502
Cass_0 = 0.000162
RyRoss_0 = 0.000040
RyRcss_0 = 0.999972
RyRass_0 = 0.245530
RyRo_0 = [ 0.000040, 0.000095, 0.000078, 0.000057 ]
RyRc_0 = [ 0.999972, 0.999372, 0.999509, 0.999560 ]
RyRa_0 = [ 0.245530, 0.192536, 0.201034, 0.216312 ]
SERCACa_0 = [ 0.004250, 0.004639, 0.004512, 0.004326, 0.004250 ]
SERCACass_0 = 0.004250
Cai_0 = [ 0, 0.000135, 0.000138, 0.000144, 0.000156 ]
CaSR_0 = [ 0, 0.618922, 0.607629, 0.590527, 0.573811 ]

}


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
    MolarConc    @(Nao * 1.0e-3);
    Fixed  1;
  }

  Variable Variable( Ko )
  {
    MolarConc    @(Ko * 1.0e-3);
    Fixed  1;
  }

  Variable Variable( Cao )
  {
    MolarConc    @(Cao * 1.0e-3);
    Fixed  1;
  }

  Process Nygren_1998voiFluxProcess(t)
  {
    Name "time in component environment (second)";

    VariableReferenceList
      [t :.:t  1];
  }
}

System System( /Cell )
{
  StepperID    Default;
  Name "Cell";

  Variable Variable( SIZE )
  {
    Value    @((Vcytosol + VSR1 + VSR2 + VSR3 + VSR4)*1.0E-9);
  }
}

@include('./Koivumaki-2011_Cell_Membrane.em')

System System( /Cell/Cytosol )
{
  StepperID    Default;
  Name "Cell";

  Variable Variable( SIZE )
  {
    Value    @(Vcytosol * 1.0e-9);
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
    Value  @(Vss * 1.0e-9);
  }

  Variable Variable(Na_ss)
  {
    Name "Na_c in component cleft_space_ion_concentrations (molar)";
    MolarConc  @(Nass_0 * 1e-3);
  }

  Variable Variable(Ca_ss)
  {
    Name "Ca_c in component cleft_space_ion_concentrations (molar)";
    MolarConc  @(Cass_0 * 1e-3);
  }

  Process Koivumaki_2011_BufferFluxProcess(Na_buffer)
  {
    Name "Sodium buffering";

    @{'''
    beta = 1.0 / ( 1.0 + B * KdB / pow(( ion.MolarConc * 1000 + KdB ), 2 ) )
    '''}

    B    @BNa;
    KdB  @KdBNa;

    VariableReferenceList
      [ion :../ss:Na_ss -1];
  }

  Process Koivumaki_2011_CassBufferFluxProcess(Ca_buffer)
  {
    @{'''
    # Ca buffers
    betass = ( 1 + SLlow*KdSLlow/(Cass + KdSLlow)**2 + SLhigh*KdSLhigh/(Cass + KdSLhigh)**2 + BCa*KdBCa/(Cass + KdBCa)**2  )**(-1)
    dCass_dt = (1-betass) * ( JCass/Vss + (-ICaL - ICab - ICaP + 2*INaCa) / (2*Vss*F) )
    '''}

    F  @F;
    SLlow  @SLlow;
    KdSLlow  @KdSLlow;
    SLhigh  @SLhigh;
    KdSLhigh  @KdSLhigh;
    BCa  @BCa;
    KdBCa  @KdBCa;

    VariableReferenceList
      [Cass   :.:Ca_ss -1];
  }

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
      [j  :.:Ca_ss      -1]; # Cass
  }

} # END of /Cell/Cytosol/ss

System System( /Cell/Cytosol/bulk; )
{
  StepperID    Default;
  Name "Cell";

  Variable Variable( SIZE )
  {
    Value    @((Vnonjunct1 + Vnonjunct2 + Vnonjunct3 + Vnonjunct4) * 1.0e-9);
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
    @{'''
    #  Diffusion from junct to non-junct    (pmol/sec)
    JNa = DNa * Aj_nj / xj_nj_Nai * (Nass - Nai)* 1e-3
    '''}

    D  @DNa;
    Aj_nj  @Aj_nj;
    xj_nj  @xj_nj_Nai;

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

    k @(N_A * 1e-12);  # pmol/sec -> NoM/sec
  }

} # END of /Cell/Cytosol/bulk

# /Cell/Cytoplasm/bulk_x
@{x = 1}
@[while x <= 4]
@include('./Koivumaki-2011_Cell_Cytoplasm_bulk_x.em')
@{x += 1}
@[end while]

# /Cell/SR_x
@{x = 1}
@[while x <= 4]
@include('./Koivumaki-2011_Cell_SR_x.em')
@{x += 1}
@[end while]
