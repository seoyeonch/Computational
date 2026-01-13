#!/bin/bash
# ENCUT convergence sweep

for ECUT in 200 225 250 275 300 325 350 375 400 425 450 475 500 525 550 \
            575 600 650 675 700 725 750 775 800 825 850 875 900
do
# for ((ECUT=200; ECUT<=900; ECUT=ECUT+25)); do
  sed "s/ENCUT=.*/ENCUT=$E/" INCAR.ecut > INCAR
  
  mpirun -np $NPROC vasp_std > stdout
  
  mv OUTCAR out.e$ECUT
  mv stdout std.e$ECUT
done
