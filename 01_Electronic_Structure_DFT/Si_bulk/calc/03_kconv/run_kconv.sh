#!/bin/bash
# k-point convergence test

for (( k = 4; k <= 20; k = k + 4 )); do
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

  mpirun -np $NPROC vasp_std > stdout

  mv OUTCAR out.k$kpt
  mv stdout std.k$kpt
done
