## Overview
This directory contains a representative classical molecular dynamics
simulation of a polyimide box performed using LAMMPS with a ReaxFF force field.
This project is included to demonstrate familiarity with MD workflows
and force-field-based atomistic simulations.

This workflow was constructed while learning LAMMPS and ReaxFF
under faculty supervision, and was gradually modified and validated
through test simulations and trajectory inspection.

## Method
- Code: LAMMPS
- Force field: ReaxFF (CHON-2019)
- Ensemble: NVT (equilibration)
- Time step: XX fs
- System: Polyimide box (approximately XX atoms)

## Verification
Trajectory files were visually inspected using VMD and Avogadro.
Structural stability during equilibration was confirmed by comparing
initial and final configurations.

## Limitations
This simulation is based on a classical reactive force field
and does not provide electronic structure information.
It is included as supplementary experience, not as primary research.
