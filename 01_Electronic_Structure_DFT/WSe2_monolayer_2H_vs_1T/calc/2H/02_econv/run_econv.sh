#!/bin/bash
#==================================================================================
#SBATCH -J 2H-WSe2_econv        # job name
#SBATCH -o 2H-WSe2_econv.o%j    # output and error file name (%j expands to jobID)
#-----------------------------
#SBATCH --partition=ivybrid  # queue name: ivybrid (broadwe skylake emerald)
#SBATCH --nodes=1            # number of nodes
#SBATCH --ntasks-per-node=12 # cores per node
#SBATCH --exclusive
#==================================================================================
VASP642avx1="/home/VASP/vasp4us_hk/vasp.6.4.2.avx1.std.fioG13.6.x"
VASP642avx1g="/home/VASP/vasp4us_hk/vasp.6.4.2.avx1.gam.fioG13.6.x"
VASP=${VASP642avx1}
#VASP=${VASP642avx1g}
# ---------------------------------------------------------------------------------
module purge
module add compiler/2023.1.0
module add mkl/2023.1.0
module add mpi/2021.12.1
module add VASP/basic_tools
#==================================================================================
for ECUT in 200 225 250 275 300 325 350 375 400 425 450 475 500 525 550 \
            575 600 625 650 675 700 725 750 775 800 825 850 875 900
do
# for ((ECUT=200; ECUT<=900; ECUT=ECUT+25)); do
  sed "s/cutoff/$ECUT/" INCAR.ecut > INCAR

  mpirun -np $SLURM_NTASKS $VASP > stdout

  mv OUTCAR out.e$ECUT
  mv stdout std.e$ECUT
done
