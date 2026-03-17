
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1:  13]) = 'Serpent 2.2.1' ;
COMPILE_DATE              (idx, [1:  20]) = 'Oct  8 2024 17:10:09' ;
DEBUG                     (idx, 1)        = 0 ;
TITLE                     (idx, [1:  24]) = 'BWRX-300 Core Model (2D)' ;
CONFIDENTIAL_DATA         (idx, 1)        = 0 ;
INPUT_FILE_NAME           (idx, [1:   6]) = '3d.inp' ;
WORKING_DIRECTORY         (idx, [1:  43]) = '/home/pnrouxel/serpent/bwrx-300/3d-assembly' ;
HOSTNAME                  (idx, [1:   7]) = 'node026' ;
CPU_TYPE                  (idx, [1:  31]) = 'AMD EPYC 7452 32-Core Processor' ;
CPU_MHZ                   (idx, 1)        = 137367676.0 ;
START_DATE                (idx, [1:  24]) = 'Mon Feb 10 22:40:08 2025' ;
COMPLETE_DATE             (idx, [1:  24]) = 'Mon Feb 10 22:48:04 2025' ;

% Run parameters:

POP                       (idx, 1)        = 100000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 50 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1739245208988 ;
UFS_MODE                  (idx, 1)        = 0 ;
UFS_ORDER                 (idx, 1)        = 1.00000 ;
NEUTRON_TRANSPORT_MODE    (idx, 1)        = 1 ;
PHOTON_TRANSPORT_MODE     (idx, 1)        = 0 ;
GROUP_CONSTANT_GENERATION (idx, 1)        = 1 ;
B1_CALCULATION            (idx, [1:  3])  = [ 0 0 0 ] ;
B1_IMPLICIT_LEAKAGE       (idx, 1)        = 0 ;
B1_BURNUP_CORRECTION      (idx, 1)        = 0 ;

CRIT_SPEC_MODE            (idx, 1)        = 0 ;
IMPLICIT_REACTION_RATES   (idx, 1)        = 1 ;

% Optimization:

OPTIMIZATION_MODE         (idx, 1)        = 4 ;
RECONSTRUCT_MICROXS       (idx, 1)        = 1 ;
RECONSTRUCT_MACROXS       (idx, 1)        = 1 ;
DOUBLE_INDEXING           (idx, 1)        = 0 ;
MG_MAJORANT_MODE          (idx, 1)        = 0 ;

% Parallelization:

MPI_TASKS                 (idx, 1)        = 2 ;
OMP_THREADS               (idx, 1)        = 1 ;
MPI_REPRODUCIBILITY       (idx, 1)        = 0 ;
OMP_REPRODUCIBILITY       (idx, 1)        = 1 ;
SHARE_BUF_ARRAY           (idx, 1)        = 1 ;
SHARE_RES2_ARRAY          (idx, 1)        = 1 ;
OMP_SHARED_QUEUE_LIM      (idx, 1)        = 0 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1:  57]) = '/cm/shared/codes/serpent/xsdata/endfb7/sss_endfb7u.xsdata' ;
DECAY_DATA_FILE_PATH      (idx, [1:  53]) = '/cm/shared/codes/serpent/xsdata/endfb7/sss_endfb7.dec' ;
SFY_DATA_FILE_PATH        (idx, [1:   3]) = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  53]) = '/cm/shared/codes/serpent/xsdata/endfb7/sss_endfb7.nfy' ;
BRA_DATA_FILE_PATH        (idx, [1:   3]) = 'N/A' ;

