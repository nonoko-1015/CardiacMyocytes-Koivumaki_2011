@{
# Debug flags
DEBUG_WITHOUT_MEMBRANE_PROCESSES = 0
DEBUG_WITHOUT_BULK_PROCESSES = 0
DEBUG_WITHOUT_SR_PROCESSES = 0

DEBUG_WITHOUT_INa   = 0
DEBUG_WITHOUT_ICaL  = 0
DEBUG_WITHOUT_It    = 0
DEBUG_WITHOUT_Isus  = 0
DEBUG_WITHOUT_IKs   = 0
DEBUG_WITHOUT_IKr   = 0
DEBUG_WITHOUT_If    = 0
DEBUG_WITHOUT_ICab  = 0
DEBUG_WITHOUT_J_mem = 0

from math import exp, log, sqrt, pi

N_A = 6.02214076e+23

R  = 8314.0  # R in component membrane (millijoule_per_mole_kelvin)
T  = 306.15  # T in component membrane (kelvin), 33 C
#T = 310.15  # T in component membrane (kelvin), 37 C
#T = 298.15  # T in component membrane (kelvin), 25 C
F  = 96487.0 # F in component membrane (coulomb_per_mole)

# Temperature dependencies
"""
q10exp = (T - 310.15)/10;
q10ICaL = 2.6;
q10Ito = 3.0;
q10Isus = 2.2;
q10SERCA = 2;
q10DCaNa = 1.18;
q10DCaBmSR = 1.425;
q10RyR = 1.5;
q10NaK = 1.63; q10KmNai = 1.49;
q10CaP = 2.35;
q10NaCa = 1.57;
"""

Nao = 130
Cao = 1.8
Ko = 5.4

Cm = 0.05 #nF

stim_duration = 1.0e-3 # sec
stim_amp = -2820.0      # pA
BCL = 1.0              # sec
stim_steepness = 20.0
stim_offset = 1.0e-2   # sec

#**********************************************
# Model variant
#**********************************************

MODEL = 'nSR'

""" Regex for dy_human_atrial.m
case\ '(.+?)'[\w\W]+?cAF_lcell\ \=\ (.+?);\ cAF_gCaL\ \=\ (.+?);\ cAF_gt\ \=\ (.+?);\ cAF_gsus\ \=\ (.+?);\ cAF_gK1\ \=\ (.+?);\ cAF_kNaCa\ \=\ (.+?);\ cAF_cpumps\ \=\ (.+?);\ cAF_PLB\ \=\ (.+?);\ cAF_SLN\ \=\ (.+?);\ cAF_phos\ \=\ (.+?);\ cAF_RyR\ \=\ (.+?);

  $1 = dict( cAF_lcell = $2, cAF_gCaL = $3, cAF_gt = $4, cAF_gsus = $5, cAF_gK1 = $6, cAF_kNaCa = $7, cAF_cpumps = $8, cAF_PLB = $9, cAF_SLN = $10, cAF_phos = $11, cAF_RyR = $12 )
"""

model_variants = dict(
  cAF_all = dict( lcell = 1.10, gCaL = 0.41, gt = 0.38, gsus = 0.62, gK1 = 1.62, kNaCa = 1.50, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = 2 ),
  cAF_currents = dict( lcell = 1, gCaL = 0.41, gt = 0.38, gsus = 0.62, gK1 = 1.62, kNaCa = 1, cpumps = 1, PLB = 1, SLN = 1, phos = 1, RyR = 1 ),
  cAF_dilation = dict( lcell = 1.10, gCaL = 1, gt = 1, gsus = 1, gK1 = 1, kNaCa = 1, cpumps = 1, PLB = 1, SLN = 1, phos = 1, RyR = 1 ),
  cAF_ICaL = dict( lcell = 1, gCaL = 0.41, gt = 1, gsus = 1, gK1 = 1, kNaCa = 1, cpumps = 1, PLB = 1, SLN = 1, phos = 1, RyR = 1 ),
  cAF_IK1 = dict( lcell = 1, gCaL = 1, gt = 1, gsus = 1, gK1 = 1.62, kNaCa = 1, cpumps = 1, PLB = 1, SLN = 1, phos = 1, RyR = 1 ),
  cAF_Isus = dict( lcell = 1, gCaL = 1, gt = 1, gsus = 0.62, gK1 = 1, kNaCa = 1, cpumps = 1, PLB = 1, SLN = 1, phos = 1, RyR = 1 ),
  cAF_Ito = dict( lcell = 1, gCaL = 1, gt = 0.38, gsus = 1, gK1 = 1, kNaCa = 1, cpumps = 1, PLB = 1, SLN = 1, phos = 1, RyR = 1 ),
  cAF_NCX = dict( lcell = 1, gCaL = 1, gt = 1, gsus = 1, gK1 = 1, kNaCa = 1.50, cpumps = 1, PLB = 1, SLN = 1, phos = 1, RyR = 1 ),

  cAF_no_currents = dict( lcell = 1.10, gCaL = 1, gt = 1, gsus = 1, gK1 = 1, kNaCa = 1.50, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = 2 ),
  cAF_no_dilation = dict( lcell = 1, gCaL = 0.41, gt = 0.38, gsus = 0.62, gK1 = 1.62, kNaCa = 1.50, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = 2 ),
  cAF_no_ICaL = dict( lcell = 1.10, gCaL = 1, gt = 0.38, gsus = 0.62, gK1 = 1.62, kNaCa = 1.50, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = 2 ),
  cAF_no_IK1 = dict( lcell = 1.10, gCaL = 0.41, gt = 0.38, gsus = 0.62, gK1 = 1, kNaCa = 1.50, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = 2 ),
  cAF_no_Isus = dict( lcell = 1.10, gCaL = 0.41, gt = 0.38, gsus = 1, gK1 = 1.62, kNaCa = 1.50, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = 2 ),
  cAF_no_Ito = dict( lcell = 1.10, gCaL = 0.41, gt = 1, gsus = 0.62, gK1 = 1.62, kNaCa = 1.50, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = 2 ),
  cAF_no_K_currents = dict( lcell = 1.10, gCaL = 0.41, gt = 1, gsus = 1, gK1 = 1, kNaCa = 1.50, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = 2 ),
  cAF_no_NCX = dict( lcell = 1.10, gCaL = 0.41, gt = 0.38, gsus = 0.62, gK1 = 1.62, kNaCa = 1, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = 2 ),
  cAF_no_RyR = dict( lcell = 1.10, gCaL = 0.41, gt = 0.38, gsus = 0.62, gK1 = 1.62, kNaCa = 1.50, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = 1 ),
  cAF_no_SERCA = dict( lcell = 1.10, gCaL = 0.41, gt = 0.38, gsus = 0.62, gK1 = 1.62, kNaCa = 1.50, cpumps = 1, PLB = 1, SLN = 1, phos = 1, RyR = 2 ),

  cAF_RyR = dict( lcell = 1, gCaL = 1, gt = 1, gsus = 1, gK1 = 1, kNaCa = 1, cpumps = 1, PLB = 1, SLN = 1, phos = 1, RyR = 2 ),
  cAF_SERCA = dict( lcell = 1, gCaL = 1, gt = 1, gsus = 1, gK1 = 1, kNaCa = 1, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = 1 ),
  nSR = dict( lcell = 1, gCaL = 1, gt = 1, gsus = 1, gK1 = 1, kNaCa = 1, cpumps = 1, PLB = 1, SLN = 1, phos = 1, RyR = 1 ),

  pharmac_4AP = dict( lcell = 1, gCaL = 1, gt = 1, gsus = 0.50, gK1 = 1, kNaCa = 1, cpumps = 1, PLB = 1, SLN = 1, phos = 1, RyR = 1 ),
  pharmac_Nif = dict( lcell = 1, gCaL = 0.25, gt = 1, gsus = 1, gK1 = 1, kNaCa = 1, cpumps = 1, PLB = 1, SLN = 1, phos = 1, RyR = 1 ),
  pharmac_Nif_and_4AP = dict( lcell = 1, gCaL = 0.25, gt = 1, gsus = 0.50, gK1 = 1, kNaCa = 1, cpumps = 1, PLB = 1, SLN = 1, phos = 1, RyR = 1 ),

  Restored_ICaL_and_Ito = dict( lcell = 1.10, gCaL = (1 + 0.41)/2, gt = 1, gsus = 0.62, gK1 = 1.62, kNaCa = 1.50, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = 2 ),
  Restored_IK1 = dict( lcell = 1.10, gCaL = 0.41, gt = 0.38, gsus = 0.62, gK1 = (1 + 1.62)/2, kNaCa = 1.50, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = 2 ),
  Restored_IK1_and_RyR = dict( lcell = 1.10, gCaL = 0.41, gt = 0.38, gsus = 0.62, gK1 = (1 + 1.62)/2, kNaCa = 1.50, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = 1 ),
  Restored_NCX_and_ICaL = dict( lcell = 1.10, gCaL = (1 + 0.41)/2, gt = 0.38, gsus = 0.62, gK1 = 1.62, kNaCa = (1 + 1.50)/2, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = 2 ),
  Restored_NCX_and_IK1 = dict( lcell = 1.10, gCaL = 0.41, gt = 0.38, gsus = 0.62, gK1 = (1 + 1.62)/2, kNaCa = (1 + 1.50)/2, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = 2 ),
  Restored_NCX_ICaL_and_IK1 = dict( lcell = 1.10, gCaL = (1 + 0.41)/2, gt = 0.38, gsus = 0.62, gK1 = (1 + 1.62)/2, kNaCa = (1 + 1.50)/2, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = 2 ),
  Restored_NCX_ICaL_Ito_and_IK1 = dict( lcell = 1.10, gCaL = (1 + 0.41)/2, gt = (1 + 0.38)/2, gsus = 0.62, gK1 = (1 + 1.62)/2, kNaCa = (1 + 1.50)/2, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = 2 ),
  Restored_NCX_ICaL_RyR_and_IK1 = dict( lcell = 1.10, gCaL = (1 + 0.41)/2, gt = 0.38, gsus = 0.62, gK1 = (1 + 1.62)/2, kNaCa = (1 + 1.50)/2, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = (1 + 2)/2 ),
  Restored_NCX_ICaL_RyR_Ito_and_IK1 = dict( lcell = 1.10, gCaL = (1 + 0.41)/2, gt = (1 + 0.38)/2, gsus = 0.62, gK1 = (1 + 1.62)/2, kNaCa = (1 + 1.50)/2, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = (1 + 2)/2 ),

  Restored_NCX50_RyR50_and_IK150 = dict( lcell = 1.10, gCaL = 0.41, gt = 0.38, gsus = 0.62, gK1 = (1 + 1.62)/2, kNaCa = (1 + 1.50)/2, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = (1 + 2)/2 ),
  Restored_NCX75_RyR75_and_IK175 = dict( lcell = 1.10, gCaL = 0.41, gt = 0.38, gsus = 0.62, gK1 = (3*1 + 1.62)/4, kNaCa = (3*1 + 1.50)/4, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = (3*1 + 2)/4 ),
  Restored_NCX100_RyR100_and_IK1100 = dict( lcell = 1.10, gCaL = 0.41, gt = 0.38, gsus = 0.62, gK1 = 1, kNaCa = 1, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = 1 ),

  Restored_NCX75_RyR50_and_IK150 = dict( lcell = 1.10, gCaL = 0.41, gt = 0.38, gsus = 0.62, gK1 = (1 + 1.62)/2, kNaCa = (3*1 + 1.50)/4, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = (1 + 2)/2 ),
  Restored_NCX100_RyR50_and_IK150 = dict( lcell = 1.10, gCaL = 0.41, gt = 0.38, gsus = 0.62, gK1 = (1 + 1.62)/2, kNaCa = 1, cpumps = 0.84, PLB = 1.18, SLN = 0.60, phos = 2, RyR = (1 + 2)/2 )
)

cAF = model_variants[ MODEL ]

# Cell dilation in cAF
Ddcell = (cAF['lcell'] - 1.) * (20./10.) + 1.
Dvcell = cAF['lcell'] * Ddcell**2

# Geometry
Vss    = 4.99232e-5 * Dvcell  # volume of the subspace (nanolitre)
rjunct = 6.5 * Ddcell         # radius of the bulk cytosol (micrometer)
lcell  = 122.051 * cAF['lcell']  # length of the cell (micrometer)

# Ca diffusion grid
dx = 1.625 * Ddcell  # width of bulk cytosol compartment (micrometer) (Table 1)

'''
Area between junct and nonjunct (Text S1, Eqn. 16)(micrometer**2) '''
Aj_nj = pi * rjunct * 2 * lcell * 0.5
'''
diffusion distance from center to center of junct to first njunct
(Text S1, Eqn. 17)(micrometer) '''
xj_nj = 0.02/2 * Ddcell + dx/2
'''
diffusion distance from center of junct to center of njunct
(between 2nd and 3rd njunct)(micrometer) '''
xj_nj_Nai = 0.02/2 * Ddcell + 2*dx

# Diffusion compartment volumes (uses j^2-(j-1)^2 = 2*j - 1) (Text S1, Eqn. 42)
# (nL)
Vnonjunct1 = pi * lcell * 1e-6 * 0.5 * dx * dx
Vnonjunct2 = 3 * Vnonjunct1
Vnonjunct3 = 5 * Vnonjunct1
Vnonjunct4 = 7 * Vnonjunct1

Vcytosol = [ Vss, Vnonjunct1, Vnonjunct2, Vnonjunct3, Vnonjunct4]

# Vcytosol = 16 * Vnonjunct1 + Vss

VSR1 = 0.05*Vnonjunct1/2*0.9 / Dvcell  # Accessible volume of SR compartment (Text S1, Eqn. 42)
VSR2 = 0.05*Vnonjunct2/2*0.9 / Dvcell
VSR3 = 0.05*Vnonjunct3/2*0.9 / Dvcell
VSR4 = 0.05*Vnonjunct4/2*0.9 / Dvcell

VSR = [ 0.0, VSR1, VSR2, VSR3, VSR4]

# Vnonjunct_Nai = 16 * Vnonjunct1
Vnonjunct_Nai = sum( Vcytosol[1:] )


# Cytosol Ca Buffers
Begta = 0.
#Begta = 5.  #  5 mM EGTA for voltage clamp measurements
#Begta = 10. # 10 mM EGTA
Bcmdn = 24e-3;
BCa = Bcmdn + Begta;
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

ECa_app = 60              # ICaL:ECa_app
gCaL = 15. * cAF['gCaL']  # ICaL:ECa_app  10. * cAF_gCaL, 9. * cAF_gCaL
kCan = 2
kCa = 0.6e-3              # ICaL:k_Ca     0.65e-3,        0.72e-3
h_ICaLf1 = 0.
#            k1     k2      k3           k4    k5      k6   k7            k8  k9
# ICaLfinf = 0.00 + 1.00 / (1 + exp((V + 27.4)/7.1)) + 0 / (1 + exp(-(V - 0.)/1.0e10))
# ICaLfinf = 0.04 + 0.96 / (1 + exp((V + 25.5)/8.4)) + 1 / (1 + exp(-(V - 60)/8.0)) # cAF
k_ICaLfinf1 = 0.04
k_ICaLfinf2 = 0.96
k_ICaLfinf4 = 25.5
k_ICaLfinf5 = 8.4
k_ICaLfinf6 = 1.
k_ICaLfinf8 = 60.
k_ICaLfinf9 = 8.
#            k1                 k2  k3   k4    k5
# ICaLdtau = 0.0027 * exp( -((V+35)/30)**2 ) + 0.002
# ICaLdtau = 0.00065* exp( -((V+35)/30)**2 ) + 0.0005
k_ICaLdtau1 = 0.00065
k_ICaLdtau5 = 0.0005
#             k1               k2  k3     k4    k5
# ICaLf2tau = 1.3323*exp( -((V+40)/14.2)**2 ) + 0.0626
# ICaLf2tau = 1.34  *exp( -((V+40)/14.2)**2 ) + 0.04  # cAF
k_ICaLf2tau1 = 1.34
k_ICaLf2tau5 = 0.04

K_factor = 1.
gt = K_factor * 8.25 * cAF['gt']      # It:g_t     Increased by ~9# in Maleckar et al.
gsus = K_factor * 2.25 * cAF['gsus']  # Isus:g_sus Decreased by ~11# in Maleckar et al.
gKs = 1            # IKs:g_Ks
gKr  = 0.5 * sqrt( Ko/5.4 ) # IKr:g_Kr
#%gKr = 3.0 * sqrt( Ko/5.4 ) # "tissue" ~ Courtemanche
gK1 = 3.45 * cAF['gK1']  # IK1:g_K1   3 in Nygren et al. 9 in Courtemanche et al.
gNab = 0.060599    # INab:g_B_Na
gCab = 0.0952      # ICab:g_B_Ca

INaKmax = 70.8253  # INaK:i_NaK_max
kNaKK = 1          # INaK:k_NaK_K
kNaKNa = 11        # INaK:k_NaK_Na
#%INaKmax = 73; kNaKK = 1; kNaKNa = 11; # 37 C

ICaPmax = 2.0      # ICaP:i_CaP_max
kCaP = 0.0005      # ICaP:k_CaP

kNaCa = 0.0084 * cAF['kNaCa']  # INaCa:k_NaCa
gam = 0.45         # INaCa:gamma
dNaCa = 0.0003     # INaCa:d_NaCa
#%kNaCa = 0.0087 * cAF_kNaCa; gam = 0.45; dNaCa = 0.0003; # 37 C

gIf = 1            # If:gIf

# Ca and Na diffusion
#%Q10 = 1.425, Sidell & Hazel (1987)
DCa = 780.0  # diffusion coefficient for Ca2+ (micrometer**2/sec)
#%DCa = q10DCaNa ** q10exp * 1000 # at 37 C, Kushmerick and Podolsky (1969) Science
DCaSR = 44.0 # diffusion coefficient for Ca2+ in SR (micrometer**2/sec)
#%DCaSR = q10DCaBmSR ** q10exp * 51. # at 37 C, based on PLoS, if Q10 = 1.35 - 1.5
#%DCaSR = q10DCaBmSR ** q10exp * 16. # Swietach 2008 Biophys J, at 37 C
#%DCaSR = q10DCaBmSR ** q10exp * 33. # Average of Swietach and PLoS, at 37 C
DCaBm = 25.0 # diffusion coefficient for Ca2+-buffer complex (micrometer**2/sec)
#%DCaBm = q10DCaBmSR ** q10exp * 42.5 # at 37 C
DNa = 0.12
#%DNa = q10DCaNa ** q10exp * 0.146 # Despa et al. (2002) 0.12 ???m2/s at 25C, if Q10 = 1.18

# SERCA parameters
base_phos = 0.1 * cAF['phos']  # Baseline phosphorylation
PLB_SERCA_ratio = cAF['PLB']
SLN_SERCA_ratio = cAF['SLN']
Kmf_PLBKO = 0.15e-3
Kmf_PLB = 0.12e-3
Kmf_SLN = 0.07e-3
Kmr_PLBKO = 2.5
Kmr_PLB = 0.88
Kmr_SLN = 0.5

# SERCA half-maximal binding in cytosol (mM, Table S1)
SERCAKmf = Kmf_PLBKO + Kmf_PLB * PLB_SERCA_ratio * (1. - base_phos) + Kmf_SLN * SLN_SERCA_ratio * (1. - base_phos)
# SERCA half-maximal binding in SR (mM, Table S1)
SERCAKmr = Kmr_PLBKO - Kmr_PLB * PLB_SERCA_ratio * (1. - base_phos) - Kmr_SLN * SLN_SERCA_ratio * (1. - base_phos)
k4 = 13.  # pump rate (sec^-1, Table S1)

k3 = k4 / SERCAKmr**2
k1 = 1000**2 * k4
k2 = k1 * SERCAKmf**2

cpumps = 30e-3 / Dvcell * cAF['cpumps'] # pump concentration in cytosol volume (mM, Table S1)

# SR Ca leak
kSRleak = 6e-3 / Dvcell

# RyR
k_nu = 1.0 / Dvcell
#%nu1 = 1.5*1.5*Vnonjunct(1) / Dvcell; % in cAF SR does not dilate
#%nu2 = 1.5*1.5*Vnonjunct(2) / Dvcell; % in cAF SR does not dilate
#%nu3 = 1.5*1.5*Vnonjunct(3) / Dvcell; % in cAF SR does not dilate
k_nuss = 625.0 / Dvcell
#%nuss = 1094*Vss / Dvcell; % in cAF SR does not dilate
#%nuss = 1.5*1000*Vss / Dvcell; % in cAF SR does not dilate

RyRtauadapt = 1

RyRtauactss = 5e-3
RyRtauinactss = 15e-3
#%RyRtauactss = 4.2e-3 / q10RyR ** q10exp
#%RyRtauinactss = 13e-3 / q10RyR ** q10exp

RyRtauact = 18.75e-3
RyRtauinact = 87.5e-3
#%RyRtauact = 15e-3 / q10RyR ** q10exp
#%RyRtauinact = 75e-3 / q10RyR ** q10exp

### status
V_0 = -75.20
INam_0 = 0.002854
INah1_0 = 0.9001
INah2_0 = 0.9003
ICaLd_0 = 0.00001104
ICaLf1_0 = 0.9988
ICaLf2_0 = 0.9988
ICaLfca_0 = 0.9226
Itr_0 = 0.0009795
Its_0 = 0.9535
Isusr_0 = 0.0003196
Isuss_0 = 0.9726
IKsn_0 = 0.004421
IKrpa_0 = 0.00004354
Ify_0 = 0.05500
Nai_0 = 8.851
Ki_0 = 135.2
Nass_0 = 8.513
Cass_0 = 0.0001737
Cai_0 = [ Cass_0, 0.0001672, 0.0001670, 0.0001680, 0.0001719 ]
RyRoss_0 = 0.00005934
RyRcss_0 = 0.9999
RyRass_0 = 0.2453
RyRo_0 = [ RyRoss_0, 0.0001916, 0.0001485, 0.0001010 ]
RyRc_0 = [ RyRcss_0, 0.9970, 0.9985, 0.9993 ]
RyRa_0 = [ RyRass_0, 0.2033, 0.2106, 0.2229 ]
SERCACass_0 = 0.004891
SERCACa_0 = [ SERCACass_0, 0.005351, 0.005213, 0.005020 ]
CaCytosol_0 = Cai_0
CaSR_0 = [ 0, 0.5755, 0.5664, 0.5535, 0.5428 ]

ENa_0 = R*T/F * log ( Nao / Nass_0 )
EK_0 = R*T/F * log ( Ko / Ki_0 )
ECa_0 = R*T/F/2.0 * log ( Cao / Cass_0 )

# INa
INa_0 = PNa * INam_0**3 * ( 0.9*INah1_0 + 0.1*INah2_0) * Nao * V_0 * F**2/(R*T) * ( exp( (V_0-ENa_0)*F/R/T ) - 1) / ( exp( V_0*F/R/T ) - 1)
INaminf_0 = 1/(1+exp((V_0+27.12)/-8.21))
INahinf_0 = 1/(1+exp((V_0+63.6)/5.3))
INamtau_0 = 0.000042*exp( -((V_0+25.57)/28.8)**2 ) + 0.000024
INah1tau_0 = 0.03/(1+exp((V_0+35.1)/3.2)) + 0.0003
INah2tau_0 = 0.12/(1+exp((V_0+35.1)/3.2)) + 0.003

# ICaL
ICaLfcainf_0 = 1-1 / ( 1 + (kCa/Cass_0)**(kCan))
#%ICaLfcainf = 1-1 ./ ( 1 + (kCa./y(i_Cass)).^(kCan));
#%ICaLfcainf = (1 / (1 + (y(i_Cass)/0.0005).^6) + 0.1 / (1 + exp((y(i_Cass) - 0.0009)/0.0001)) + 0.3 / (1 + exp((y(i_Cass) - 0.00075)/0.0008))) / 1.3156; % Grandi mod
#%ICaLfcainf = 1 - 0.5 ./ ( 1 + (kCa/y(i_Cass)).^2) - 0.5 ./ ( 1 + (kCa/y(i_Cass)).^6);
#%ICaLfcainf = 1 / exp(y(i_Cass)/kCa); % modified from Courtemanche
ICaL_0 = gCaL *(ICaLd_0) * (ICaLfca_0) * (ICaLf2_0) * (V_0 - ECa_app)
#%ICaL = gCaL *y(i_ICaLd) .* y(i_ICaLfca)*y(i_ICaLf1)* y(i_ICaLf2) .* (y(i_V) - ECa_app);
ICaLdinf_0 = 1/(1+exp((V_0+9)/-5.8))
#%ICaLfinf = 1/(1+exp((y(i_V)+27.4)/7.1));
ICaLfinf_0 = 0.04 + 0.96 / (1 + exp((V_0 + 25.5)/8.4)) + 1 / (1 + exp(-(V_0 - 60)/8.0))
ICaLdtau_0 = 0.00065*exp( -((V_0+35)/30)**2 ) + 0.0005
#%ICaLdtau = 0.0027*exp( -((y(i_V)+35)/30).^2 ) + 0.002;
ICaLf1tau_0 = 0.98698*exp( -((V_0+30.16047)/7.09396)**2 ) + 0.04275/(1+exp((V_0-51.61555)/-80.61331)) + 0.03576/(1+exp((V_0+29.57272)/13.21758)) - 0.00821
ICaLf2tau_0 = 1.34*exp( -((V_0+40)/14.2)**2 ) + 0.04
#%ICaLf2tau = 1.3323*exp( -((y(i_V)+40)/14.2).^2 ) + 0.0626;
ICaLfcatau_0 = 2e-3

# It
It_0 = gt * (Itr_0) * (Its_0) * (V_0 - EK_0)
Itrinf_0 = 1.0/(1.0+exp((V_0-1.0)/-11.0))
Itsinf_0 = 1.0/(1.0+exp((V_0+40.5)/11.5))
Itrtau_0 = 0.0035*exp( -((V_0+0)/30.0)**2.0 ) + 0.0015
#Itstau_0 = 0.4812*exp( -((V_0+52.45)/14.97)**2.0 ) + 0.01414
Itstau_0 = 0.025635*exp( -((V_0+52.45)/15.8827)**2.0 ) + 0.01414 # Maleckar et al.

# Isus
Isus_0 = gsus * (Isusr_0) * (Isuss_0) * (V_0 - EK_0)
Isusrinf_0 = 1.0/(1.0 + exp((V_0 + 6)/-8.6)) # Maleckar et al.
Isussinf_0 = 1.0/(1.0 + exp((V_0 + 7.5)/10.0)) # Maleckar et al.
Isusrtau_0 = 0.009/(1.0 + exp((V_0 + 5)/12.0)) + 0.0005 # Maleckar et al.
Isusstau_0 = 0.59/(1.0 + exp((V_0 + 60.0)/10.0)) + 3.05 # Maleckar et al.

# IKs
IKs_0 = gKs * (IKsn_0) * (V_0 - EK_0)
IKsninf_0 = 1.0/(1.0+exp((V_0-19.9)/-12.7))
IKsntau_0 = 0.4*exp( -((V_0-20.0)/20.0)**2.0 ) + 0.7
#%IKs = gKs * y(i_IKsn)^2 * (y(i_V) - EK);
#%IKsninf = 1 / (1 + exp(-(y(i_V)-19.9)/12.7))^0.5;
#%IKsntau = 0.0005 / ((4E-5 * (y(i_V) - 19.9) / (1 - exp(-(y(i_V) - 19.9)/17))) + (3.5E-5 * (y(i_V) - 19.9) ./ (exp((y(i_V) - 19.9)/9) - 1)));

# IKr
IKrpi_0 = 1.0/(1.0+exp((V_0+55.0)/24.0))
IKr_0 = gKr * (IKrpa_0) * IKrpi_0 * (V_0 - EK_0)
IKrpainf_0 = 1.0/(1.0+exp((V_0+15.0)/-6.0))
IKrpatau_0 = 0.21718*exp( -((V_0+20.1376)/22.1996)**2.0 ) + 0.03118
#%IKrpi = 1 / (1 + exp((y(i_V) + 15)/22.4));
#%IKr = gKr * y(i_IKrpa) * IKrpi * (y(i_V) - EK);
#%IKrpainf = 1 / (1 + exp((y(i_V) + 14.1)/-6.5));
#%IKrpatau = 0.001 / ((0.0003 * (y(i_V) + 14.1) / (1 - exp(-(y(i_V) + 14.1)/5))) + (7.3898E-5 * (y(i_V) - 3.3328) ./ (exp((y(i_V) - 3.3328)/5.1237) - 1)));

# IK1
IK1_0 = gK1 * Ko**0.4457 * (V_0 - EK_0) / (1.0+exp(1.5*(V_0-EK_0+3.6)*F/R/T))

# Background leaks
INab_0 = gNab * (V_0 - ENa_0)
ICab_0 = gCab * (V_0 - ECa_0)

# INaK
INaK_0 = INaKmax * Ko/(Ko + kNaKK) * Nass_0**1.5/(Nass_0**1.5+kNaKNa**1.5) * (V_0 + 150.0) / (V_0 + 200.0)

# INaCa
fCaNCX = 1.0
INaCa_0 = kNaCa * ( (exp( gam*V_0*F/R/T ) * Nass_0**3.0 * Cao - exp( (gam-1.0)*V_0*F/R/T ) * Nao**3.0 * Cass_0*fCaNCX ) / ( 1.0 + dNaCa*(Nao**3.0 * Cass_0*fCaNCX + Nass_0**3.0 * Cao) ) )

# ICaP
ICaP_0 = ICaPmax * Cass_0 / (kCaP + Cass_0)

# If, Zorn-Pauly LAW fit
Ifyinf_0 = 1.0 / (1.0 + exp((V_0+97.82874)/12.48025))
Ifytau_0 = 1.0 / (0.00332*exp(-V_0/16.54103)+23.71839*exp(V_0/16.54103))
IfNa_0 = gIf * (Ify_0)*((0.2677)*(V_0-ENa_0))
IfK_0 = gIf * (Ify_0)*((1.0-0.2677)*(V_0-EK_0))
If_0 = IfK_0 + IfNa_0

# SERCA fluxes

J_SERCASRss_0 = (-k3*CaSR_0[4]**2*(cpumps-SERCACass_0)+k4*SERCACass_0)*Vss*2.0
J_bulkSERCAss_0 = (k1*Cass_0**2.0*(cpumps-SERCACass_0)-k2*SERCACass_0)*Vss*2.0

J_SERCASR_0 = [J_SERCASRss_0, 0.0, 0.0, 0.0]
J_bulkSERCA_0 = [J_bulkSERCAss_0, 0.0, 0.0, 0.0]
for x in [1, 2, 3]:
  J_SERCASR_0[x] = (-k3*CaSR_0[x]**2.0*(cpumps-SERCACa_0[x])+k4*SERCACa_0[x])*Vcytosol[x]*2.0
  J_bulkSERCA_0[x] = (k1*CaCytosol_0[x]**2.0*(cpumps-SERCACa_0[x])-k2*SERCACa_0[x])*Vcytosol[x]*2.0

# RyR

RyRSRCass_0 = (1.0 - 1.0/(1.0 +  exp((CaSR_0[4]-0.3/cAF['RyR'])/0.1)))
#%RyRSRCass = (1 - 1./(1 +  exp((CaSR(4)-0.45/cAF_RyR)./0.1)));
#%RyRSRCass = (1 - 1./(1 +  exp((CaSR(4)-0.45)./0.1)));
RyRainfss_0 = 0.505-0.427/(1.0 + exp((Cass_0*1000.0-0.29)/0.082))
RyRoinfss_0 = (1.0 - 1.0/(1.0 +  exp((Cass_0*1000.0-((RyRass_0) + 0.22/cAF['RyR']))/0.03)))
#%RyRoinfss = (1 - 1./(1 +  exp((y(i_Cass).*1000-(y(i_RyRass) + 0.22))./0.03)));
RyRcinfss_0 = (1.0/(1.0 + exp((Cass_0*1000.0-((RyRass_0)+0.02))/0.01)))
Jrelss_0 = k_nuss * Vss * ( (RyRoss_0) ) * (RyRcss_0) * RyRSRCass_0 * ( CaSR_0[4] -  Cass_0 )

RyRSRCa_0 = [RyRSRCass_0, 0.0, 0.0, 0.0]
RyRainf_0 = [RyRainfss_0, 0.0, 0.0, 0.0]
RyRoinf_0 = [RyRoinfss_0, 0.0, 0.0, 0.0]
RyRcinf_0 = [RyRcinfss_0, 0.0, 0.0, 0.0]
for x in [1, 2, 3]:
  RyRSRCa_0[x] = (1.0 - 1.0/(1.0 +  exp((CaSR_0[x]-0.3/cAF['RyR'])/0.1)))
  #%RyRSRCa1 = (1 - 1./(1 +  exp((CaSR(1)-0.45/cAF_RyR)./0.1)));
  #%RyRSRCa2 = (1 - 1./(1 +  exp((CaSR(2)-0.45/cAF_RyR)./0.1)));
  #%RyRSRCa3 = (1 - 1./(1 +  exp((CaSR(3)-0.45/cAF_RyR)./0.1)));
  #%RyRSRCa1 = (1 - 1./(1 +  exp((CaSR(1)-0.45)./0.1)));
  #%RyRSRCa2 = (1 - 1./(1 +  exp((CaSR(2)-0.45)./0.1)));
  #%RyRSRCa3 = (1 - 1./(1 +  exp((CaSR(3)-0.45)./0.1)));
  RyRainf_0[x] = 0.505-0.427/(1.0 + exp((CaCytosol_0[x]*1000.0-0.29)/0.082))
  RyRoinf_0[x] = (1.0 - 1.0/(1.0 +  exp(( CaCytosol_0[x]*1000.0-(RyRa_0[x] + 0.22/cAF['RyR']))/0.03)))
  #%RyRoinf1 = (1 - 1./(1 +  exp(( Cai(1).*1000-(y(i_RyRa1) + 0.22))./0.03)));
  #%RyRoinf2 = (1 - 1./(1 +  exp(( Cai(2).*1000-(y(i_RyRa2) + 0.22))./0.03)));
  #%RyRoinf3 = (1 - 1./(1 +  exp(( Cai(3).*1000-(y(i_RyRa3) + 0.22))./0.03)));
  RyRcinf_0[x] = (1.0/(1.0 +  exp(( CaCytosol_0[x]*1000.0-(RyRa_0[x]+0.02))/0.01)))

Jrel_0 = [Jrelss_0, 0.0, 0.0, 0.0]
for x in [1, 2, 3]:
  Jrel_0[x] = k_nu * Vcytosol[x] * ( RyRo_0[x] ) * RyRc_0[x] * RyRSRCa_0[x] * ( CaSR_0[x] -  CaCytosol_0[x] )

# SR leak fluxes
JSRCaleakss = kSRleak * ( CaSR_0[4] - Cass_0 ) * Vss
JSRCaleak_0 = [JSRCaleakss, 0.0, 0.0, 0.0]
for x in [1, 2, 3]:
  JSRCaleak_0[x] = kSRleak * ( CaSR_0[x] - Cai_0[x] ) * Vcytosol[x]

# Naflux in 1 nl volume
JNa_0 = DNa * Aj_nj / xj_nj_Nai * (Nass_0 - Nai_0)* 1e-6

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
      [voi :.:t  1];
  }
}

