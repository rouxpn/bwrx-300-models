
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
INPUT_FILE_NAME           (idx, [1:   6]) = '2d.inp' ;
WORKING_DIRECTORY         (idx, [1:  43]) = '/home/pnrouxel/serpent/bwrx-300/2d-assembly' ;
HOSTNAME                  (idx, [1:   7]) = 'node068' ;
CPU_TYPE                  (idx, [1:  31]) = 'AMD EPYC 7513 32-Core Processor' ;
CPU_MHZ                   (idx, 1)        = 167776725.0 ;
START_DATE                (idx, [1:  24]) = 'Mon Mar 10 17:34:32 2025' ;
COMPLETE_DATE             (idx, [1:  24]) = 'Mon Mar 10 17:34:45 2025' ;

% Run parameters:

POP                       (idx, 1)        = 1000 ;
CYCLES                    (idx, 1)        = 100 ;
SKIP                      (idx, 1)        = 20 ;
BATCH_INTERVAL            (idx, 1)        = 1 ;
SRC_NORM_MODE             (idx, 1)        = 2 ;
SEED                      (idx, 1)        = 1741642472411 ;
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

MIN_MACROXS               (idx, [1:   4]) = [  5.00000E-02 0.0E+00  0.00000E+00 0.0E+00 ];
DT_THRESH                 (idx, [1:   2]) = [  9.00000E-01  9.00000E-01 ] ;
ST_FRAC                   (idx, [1:   4]) = [  2.26303E-02 0.00604  0.00000E+00 0.0E+00 ];
DT_FRAC                   (idx, [1:   4]) = [  9.77370E-01 0.00014  0.00000E+00 0.0E+00 ];
DT_EFF                    (idx, [1:   4]) = [  6.57314E-01 0.00052  0.00000E+00 0.0E+00 ];
REA_SAMPLING_EFF          (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REA_SAMPLING_FAIL         (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_COL_EFF               (idx, [1:   4]) = [  6.58613E-01 0.00051  0.00000E+00 0.0E+00 ];
AVG_TRACKING_LOOPS        (idx, [1:   8]) = [  3.13632E+00 0.00172  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
CELL_SEARCH_FRAC          (idx, [1:  10]) = [  9.19702E-01 0.00018  8.00892E-02 0.00208  2.08504E-04 0.01885  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
AVG_TRACKS                (idx, [1:   4]) = [  3.39887E+01 0.00187  0.00000E+00 0.0E+00 ];
AVG_REAL_COL              (idx, [1:   4]) = [  3.39887E+01 0.00187  0.00000E+00 0.0E+00 ];
AVG_VIRT_COL              (idx, [1:   4]) = [  1.76204E+01 0.00239  0.00000E+00 0.0E+00 ];
AVG_SURF_CROSS            (idx, [1:   4]) = [  9.95384E-01 0.00706  0.00000E+00 0.0E+00 ];
LOST_PARTICLES            (idx, 1)        = 0 ;

% Run statistics:

CYCLE_IDX                 (idx, 1)        = 100 ;
SIMULATED_HISTORIES       (idx, 1)        = 50085 ;
MEAN_POP_SIZE             (idx, [1:   2]) = [  5.00985E+02 0.00456 ] ;
MEAN_POP_WGT              (idx, [1:   2]) = [  5.00985E+02 0.00456 ] ;
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Running times:

TOT_CPU_TIME              (idx, 1)        =  1.66276E-01 ;
RUNNING_TIME              (idx, 1)        =  2.24767E-01 ;
INIT_TIME                 (idx, [1:   2]) = [  1.17117E-01  1.17117E-01 ] ;
PROCESS_TIME              (idx, [1:   2]) = [  3.50002E-04  3.50002E-04 ] ;
TRANSPORT_CYCLE_TIME      (idx, [1:   3]) = [  1.06467E-01  1.06467E-01  0.00000E+00 ] ;
MPI_OVERHEAD_TIME         (idx, [1:   2]) = [  3.66668E-04  0.00000E+00 ] ;
ESTIMATED_RUNNING_TIME    (idx, [1:   2]) = [  2.21217E-01  0.00000E+00 ] ;
CPU_USAGE                 (idx, 1)        = 0.73977 ;
TRANSPORT_CPU_USAGE       (idx, [1:   2]) = [  9.82440E-01 0.00368 ];
OMP_PARALLEL_FRAC         (idx, 1)        =  5.72668E-01 ;

% Memory usage:

AVAIL_MEM                 (idx, 1)        = 257766.55 ;
ALLOC_MEMSIZE             (idx, 1)        = 190.18 ;
MEMSIZE                   (idx, 1)        = 144.10 ;
XS_MEMSIZE                (idx, 1)        = 114.12 ;
MAT_MEMSIZE               (idx, 1)        = 25.71 ;
RES_MEMSIZE               (idx, 1)        = 0.82 ;
IFC_MEMSIZE               (idx, 1)        = 0.00 ;
MISC_MEMSIZE              (idx, 1)        = 3.44 ;
UNKNOWN_MEMSIZE           (idx, 1)        = 0.00 ;
UNUSED_MEMSIZE            (idx, 1)        = 46.08 ;

% Geometry parameters:

TOT_CELLS                 (idx, 1)        = 10 ;
UNION_CELLS               (idx, 1)        = 0 ;

% Neutron energy grid:

NEUTRON_ERG_TOL           (idx, 1)        =  0.00000E+00 ;
NEUTRON_ERG_NE            (idx, 1)        = 146275 ;
NEUTRON_EMIN              (idx, 1)        =  1.00000E-11 ;
NEUTRON_EMAX              (idx, 1)        =  2.00000E+01 ;

% Unresolved resonance probability table sampling:

URES_DILU_CUT             (idx, 1)        =  1.00000E-09 ;
URES_EMIN                 (idx, 1)        =  1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 8 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_NUCLIDES              (idx, 1)        = 14 ;
TOT_TRANSPORT_NUCLIDES    (idx, 1)        = 14 ;
TOT_DOSIMETRY_NUCLIDES    (idx, 1)        = 0 ;
TOT_DECAY_NUCLIDES        (idx, 1)        = 0 ;
TOT_PHOTON_NUCLIDES       (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 416 ;
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

TOT_ACTIVITY              (idx, 1)        =  1.88718E+08 ;
TOT_DECAY_HEAT            (idx, 1)        =  1.44700E-04 ;
TOT_SF_RATE               (idx, 1)        =  1.03210E+03 ;
ACTINIDE_ACTIVITY         (idx, 1)        =  1.88718E+08 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        =  1.44700E-04 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        =  0.00000E+00 ;
INHALATION_TOXICITY       (idx, 1)        =  1.74107E+03 ;
INGESTION_TOXICITY        (idx, 1)        =  9.15647E+00 ;
ACTINIDE_INH_TOX          (idx, 1)        =  1.74107E+03 ;
ACTINIDE_ING_TOX          (idx, 1)        =  9.15647E+00 ;
FISSION_PRODUCT_INH_TOX   (idx, 1)        =  0.00000E+00 ;
FISSION_PRODUCT_ING_TOX   (idx, 1)        =  0.00000E+00 ;
SR90_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
TE132_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
I131_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
I132_ACTIVITY             (idx, 1)        =  0.00000E+00 ;
CS134_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
CS137_ACTIVITY            (idx, 1)        =  0.00000E+00 ;
PHOTON_DECAY_SOURCE       (idx, [1:   2]) = [  2.46322E+07  1.87056E-07 ] ;
NEUTRON_DECAY_SOURCE      (idx, 1)        =  0.00000E+00 ;
ALPHA_DECAY_SOURCE        (idx, 1)        =  1.88636E+08 ;
ELECTRON_DECAY_SOURCE     (idx, 1)        =  7.86977E+07 ;

% Normalization coefficient:

NORM_COEF                 (idx, [1:   4]) = [  3.20021E+16 0.00298  0.00000E+00 0.0E+00 ];

% Analog reaction rate estimators:

CONVERSION_RATIO          (idx, [1:   2]) = [  2.86415E-01 0.00805 ];
U235_FISS                 (idx, [1:   4]) = [  8.92296E+18 0.00367  9.67579E-01 0.00077 ];
U238_FISS                 (idx, [1:   4]) = [  2.98376E+17 0.02342  3.23035E-02 0.02286 ];
U235_CAPT                 (idx, [1:   4]) = [  1.84595E+18 0.00908  2.71659E-01 0.00749 ];
U238_CAPT                 (idx, [1:   4]) = [  3.04135E+18 0.00761  4.47582E-01 0.00551 ];

% Neutron balance (particles/weight):

BALA_SRC_NEUTRON_SRC      (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_SRC_NEUTRON_FISS     (idx, [1:   2]) = [ 100197 1.00000E+05 ] ;
BALA_SRC_NEUTRON_NXN      (idx, [1:   2]) = [ 0 1.14580E+02 ] ;
BALA_SRC_NEUTRON_VR       (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_SRC_NEUTRON_TOT      (idx, [1:   2]) = [ 100197 1.00115E+05 ] ;

BALA_LOSS_NEUTRON_CAPT    (idx, [1:   2]) = [ 42506 4.24559E+04 ] ;
BALA_LOSS_NEUTRON_FISS    (idx, [1:   2]) = [ 57691 5.76587E+04 ] ;
BALA_LOSS_NEUTRON_LEAK    (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_CUT     (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_ERR     (idx, [1:   2]) = [ 0 0.00000E+00 ] ;
BALA_LOSS_NEUTRON_TOT     (idx, [1:   2]) = [ 100197 1.00115E+05 ] ;

BALA_NEUTRON_DIFF         (idx, [1:   2]) = [ 0 -2.18279E-10 ] ;

% Normalized total reaction rates (neutrons):

TOT_POWER                 (idx, [1:   2]) = [  3.00000E+08 0.0E+00 ];
TOT_POWDENS               (idx, [1:   2]) = [  1.88409E+02 1.6E-09 ];
TOT_GENRATE               (idx, [1:   2]) = [  2.26615E+19 5.0E-05 ];
TOT_FISSRATE              (idx, [1:   2]) = [  9.24990E+18 5.4E-06 ];
TOT_CAPTRATE              (idx, [1:   2]) = [  6.81153E+18 0.00278 ];
TOT_ABSRATE               (idx, [1:   2]) = [  1.60614E+19 0.00118 ];
TOT_SRCRATE               (idx, [1:   2]) = [  1.60011E+19 0.00298 ];
TOT_FLUX                  (idx, [1:   2]) = [  6.55728E+20 0.00258 ];
TOT_PHOTON_PRODRATE       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ALBEDO_LEAKRATE           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.60614E+19 0.00118 ];
TOT_CUTRATE               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
TOT_RR                    (idx, [1:   2]) = [  5.44051E+20 0.00221 ];
INI_FMASS                 (idx, 1)        =  1.59228E+00 ;
TOT_FMASS                 (idx, 1)        =  1.59228E+00 ;

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.90129E+00 0.00228 ];
SIX_FF_F                  (idx, [1:   2]) = [  8.70789E-01 0.00152 ];
SIX_FF_P                  (idx, [1:   2]) = [  7.19604E-01 0.00195 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.18623E+00 0.00179 ];
SIX_FF_LF                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_LT                 (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.41243E+00 0.00293 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  1.41243E+00 0.00293 ];

% Fission neutron and energy production:

NUBAR                     (idx, [1:   2]) = [  2.44992E+00 5.5E-05 ];
FISSE                     (idx, [1:   2]) = [  2.02429E+02 5.4E-06 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   6]) = [  1.41248E+00 0.00315  1.40353E+00 0.00296  8.89264E-03 0.05241 ];
IMP_KEFF                  (idx, [1:   2]) = [  1.41287E+00 0.00118 ];
COL_KEFF                  (idx, [1:   2]) = [  1.41874E+00 0.00296 ];
ABS_KEFF                  (idx, [1:   2]) = [  1.41287E+00 0.00118 ];
ABS_KINF                  (idx, [1:   2]) = [  1.41287E+00 0.00118 ];
GEOM_ALBEDO               (idx, [1:   6]) = [  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00  1.00000E+00 0.0E+00 ];

% ALF (Average lethargy of neutrons causing fission):
% Based on E0 = 2.000000E+01 MeV

ANA_ALF                   (idx, [1:   2]) = [  1.83892E+01 0.00092 ];
IMP_ALF                   (idx, [1:   2]) = [  1.83721E+01 0.00042 ];

% EALF (Energy corresponding to average lethargy of neutrons causing fission):

ANA_EALF                  (idx, [1:   2]) = [  2.12357E-07 0.01726 ];
IMP_EALF                  (idx, [1:   2]) = [  2.11219E-07 0.00782 ];

% AFGE (Average energy of neutrons causing fission):

ANA_AFGE                  (idx, [1:   2]) = [  1.15839E-01 0.02357 ];
IMP_AFGE                  (idx, [1:   2]) = [  1.18269E-01 0.00896 ];

% Forward-weighted delayed neutron parameters:

PRECURSOR_GROUPS          (idx, 1)        = 6 ;
FWD_ANA_BETA_ZERO         (idx, [1:  14]) = [  4.66712E-03 0.04030  6.31166E-05 0.32734  7.24781E-04 0.10895  7.36662E-04 0.10149  2.23185E-03 0.05697  6.73096E-04 0.10227  2.37615E-04 0.18229 ];
FWD_ANA_LAMBDA            (idx, [1:  14]) = [  8.87491E-01 0.11875  1.24906E-02 0.0E+00  3.16804E-02 0.00152  1.09591E-01 0.00109  3.18593E-01 0.00129  1.34998E+00 0.00092  8.86787E+00 0.01081 ];

% Beta-eff using Meulekamp's method:

ADJ_MEULEKAMP_BETA_EFF    (idx, [1:  14]) = [  6.56971E-03 0.05419  1.21973E-04 0.42567  8.83929E-04 0.14680  1.15712E-03 0.13574  3.22426E-03 0.07319  8.66868E-04 0.14581  3.15556E-04 0.23440 ];
ADJ_MEULEKAMP_LAMBDA      (idx, [1:  14]) = [  8.55954E-01 0.13568  1.24906E-02 5.6E-09  3.16913E-02 0.00157  1.09604E-01 0.00114  3.18363E-01 0.00132  1.34968E+00 0.00096  8.86787E+00 0.01081 ];

% Adjoint weighted time constants using Nauchi's method:

IFP_CHAIN_LENGTH          (idx, 1)        = 15 ;
ADJ_NAUCHI_GEN_TIME       (idx, [1:   6]) = [  1.98205E-05 0.00685  1.98384E-05 0.00683  1.30200E-05 0.10275 ];
ADJ_NAUCHI_LIFETIME       (idx, [1:   6]) = [  2.79259E-05 0.00561  2.79514E-05 0.00559  1.83314E-05 0.10240 ];
ADJ_NAUCHI_BETA_EFF       (idx, [1:  14]) = [  6.40704E-03 0.05236  1.05846E-04 0.42777  8.01878E-04 0.15209  1.02905E-03 0.12690  3.19228E-03 0.07500  9.48433E-04 0.14221  3.29556E-04 0.24573 ];
ADJ_NAUCHI_LAMBDA         (idx, [1:  14]) = [  8.90843E-01 0.15217  1.24906E-02 8.2E-09  3.16901E-02 0.00210  1.09499E-01 0.00113  3.18581E-01 0.00172  1.35014E+00 0.00114  8.87332E+00 0.01442 ];

% Adjoint weighted time constants using IFP:

ADJ_IFP_GEN_TIME          (idx, [1:   6]) = [  1.97441E-05 0.01468  1.97225E-05 0.01454  6.49887E-06 0.22448 ];
ADJ_IFP_LIFETIME          (idx, [1:   6]) = [  2.78310E-05 0.01418  2.78031E-05 0.01409  9.05681E-06 0.22029 ];
ADJ_IFP_IMP_BETA_EFF      (idx, [1:  14]) = [  6.08269E-03 0.15034  1.07627E-04 0.71880  9.64004E-04 0.38427  9.91547E-04 0.36222  2.35629E-03 0.20668  1.47731E-03 0.37867  1.85915E-04 0.70569 ];
ADJ_IFP_IMP_LAMBDA        (idx, [1:  14]) = [  7.09609E-01 0.26563  1.24906E-02 0.0E+00  3.16672E-02 0.00495  1.09375E-01 0.0E+00  3.17834E-01 0.00266  1.35163E+00 0.00174  8.63638E+00 0.0E+00 ];
ADJ_IFP_ANA_BETA_EFF      (idx, [1:  14]) = [  6.31406E-03 0.15129  8.25659E-05 0.79183  1.04895E-03 0.37821  9.13215E-04 0.33370  2.61186E-03 0.21245  1.52054E-03 0.38405  1.36915E-04 0.70718 ];
ADJ_IFP_ANA_LAMBDA        (idx, [1:  14]) = [  7.08112E-01 0.26624  1.24906E-02 1.5E-08  3.16672E-02 0.00495  1.09375E-01 0.0E+00  3.17834E-01 0.00266  1.35163E+00 0.00174  8.63638E+00 0.0E+00 ];
ADJ_IFP_ROSSI_ALPHA       (idx, [1:   2]) = [ -3.32201E+02 0.16313 ];

% Adjoint weighted time constants using perturbation technique:

ADJ_PERT_GEN_TIME         (idx, [1:   2]) = [  1.99340E-05 0.00474 ];
ADJ_PERT_LIFETIME         (idx, [1:   2]) = [  2.80929E-05 0.00309 ];
ADJ_PERT_BETA_EFF         (idx, [1:   2]) = [  6.80501E-03 0.03062 ];
ADJ_PERT_ROSSI_ALPHA      (idx, [1:   2]) = [ -3.44066E+02 0.03143 ];

% Inverse neutron speed :

ANA_INV_SPD               (idx, [1:   2]) = [  5.79544E-07 0.00341 ];

% Analog slowing-down and thermal neutron lifetime (total/prompt/delayed):

ANA_SLOW_TIME             (idx, [1:   6]) = [  2.58352E-06 0.00300  2.58350E-06 0.00300  2.34489E-06 0.04712 ];
ANA_THERM_TIME            (idx, [1:   6]) = [  3.01677E-05 0.00393  3.01831E-05 0.00393  2.62817E-05 0.06802 ];
ANA_THERM_FRAC            (idx, [1:   6]) = [  7.19784E-01 0.00194  7.18370E-01 0.00198  1.40407E+00 0.06945 ];
ANA_DELAYED_EMTIME        (idx, [1:   2]) = [  7.69835E+00 0.10729 ];
ANA_MEAN_NCOL             (idx, [1:   4]) = [  3.39887E+01 0.00187  3.67465E+01 0.00218 ];

% Group constant generation:

GC_UNIVERSE_NAME          (idx, [1:   1]) = '0' ;

% Micro- and macro-group structures:

MICRO_NG                  (idx, 1)        = 70 ;
MICRO_E                   (idx, [1:  71]) = [  2.00000E+01  6.06550E+00  3.67900E+00  2.23100E+00  1.35300E+00  8.21000E-01  5.00000E-01  3.02500E-01  1.83000E-01  1.11000E-01  6.74300E-02  4.08500E-02  2.47800E-02  1.50300E-02  9.11800E-03  5.50000E-03  3.51910E-03  2.23945E-03  1.42510E-03  9.06898E-04  3.67262E-04  1.48728E-04  7.55014E-05  4.80520E-05  2.77000E-05  1.59680E-05  9.87700E-06  4.00000E-06  3.30000E-06  2.60000E-06  2.10000E-06  1.85500E-06  1.50000E-06  1.30000E-06  1.15000E-06  1.12300E-06  1.09700E-06  1.07100E-06  1.04500E-06  1.02000E-06  9.96000E-07  9.72000E-07  9.50000E-07  9.10000E-07  8.50000E-07  7.80000E-07  6.25000E-07  5.00000E-07  4.00000E-07  3.50000E-07  3.20000E-07  3.00000E-07  2.80000E-07  2.50000E-07  2.20000E-07  1.80000E-07  1.40000E-07  1.00000E-07  8.00000E-08  6.70000E-08  5.80000E-08  5.00000E-08  4.20000E-08  3.50000E-08  3.00000E-08  2.50000E-08  2.00000E-08  1.50000E-08  1.00000E-08  5.00000E-09  1.00000E-11 ];

MACRO_NG                  (idx, 1)        = 2 ;
MACRO_E                   (idx, [1:   3]) = [  1.00000E+37  6.25000E-07  0.00000E+00 ];

% Micro-group spectrum:

INF_MICRO_FLX             (idx, [1: 140]) = [  2.85095E+03 0.01951  1.16905E+04 0.01446  2.46312E+04 0.00529  2.93786E+04 0.00298  2.75088E+04 0.00493  2.87281E+04 0.00352  1.96395E+04 0.00667  1.72960E+04 0.00409  1.31999E+04 0.00620  1.08181E+04 0.00825  9.32581E+03 0.00458  8.47647E+03 0.00684  7.73957E+03 0.00778  7.37361E+03 0.00970  7.22576E+03 0.00640  6.29434E+03 0.00705  6.12655E+03 0.00782  6.11942E+03 0.00972  6.03965E+03 0.00857  1.17855E+04 0.00798  1.14225E+04 0.00762  8.39008E+03 0.00569  5.43368E+03 0.00416  6.33276E+03 0.00794  5.97190E+03 0.00941  5.44009E+03 0.00903  9.20000E+03 0.00462  2.10457E+03 0.00822  2.63889E+03 0.01245  2.42384E+03 0.00852  1.33061E+03 0.00795  2.37550E+03 0.01026  1.63527E+03 0.01529  1.35920E+03 0.01079  2.62333E+02 0.02113  2.69407E+02 0.02754  2.62901E+02 0.03205  2.76242E+02 0.02710  2.69274E+02 0.02092  2.69268E+02 0.02349  2.77344E+02 0.02360  2.53366E+02 0.02189  5.05617E+02 0.01728  7.74626E+02 0.02033  9.77750E+02 0.01785  2.63603E+03 0.00813  2.66456E+03 0.01210  2.68260E+03 0.01242  1.58196E+03 0.01321  1.07755E+03 0.01125  7.60733E+02 0.01501  8.28503E+02 0.01786  1.41499E+03 0.01370  1.75052E+03 0.00702  3.28118E+03 0.00762  5.04546E+03 0.00578  8.90410E+03 0.00846  7.01081E+03 0.00620  5.63377E+03 0.00846  4.49629E+03 0.00782  4.37373E+03 0.00898  4.60095E+03 0.00728  4.14466E+03 0.01149  2.94693E+03 0.01383  2.85124E+03 0.01139  2.61793E+03 0.01136  2.40402E+03 0.01072  1.85345E+03 0.01005  1.27129E+03 0.00934  4.50668E+02 0.02016 ];

% Integral parameters:

INF_KINF                  (idx, [1:   2]) = [  1.41878E+00 0.00311 ];

% Flux spectra in infinite geometry:

INF_FLX                   (idx, [1:   4]) = [  5.36567E+20 0.00236  1.19432E+20 0.00405 ];
INF_FISS_FLX              (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Reaction cross sections:

INF_TOT                   (idx, [1:   4]) = [  6.41894E-01 0.00078  1.67468E+00 0.00101 ];
INF_CAPT                  (idx, [1:   4]) = [  5.83354E-03 0.00804  3.08633E-02 0.00196 ];
INF_ABS                   (idx, [1:   4]) = [  8.45722E-03 0.00613  9.66632E-02 0.00297 ];
INF_FISS                  (idx, [1:   4]) = [  2.62368E-03 0.00287  6.57999E-02 0.00363 ];
INF_NSF                   (idx, [1:   4]) = [  6.62112E-03 0.00293  1.60335E-01 0.00363 ];
INF_NUBAR                 (idx, [1:   4]) = [  2.52360E+00 0.00032  2.43670E+00 0.0E+00 ];
INF_KAPPA                 (idx, [1:   4]) = [  2.03318E+02 3.0E-05  2.02270E+02 0.0E+00 ];
INF_INVV                  (idx, [1:   4]) = [  6.20072E-08 0.00314  2.90547E-06 0.00164 ];

% Total scattering cross sections:

INF_SCATT0                (idx, [1:   4]) = [  6.33499E-01 0.00076  1.57826E+00 0.00113 ];
INF_SCATT1                (idx, [1:   4]) = [  2.82951E-01 0.00104  3.68334E-01 0.00251 ];
INF_SCATT2                (idx, [1:   4]) = [  1.10741E-01 0.00214  8.10169E-02 0.01078 ];
INF_SCATT3                (idx, [1:   4]) = [  7.62656E-03 0.01992  2.29010E-02 0.01019 ];
INF_SCATT4                (idx, [1:   4]) = [ -1.20259E-02 0.01401 -9.56188E-03 0.03533 ];
INF_SCATT5                (idx, [1:   4]) = [  3.95612E-04 0.46040  4.68280E-03 0.07725 ];
INF_SCATT6                (idx, [1:   4]) = [  5.83458E-03 0.03180 -1.59349E-02 0.02981 ];
INF_SCATT7                (idx, [1:   4]) = [  7.59841E-04 0.12051  1.07388E-03 0.50483 ];

% Total scattering production cross sections:

INF_SCATTP0               (idx, [1:   4]) = [  6.33533E-01 0.00076  1.57826E+00 0.00113 ];
INF_SCATTP1               (idx, [1:   4]) = [  2.82954E-01 0.00104  3.68334E-01 0.00251 ];
INF_SCATTP2               (idx, [1:   4]) = [  1.10743E-01 0.00215  8.10169E-02 0.01078 ];
INF_SCATTP3               (idx, [1:   4]) = [  7.62744E-03 0.01994  2.29010E-02 0.01019 ];
INF_SCATTP4               (idx, [1:   4]) = [ -1.20268E-02 0.01397 -9.56188E-03 0.03533 ];
INF_SCATTP5               (idx, [1:   4]) = [  3.96434E-04 0.45990  4.68280E-03 0.07725 ];
INF_SCATTP6               (idx, [1:   4]) = [  5.83454E-03 0.03178 -1.59349E-02 0.02981 ];
INF_SCATTP7               (idx, [1:   4]) = [  7.60418E-04 0.11998  1.07388E-03 0.50483 ];

% Diffusion parameters:

INF_TRANSPXS              (idx, [1:   4]) = [  2.67961E-01 0.00133  1.13340E+00 0.00109 ];
INF_DIFFCOEF              (idx, [1:   4]) = [  1.24398E+00 0.00133  2.94103E-01 0.00110 ];

% Reduced absoption and removal:

INF_RABSXS                (idx, [1:   4]) = [  8.42306E-03 0.00601  9.66632E-02 0.00297 ];
INF_REMXS                 (idx, [1:   4]) = [  3.00174E-02 0.00148  9.71559E-02 0.00521 ];

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

INF_S0                    (idx, [1:   8]) = [  6.11876E-01 0.00076  2.16222E-02 0.00214  7.33518E-04 0.06563  1.57753E+00 0.00114 ];
INF_S1                    (idx, [1:   8]) = [  2.76550E-01 0.00104  6.40097E-03 0.00672  3.09402E-04 0.07586  3.68024E-01 0.00254 ];
INF_S2                    (idx, [1:   8]) = [  1.12896E-01 0.00206 -2.15448E-03 0.01360  2.16168E-04 0.10131  8.08007E-02 0.01073 ];
INF_S3                    (idx, [1:   8]) = [  1.01155E-02 0.01596 -2.48897E-03 0.01050  1.15403E-04 0.11203  2.27856E-02 0.01044 ];
INF_S4                    (idx, [1:   8]) = [ -1.14092E-02 0.01525 -6.16683E-04 0.01751  1.07261E-05 0.79203 -9.57261E-03 0.03482 ];
INF_S5                    (idx, [1:   8]) = [  1.99386E-04 0.89732  1.96226E-04 0.09791 -4.19357E-06 1.00000  4.68699E-03 0.07663 ];
INF_S6                    (idx, [1:   8]) = [  5.99704E-03 0.03006 -1.62461E-04 0.09943 -2.90136E-05 0.42304 -1.59059E-02 0.02944 ];
INF_S7                    (idx, [1:   8]) = [  1.04163E-03 0.09398 -2.81792E-04 0.05609 -3.05871E-05 0.35485  1.10446E-03 0.49092 ];

% Scattering production matrixes:

INF_SP0                   (idx, [1:   8]) = [  6.11911E-01 0.00076  2.16222E-02 0.00214  7.33518E-04 0.06563  1.57753E+00 0.00114 ];
INF_SP1                   (idx, [1:   8]) = [  2.76553E-01 0.00104  6.40097E-03 0.00672  3.09402E-04 0.07586  3.68024E-01 0.00254 ];
INF_SP2                   (idx, [1:   8]) = [  1.12897E-01 0.00206 -2.15448E-03 0.01360  2.16168E-04 0.10131  8.08007E-02 0.01073 ];
INF_SP3                   (idx, [1:   8]) = [  1.01164E-02 0.01597 -2.48897E-03 0.01050  1.15403E-04 0.11203  2.27856E-02 0.01044 ];
INF_SP4                   (idx, [1:   8]) = [ -1.14102E-02 0.01520 -6.16683E-04 0.01751  1.07261E-05 0.79203 -9.57261E-03 0.03482 ];
INF_SP5                   (idx, [1:   8]) = [  2.00209E-04 0.89456  1.96226E-04 0.09791 -4.19357E-06 1.00000  4.68699E-03 0.07663 ];
INF_SP6                   (idx, [1:   8]) = [  5.99700E-03 0.03005 -1.62461E-04 0.09943 -2.90136E-05 0.42304 -1.59059E-02 0.02944 ];
INF_SP7                   (idx, [1:   8]) = [  1.04221E-03 0.09367 -2.81792E-04 0.05609 -3.05871E-05 0.35485  1.10446E-03 0.49092 ];

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

CMM_TRANSPXS              (idx, [1:   4]) = [  2.83112E-01 0.00494  9.32090E-01 0.01167 ];
CMM_TRANSPXS_X            (idx, [1:   4]) = [  2.82544E-01 0.00483  9.64450E-01 0.01806 ];
CMM_TRANSPXS_Y            (idx, [1:   4]) = [  2.83417E-01 0.00718  9.38392E-01 0.01711 ];
CMM_TRANSPXS_Z            (idx, [1:   4]) = [  2.83542E-01 0.00807  9.01037E-01 0.02105 ];
CMM_DIFFCOEF              (idx, [1:   4]) = [  1.17765E+00 0.00494  3.58040E-01 0.01121 ];
CMM_DIFFCOEF_X            (idx, [1:   4]) = [  1.18000E+00 0.00480  3.46658E-01 0.01846 ];
CMM_DIFFCOEF_Y            (idx, [1:   4]) = [  1.17667E+00 0.00716  3.56136E-01 0.01676 ];
CMM_DIFFCOEF_Z            (idx, [1:   4]) = [  1.17628E+00 0.00791  3.71325E-01 0.01970 ];

% Delayed neutron parameters (Meulekamp method):

BETA_EFF                  (idx, [1:  14]) = [  6.56971E-03 0.05419  1.21973E-04 0.42567  8.83929E-04 0.14680  1.15712E-03 0.13574  3.22426E-03 0.07319  8.66868E-04 0.14581  3.15556E-04 0.23440 ];
LAMBDA                    (idx, [1:  14]) = [  8.55954E-01 0.13568  1.24906E-02 5.6E-09  3.16913E-02 0.00157  1.09604E-01 0.00114  3.18363E-01 0.00132  1.34968E+00 0.00096  8.86787E+00 0.01081 ];

