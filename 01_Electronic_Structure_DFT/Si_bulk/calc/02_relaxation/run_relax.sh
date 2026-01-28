#!/bin/bash
# Step 1: Variable-cell relaxation
cp INCAR.vcsv INCAR
cp POSCAR.exp POSCAR
vasp_std

# Step 2: Final ionic relaxation at fixed cell
cp CONTCAR POSCAR
cp INCAR.rlxeq INCAR
vasp_std