System System( /Cell )
{
  StepperID    Default;
  Name "Cell";

  Variable Variable( SIZE )
  {
    Value    @((sum( Vcytosol ) + sum( VSR ))*1.0E-9);
  }
}

System System( /Cell/Cytosol )
{
  StepperID    Default;
  Name "Cell";

  Variable Variable( SIZE )
  {
    Value    @(sum( Vcytosol ) * 1.0e-9);
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
    Value    @( sum(Vcytosol) * 1.0e-9);
  }

  Variable Variable(Na_i)
  {
    Name "Na_i in component intracellular_ion_concentrations (molar)";
    MolarConc  9.286860e-3;    # hAM_KKT.ode Nai
  }

  Process Koivumaki_2011_DiffusionJNjFluxProcess(JNa_assign)
  {
    Name "Na diffusion from junct to non-junct";
    @{'''
    #  Diffusion from junct to non-junct    (pmol/sec)
    JNa = DNa * Aj_nj / xj_nj_Nai * (Nass - Nai)* 1e-3
    '''}

    D  @DNa;
    Aj_nj  @Aj_nj;
    xj_nj  @xj_nj_Nai;

    VariableReferenceList
      [nj    :.:Na_i    0]
      [j     :../ss:Na  0];
  }

} # END of /Cell/Cytosol/bulk


# /Cell/Membrane
@include('./Koivumaki-2011_cAF_Cell_Membrane.em')

# /Cell/Cytoplasm/{ss||bulk_x}
@{x = 0}
@[while x <= 4]
@{
if x == 0:
  c = 'ss'
else:
  c = x
}
@include('./Koivumaki-2014_Cell_Cytoplasm_bulk_x.em')
@{x += 1}
@[end while]

# /Cell/SR_x
@{x = 1}
@[while x <= 4]
@include('./Koivumaki-2011_Cell_SR_x.em')
@{x += 1}
@[end while]
