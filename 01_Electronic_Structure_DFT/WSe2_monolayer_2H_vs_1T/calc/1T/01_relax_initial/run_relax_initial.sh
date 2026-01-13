#!/bin/bash
# Generic VASP run script (initial relaxation)

mpirun -np $NPROC vasp_std > stdout
