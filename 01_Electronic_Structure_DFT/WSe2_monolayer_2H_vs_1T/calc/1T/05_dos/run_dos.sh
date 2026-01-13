#!/bin/bash
# Generic VASP run script

mpirun -np $NPROC vasp_std > stdout