% Collision and reaction sampling (neutrons/photons):

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 4.2E-09  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:   2]) = [  9.00000E-01  9.00000E-01 ] ;
ST_FRAC                   (idx, [1:   4]) = [  2.42306E-02 0.00096  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.75769E-01 2.4E-05  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  6.57910E-01 0.00011  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  6.59370E-01 0.00011  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.16318E+00 0.00032  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
CELL_SEARCH_FRAC          (idx, [1:  10]) = [  8.90607E-01 3.9E-05  1.09221E-01 0.00031  1.72643E-04 0.00562  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  3.36509E+01 0.00034  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  3.36473E+01 0.00034  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.73822E+01 0.00043  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  3.89971E+00 0.00056  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 50 ;
SIMULATED_HISTORIES       (idx, 1)        = 2500060 ;
MEAN_POP_SIZE             (idx, [1:   2]) = [  5.00012E+04 0.00086 ] ;
MEAN_POP_WGT              (idx, [1:   2]) = [  5.00012E+04 0.00086 ] ;
SIMULATION_COMPLETED      (idx, 1)        = 0 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  7.90064E+00 ;
RUNNING_TIME              (idx, 1)        =  7.92383E+00 ;
INIT_TIME                 (idx, [1:   2]) = [  7.27167E-02  7.27167E-02 ] ;
PROCESS_TIME              (idx, [1:   2]) = [  3.66668E-04  3.66668E-04 ] ;
TRANSPORT_CYCLE_TIME      (idx, [1:   3]) = [  7.85075E+00  0.00000E+00  0.00000E+00 ] ;
MPI_OVERHEAD_TIME         (idx, [1:   2]) = [  6.15000E-03  0.00000E+00 ] ;
ESTIMATED_RUNNING_TIME    (idx, [1:   2]) = [  1.21714E+01  0.00000E+00 ] ;
CPU_USAGE                 (idx, 1)        = 0.99707 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  9.97386E-01 1.4E-05 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  9.90217E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 257781.25 ;
ALLOC_MEMSIZE             (idx, 1)        = 513.41 ;
MEMSIZE                   (idx, 1)        = 462.82 ;
XS_MEMSIZE                (idx, 1)        = 106.95 ;
MAT_MEMSIZE               (idx, 1)        = 21.15 ;
RES_MEMSIZE               (idx, 1)        = 0.83 ;
IFC_MEMSIZE               (idx, 1)        = 0.00 ;
MISC_MEMSIZE              (idx, 1)        = 333.89 ;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00 ;
UNUSED_MEMSIZE            (idx, 1)        = 50.59 ;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 11 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 145610 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 8 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 13 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 13 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 385 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Neutron physics options:

USE_DELNU                 (idx, 1)        = 1 ;
USE_URES                  (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
IMPL_CAPT                 (idx, 1)        = 0 ;
IMPL_NXN                  (idx, 1)        = 1 ;
IMPL_FISS                 (idx, 1)        = 0 ;
DOPPLER_PREPROCESSOR      (idx, 1)        = 1 ;
TMS_MODE                  (idx, 1)        = 0 ;
SAMPLE_FISS               (idx, 1)        = 1 ;
SAMPLE_CAPT               (idx, 1)        = 1 ;
SAMPLE_SCATT              (idx, 1)        = 1 ;

% Energy deposition:

EDEP_MODE                 (idx, 1)        = 0 ;
EDEP_DELAYED              (idx, 1)        = 1 ;
EDEP_KEFF_CORR            (idx, 1)        = 1 ;
EDEP_LOCAL_EGD            (idx, 1)        = 0 ;
EDEP_COMP                 (idx, [1:   9]) = [ 0 0 0 0 0 0 0 0 0 ] ;
EDEP_CAPT_E               (idx, 1)        =  0.00000E+00 ;

% Radioactivity data:

TOT_ACTIVITY              (idx, 1)        =  0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        =  0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  0.00000E+00 ;
INGESTION_TOXICITY        (idx, 1)        =  0.00000E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  0.00000E+00 ;
ACTINIDE_ING_TOX          (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, [1:   2]) = [  0.00000E+00  0.00000E+00 ] ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  0.00000E+00 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  0.00000E+00 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  3.20661E+14 0.00045  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.85582E-01 0.00162 ];
U235_FISS                 (idx, [1:   4]) = [  8.94499E+18 0.00062  9.66027E-01 0.00014 ];
U238_FISS                 (idx, [1:   4]) = [  3.13245E+17 0.00415  3.38284E-02 0.00398 ];
U235_CAPT                 (idx, [1:   4]) = [  1.86463E+18 0.00203  2.76905E-01 0.00169 ];
U238_CAPT                 (idx, [1:   4]) = [  3.05116E+18 0.00143  4.53115E-01 0.00112 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC      (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_SRC_NEUTRON_FISS     (idx, [1:   2]) = [ 2500060 2.50000E+06 ] ;
BALA_SRC_NEUTRON_NXN      (idx, [1:   2]) = [ 0 2.84333E+03 ] ;
BALA_SRC_NEUTRON_VR       (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_SRC_NEUTRON_TOT      (idx, [1:   2]) = [ 2500060 2.50284E+06 ] ;

BALA_LOSS_NEUTRON_CAPT    (idx, [1:   2]) = [ 1048809 1.04998E+06 ] ;
BALA_LOSS_NEUTRON_FISS    (idx, [1:   2]) = [ 1442222 1.44383E+06 ] ;
BALA_LOSS_NEUTRON_LEAK    (idx, [1:   2]) = [ 9029 9.03738E+03 ] ;
BALA_LOSS_NEUTRON_CUT     (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_ERR     (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_TOT     (idx, [1:   2]) = [ 2500060 2.50284E+06 ] ;

BALA_NEUTRON_DIFF         (idx, [1:   2]) = [ 0 -7.12462E-08 ] ;

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  3.00000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  7.53636E+02 6.0E-09 ];
TOT_GENRATE               (idx, [1:   2]) = [  2.26622E+19 1.0E-05 ];
TOT_FISSRATE              (idx, [1:   2]) = [  9.24983E+18 1.1E-06 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.74194E+18 0.00044 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.59918E+19 0.00019 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.60330E+19 0.00045 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.58574E+20 0.00038 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  5.79604E+16 0.01350 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.60497E+19 0.00019 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  5.40046E+20 0.00033 ];
INI_FMASS                 (idx, 1)        =  3.98070E-01 ;
TOT_FMASS                 (idx, 1)        =  3.98070E-01 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.90568E+00 0.00043 ];
SIX_FF_F                  (idx, [1:   2]) = [  8.74822E-01 0.00021 ];
SIX_FF_P                  (idx, [1:   2]) = [  7.17875E-01 0.00037 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.18659E+00 0.00025 ];
SIX_FF_LF                 (idx, [1:   2]) = [  9.96729E-01 4.7E-05 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.99655E-01 1.1E-05 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.42010E+00 0.00053 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  1.41497E+00 0.00053 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.45001E+00 1.1E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02431E+02 1.1E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.41470E+00 0.00060  1.40542E+00 0.00053  9.54272E-03 0.00942 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.41357E+00 0.00019 ];
COL_KEFF                  (idx, [1:   2]) = [  1.41348E+00 0.00045 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.41357E+00 0.00019 ];
ABS_KINF                  (idx, [1:   2]) = [  1.41870E+00 0.00019 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.83625E+01 0.00014 ];
IMP_ALF                   (idx, [1:   2]) = [  1.83627E+01 7.7E-05 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.12009E-07 0.00264 ];
IMP_EALF                  (idx, [1:   2]) = [  2.11952E-07 0.00141 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.19373E-01 0.00402 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.19218E-01 0.00179 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  4.80154E-03 0.00807  1.40914E-04 0.04192  7.88298E-04 0.01874  7.47831E-04 0.01832  2.20216E-03 0.01311  6.85397E-04 0.01952  2.36943E-04 0.03625 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  7.97052E-01 0.01967  1.24907E-02 2.7E-06  3.17330E-02 0.00022  1.09862E-01 0.00036  3.18878E-01 0.00021  1.34892E+00 0.00017  8.78804E+00 0.00159 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.65841E-03 0.01063  2.18292E-04 0.05497  1.10952E-03 0.02542  1.04796E-03 0.02722  3.02234E-03 0.01685  9.42079E-04 0.02564  3.18216E-04 0.04928 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  7.79374E-01 0.02455  1.24907E-02 4.5E-06  3.17274E-02 0.00035  1.09839E-01 0.00057  3.18711E-01 0.00027  1.34886E+00 0.00026  8.79119E+00 0.00230 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  1.97395E-05 0.00137  1.97352E-05 0.00136  2.03791E-05 0.01363 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  2.79251E-05 0.00122  2.79190E-05 0.00123  2.88270E-05 0.01348 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.73956E-03 0.00942  2.02998E-04 0.06296  1.07943E-03 0.02647  1.04646E-03 0.02501  3.11298E-03 0.01701  9.61469E-04 0.02875  3.36228E-04 0.04603 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.01924E-01 0.02616  1.24907E-02 3.5E-06  3.17311E-02 0.00030  1.09819E-01 0.00055  3.18796E-01 0.00032  1.34879E+00 0.00025  8.76080E+00 0.00225 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  1.97807E-05 0.00230  1.97699E-05 0.00232  2.13118E-05 0.02912 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  2.79834E-05 0.00225  2.79680E-05 0.00226  3.01507E-05 0.02914 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.68567E-03 0.02741  1.90921E-04 0.14069  1.00046E-03 0.06818  1.09398E-03 0.06922  3.10881E-03 0.04149  9.33620E-04 0.06123  3.57876E-04 0.13383 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.94289E-01 0.06555  1.24907E-02 9.3E-06  3.17641E-02 0.00051  1.09936E-01 0.00134  3.18776E-01 0.00099  1.34848E+00 0.00071  8.73194E+00 0.00515 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.70238E-03 0.02843  1.81045E-04 0.14298  9.70470E-04 0.06534  1.09363E-03 0.06733  3.16208E-03 0.04123  9.49654E-04 0.06028  3.45508E-04 0.13407 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.88371E-01 0.06516  1.24907E-02 8.3E-06  3.17622E-02 0.00049  1.09955E-01 0.00135  3.18844E-01 0.00096  1.34858E+00 0.00075  8.72989E+00 0.00513 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -3.38168E+02 0.02735 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  1.97717E-05 0.00079 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  2.79705E-05 0.00050 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.70154E-03 0.00584 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -3.38964E+02 0.00595 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  5.80662E-07 0.00067 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  2.58299E-06 0.00053  2.58291E-06 0.00053  2.59544E-06 0.00802 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  3.04266E-05 0.00081  3.04255E-05 0.00080  3.05562E-05 0.00813 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.15785E-01 0.00037  7.14242E-01 0.00037  1.03831E+00 0.01136 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  1.05541E+01 0.01816 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  3.36473E+01 0.00034  3.65075E+01 0.00043 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:   1]) = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  2.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.50000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  2.91423E+05 0.00543  1.17444E+06 0.00108  2.49171E+06 0.00079  2.92873E+06 0.00311  2.74840E+06 0.00038  2.89197E+06 7.1E-05  1.98958E+06 0.00116  1.72220E+06 0.00065  1.32479E+06 0.00059  1.07816E+06 2.0E-05  9.28812E+05 0.00409  8.42615E+05 0.00173  7.77830E+05 0.00068  7.38666E+05 0.00132  7.20497E+05 0.00097  6.25176E+05 0.00146  6.18104E+05 0.00312  6.14351E+05 0.00188  6.03413E+05 0.00122  1.18529E+06 6.1E-05  1.14546E+06 0.00037  8.39215E+05 0.00154  5.45226E+05 0.00144  6.33981E+05 0.00129  6.07086E+05 0.00237  5.42535E+05 0.00077  9.19069E+05 0.00085  2.06758E+05 0.00122  2.59388E+05 0.00099  2.36192E+05 0.00378  1.36934E+05 0.00018  2.37339E+05 0.00148  1.60351E+05 5.5E-05  1.36720E+05 0.00040  2.57980E+04 0.00091  2.57873E+04 0.00783  2.62858E+04 0.00243  2.71292E+04 0.00248  2.69239E+04 0.00222  2.67305E+04 0.00070  2.71904E+04 0.00274  2.59198E+04 0.00172  4.86033E+04 0.00451  7.72220E+04 0.00247  9.80594E+04 0.00076  2.57897E+05 0.00385  2.64848E+05 0.00230  2.67917E+05 0.00025  1.60567E+05 0.00500  1.07326E+05 0.00226  7.76632E+04 0.00350  8.50984E+04 0.00607  1.44693E+05 0.00145  1.76562E+05 0.00087  3.19275E+05 0.00032  5.06383E+05 0.00010  8.95945E+05 0.00068  6.90664E+05 0.00135  5.68276E+05 0.00270  4.47496E+05 0.00108  4.32266E+05 0.00142  4.59844E+05 0.00132  4.13597E+05 5.2E-05  2.94471E+05 0.00171  2.88273E+05 0.00108  2.61048E+05 0.00257  2.40412E+05 3.7E-05  1.89057E+05 0.00112  1.32212E+05 0.00088  4.81873E+04 0.00283 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.41833E+00 0.00119 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  5.38797E+20 0.00063  1.19834E+20 0.00072 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  6.33351E-01 0.00016  1.65937E+00 0.00012 ];
INF_CAPT                  (idx, [1:   4]) = [  5.77671E-03 0.00036  3.02827E-02 0.00082 ];
INF_ABS                   (idx, [1:   4]) = [  8.40061E-03 0.00013  9.56746E-02 0.00078 ];
INF_FISS                  (idx, [1:   4]) = [  2.62391E-03 0.00037  6.53918E-02 0.00076 ];
INF_NSF                   (idx, [1:   4]) = [  6.62218E-03 0.00038  1.59340E-01 0.00076 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.52379E+00 4.2E-06  2.43670E+00 1.5E-08 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.03324E+02 4.1E-06  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  6.15339E-08 0.00046  2.91494E-06 0.00020 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  6.24953E-01 0.00014  1.56364E+00 0.00013 ];
INF_SCATT1                (idx, [1:   4]) = [  2.81985E-01 7.1E-05  3.68494E-01 0.00018 ];
INF_SCATT2                (idx, [1:   4]) = [  1.10669E-01 0.00045  8.09795E-02 0.00143 ];
INF_SCATT3                (idx, [1:   4]) = [  7.71346E-03 0.00658  2.28151E-02 0.00295 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.20501E-02 0.00285 -9.11325E-03 0.02677 ];
INF_SCATT5                (idx, [1:   4]) = [  2.07281E-04 0.02844  5.07851E-03 0.00796 ];
INF_SCATT6                (idx, [1:   4]) = [  5.77615E-03 0.00206 -1.54705E-02 0.00501 ];
INF_SCATT7                (idx, [1:   4]) = [  6.49535E-04 0.06108  1.20949E-03 0.14254 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  6.24986E-01 0.00014  1.56364E+00 0.00013 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.81985E-01 7.2E-05  3.68494E-01 0.00018 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.10669E-01 0.00045  8.09795E-02 0.00143 ];
INF_SCATTP3               (idx, [1:   4]) = [  7.71328E-03 0.00654  2.28151E-02 0.00295 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.20499E-02 0.00286 -9.11325E-03 0.02677 ];
INF_SCATTP5               (idx, [1:   4]) = [  2.06957E-04 0.02909  5.07851E-03 0.00796 ];
INF_SCATTP6               (idx, [1:   4]) = [  5.77627E-03 0.00211 -1.54705E-02 0.00501 ];
INF_SCATTP7               (idx, [1:   4]) = [  6.49654E-04 0.06018  1.20949E-03 0.14254 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.62089E-01 0.00056  1.11872E+00 0.00033 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.27183E+00 0.00056  2.97959E-01 0.00033 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  8.36692E-03 0.00019  9.56746E-02 0.00078 ];
INF_REMXS                 (idx, [1:   4]) = [  2.98552E-02 0.00044  9.64259E-02 8.3E-05 ];

% Poison cross sections:

INF_I135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_YIELD          (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_I135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MICRO_ABS      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_I135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_XE135_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM147_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM148M_MACRO_ABS      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_PM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_SM149_MACRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison universe-averaged densities:

I135_ADENS                (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
XE135_ADENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
PM147_ADENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
PM148_ADENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
PM148M_ADENS              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
PM149_ADENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
SM149_ADENS               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Poison decay constants:

PM147_LAMBDA              (idx, 1)        =  8.37254E-09 ;
PM148_LAMBDA              (idx, 1)        =  1.49451E-06 ;
PM148M_LAMBDA             (idx, 1)        =  1.94297E-07 ;
PM149_LAMBDA              (idx, 1)        =  3.62737E-06 ;
I135_LAMBDA               (idx, 1)        =  2.93061E-05 ;
XE135_LAMBDA              (idx, 1)        =  2.10657E-05 ;
XE135M_LAMBDA             (idx, 1)        =  7.55556E-04 ;
I135_BR                   (idx, 1)        =  9.01450E-01 ;

% Fission spectra:

INF_CHIT                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHIP                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
INF_CHID                  (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

INF_S0                    (idx, [1:   8]) = [  6.03496E-01 0.00015  2.14565E-02 1.3E-05  6.99681E-04 0.01655  1.56294E+00 0.00012 ];
INF_S1                    (idx, [1:   8]) = [  2.75601E-01 6.8E-05  6.38422E-03 0.00018  2.96283E-04 0.04459  3.68197E-01 0.00014 ];
INF_S2                    (idx, [1:   8]) = [  1.12765E-01 0.00044 -2.09557E-03 0.00020  1.84614E-04 0.04036  8.07949E-02 0.00152 ];
INF_S3                    (idx, [1:   8]) = [  1.01772E-02 0.00364 -2.46373E-03 0.00555  9.24740E-05 0.06140  2.27226E-02 0.00271 ];
INF_S4                    (idx, [1:   8]) = [ -1.14057E-02 0.00289 -6.44437E-04 0.00204  2.39177E-05 0.08857 -9.13717E-03 0.02646 ];
INF_S5                    (idx, [1:   8]) = [  2.16242E-05 0.19638  1.85657E-04 0.00887 -1.24440E-05 0.00835  5.09096E-03 0.00792 ];
INF_S6                    (idx, [1:   8]) = [  5.94981E-03 0.00203 -1.73662E-04 0.00091 -2.70621E-05 0.02123 -1.54434E-02 0.00506 ];
INF_S7                    (idx, [1:   8]) = [  9.47459E-04 0.05081 -2.97924E-04 0.02841 -2.92123E-05 0.00639  1.23870E-03 0.13903 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  6.03530E-01 0.00015  2.14565E-02 1.3E-05  6.99681E-04 0.01655  1.56294E+00 0.00012 ];
INF_SP1                   (idx, [1:   8]) = [  2.75601E-01 6.9E-05  6.38422E-03 0.00018  2.96283E-04 0.04459  3.68197E-01 0.00014 ];
INF_SP2                   (idx, [1:   8]) = [  1.12765E-01 0.00044 -2.09557E-03 0.00020  1.84614E-04 0.04036  8.07949E-02 0.00152 ];
INF_SP3                   (idx, [1:   8]) = [  1.01770E-02 0.00362 -2.46373E-03 0.00555  9.24740E-05 0.06140  2.27226E-02 0.00271 ];
INF_SP4                   (idx, [1:   8]) = [ -1.14055E-02 0.00291 -6.44437E-04 0.00204  2.39177E-05 0.08857 -9.13717E-03 0.02646 ];
INF_SP5                   (idx, [1:   8]) = [  2.13005E-05 0.20526  1.85657E-04 0.00887 -1.24440E-05 0.00835  5.09096E-03 0.00792 ];
INF_SP6                   (idx, [1:   8]) = [  5.94994E-03 0.00207 -1.73662E-04 0.00091 -2.70621E-05 0.02123 -1.54434E-02 0.00506 ];
INF_SP7                   (idx, [1:   8]) = [  9.47578E-04 0.05019 -2.97924E-04 0.02841 -2.92123E-05 0.00639  1.23870E-03 0.13903 ];

% Micro-group spectrum:

B1_MICRO_FLX              (idx, [1: 140]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Integral parameters:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_KEFF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_B2                     (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_ERR                    (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];

% Critical spectra in infinite geometry:

B1_FLX                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS_FLX               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

B1_TOT                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CAPT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABS                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISS                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NUBAR                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_KAPPA                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_INVV                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering cross sections:

B1_SCATT0                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT1                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT2                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT3                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT4                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT5                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT6                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATT7                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Total scattering production cross sections:

B1_SCATTP0                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP1                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP2                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP3                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP4                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP5                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP6                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTP7                (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Diffusion parameters:

B1_TRANSPXS               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reduced absoption and removal:

B1_RABSXS                 (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Poison cross sections:

B1_I135_YIELD             (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_YIELD           (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_YIELD            (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_I135_MICRO_ABS         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM147_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM148M_MICRO_ABS       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_PM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MICRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_XE135_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SM149_MACRO_ABS        (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

B1_CHIT                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHIP                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHID                   (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering matrixes:

B1_S0                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S1                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S2                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S3                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S4                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S5                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S6                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_S7                     (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Scattering production matrixes:

B1_SP0                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP1                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP2                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP3                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP4                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP5                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP6                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SP7                    (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Additional diffusion parameters:

CMM_TRANSPXS              (idx, [1:   4]) = [  2.77808E-01 0.00040  9.24682E-01 0.00051 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.78053E-01 0.00092  9.47411E-01 0.00249 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.78311E-01 0.00073  9.39631E-01 0.00326 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.77063E-01 0.00044  8.89257E-01 0.00689 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.19987E+00 0.00040  3.60485E-01 0.00051 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.19881E+00 0.00092  3.51838E-01 0.00249 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.19770E+00 0.00073  3.54753E-01 0.00326 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.20310E+00 0.00044  3.74862E-01 0.00689 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.65841E-03 0.01063  2.18292E-04 0.05497  1.10952E-03 0.02542  1.04796E-03 0.02722  3.02234E-03 0.01685  9.42079E-04 0.02564  3.18216E-04 0.04928 ];
LAMBDA                    (idx, [1:  14]) = [  7.79374E-01 0.02455  1.24907E-02 4.5E-06  3.17274E-02 0.00035  1.09839E-01 0.00057  3.18711E-01 0.00027  1.34886E+00 0.00026  8.79119E+00 0.00230 ];

