# ReaxFF Polyimide Box Simulation (LAMMPS)

## Overview
This directory contains a representative classical molecular dynamics (MD)
simulation of a polyimide box performed using LAMMPS with a ReaxFF force field
(CHON-2019).

This example is included to demonstrate familiarity with reactive force-field
based MD workflows and basic post-simulation verification.
It serves as supplementary computational experience, while my primary research
focus remains on DFT-based electronic structure calculations.

---

## Context and Learning Process
This workflow was constructed while learning LAMMPS and ReaxFF
under faculty supervision.
Based on provided examples and references, I modified input scripts,
performed test simulations, and validated the stability of the system
through trajectory inspection and basic observables.

---

## Simulation Workflow

The overall workflow consists of:

1. **Structure preparation**
   - Initial polyimide box structure provided as an atomistic data file

2. **Energy minimization**
   - FIRE and conjugate gradient minimization
   - Output structure written as a minimized configuration

3. **Thermal equilibration**
   - Gradual heating using Langevin thermostat (annealing loop)
   - Charge equilibration using `fix qeq/reax`

4. **NVT equilibration**
   - Constant-temperature MD at 300 K
   - Short production run for stability check

---

## Input Files

The minimal reproducible input set is provided in the `input/` directory:

- `in.ReaxFF.lmp`  
  Main LAMMPS input script defining the ReaxFF setup, minimization,
  annealing, and NVT equilibration workflow.

- `data.polyimide_box.lmp`  
  Initial atomistic configuration of the polyimide box.

- `data.polyimide_minimized.lmp`  
  Minimized structure after energy minimization.

- `polyimide_initial.pdb`  
  Initial structure for visualization in VMD / Avogadro.

- `CHON-2019.ff`  
  ReaxFF parameter file for H–C–N–O systems.

Large trajectory files, restart files, and executable binaries
are intentionally excluded from the repository.

---

## Verification

- Polymer-scale observables such as dipole moment and radius of gyration
  were computed during equilibration.
- Trajectories were visually inspected using VMD and Avogadro.
- Structural stability was confirmed by comparing initial and equilibrated
  configurations and by checking the absence of unphysical bond breaking
  or numerical instability.

---

## Scope and Limitations

This simulation is based on a classical reactive force field and does not
include explicit electronic structure effects.
It is intended as qualitative verification and workflow training,
not as a source of quantitatively accurate material properties.

This example complements my primary DFT-based work by providing experience
with atomistic simulations at larger time and length scales.
