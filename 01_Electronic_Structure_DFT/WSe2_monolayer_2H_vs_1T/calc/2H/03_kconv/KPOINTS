#!/bin/bash
#==================================================================================
#SBATCH -J 2H-WSe2_kconv        # job name
#SBATCH -o 2H-WSe2_kconv.o%j    # output and error file name (%j expands to jobID)
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
for (( k = 4; k <= 40; k = k + 4 )); do
  kpt=$k
  if (( k < 10 )); then
     kpt=0$k
  fi
#--- create KPT.$kpt
cat << ! > KPT.$kpt
Gamma-${kpt}x${kpt}
0
Gamma Monkhorst-Pack
${kpt} ${kpt} 1
0 0 0
!
#---
  cp KPT.$kpt KPOINTS

  mpirun -np $SLURM_NTASKS $VASP > stdout

  mv OUTCAR out.k$kpt
  mv stdout std.k$kpt
done
