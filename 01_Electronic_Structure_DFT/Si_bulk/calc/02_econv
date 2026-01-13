#!/bin/bash
#=======================================================================
#SBATCH -J Si_bulk_econv # job name
#SBATCH -o myMPI.o%j  # output and error file name (%j expands to jobID)
#-----------------------------
#SBATCH --partition=ivybrid    # queue name: x5650 e5645 ivybrid broadwe skylake emerald
#SBATCH --nodes=1              # number of nodes
#SBATCH --ntasks-per-node=12   # cores per node
#SBATCH --exclusive
#=======================================================================

# For ivybrid
VASP642avx1="/TGM/Apps/VASP/VASP_BIN/6.4.2/AVX1/vasp.6.4.2.avx1.std.x"
VASP642avx1g="/TGM/Apps/VASP/VASP_BIN/6.4.2/AVX1/vasp.6.4.2.avx1.gam.x"
VASP642avx1ncl="/TGM/Apps/VASP/VASP_BIN/6.4.2/AVX1/vasp.6.4.2.avx1.ncl.x"

# For skylake, emerald
VASP642avx512="/TGM/Apps/VASP/VASP_BIN/6.4.2/AVX512/vasp.6.4.2.avx512.std.x"
VASP642avx512g="/TGM/Apps/VASP/VASP_BIN/6.4.2/AVX512/vasp.6.4.2.avx512.gam.x"
VASP642avx512ncl="/TGM/Apps/VASP/VASP_BIN/6.4.2/AVX512/vasp.6.4.2.avx512.ncl.x"
# ---------------------------------------------------------------------------------
#VASP=${VASP544}
#VASP=${VASP632g}
 VASP=${VASP642avx1}
#VASP=${VASP642avx512g}
#VASP=${VASP642avx512fileioG136}
# ---------------------------------------------------------------------------------
module purge
module add compiler/2023.1.0
module add mkl/2023.1.0
module add mpi/2021.12.1
module add VASP/basic_tools
# ---------------------------------------------------------------------------------
# ---------------------------------------------------------------------------------


for ECUT in 200 225 250 275 300 325 350 375 400 425 450 475 500 525 550 \
            575 600 625 650 675 700 725 750 775 800 825 850 875 900
do
  sed "s/cutoff/$ECUT/" INCAR.ecut > INCAR
  mpirun -np $SLURM_NTASKS $VASP > stdout
  #mpiexec.hydra -genv I_MPI_DEBUG 5 -np $SLURM_NTASKS $VASP > stdout
  mv OUTCAR out.e$ECUT
  mv stdout std.e$ECUT
done
