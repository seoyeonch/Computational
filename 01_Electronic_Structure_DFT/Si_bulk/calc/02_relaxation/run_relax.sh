#!/bin/bash
# Step 1: Variable-cell relaxation
cp INCAR_vcsv INCAR
cp POSCAR.exp POSCAR
vasp_std

# Step 2: Final ionic relaxation at fixed cell
cp CONTCAR POSCAR
cp INCAR_rlx INCAR
vasp_std
