# Classical Molecular Dynamics with LAMMPS

## Overview
This directory contains representative classical molecular dynamics (MD)
simulations performed using LAMMPS.
These examples are included to demonstrate familiarity with MD workflows,
force-field-based atomistic modeling, and post-simulation verification.

Classical MD is treated here as supplementary computational experience.
My primary research focus is on DFT-based electronic structure calculations,
with MD used to explore atomistic behavior at larger time and length scales
beyond first-principles approaches.

---

## Included Examples

### 1. ReaxFF Polyimide Box
A classical MD simulation of a polyimide box using a reactive force field
(ReaxFF, CHON-2019).

- Workflow: structure preparation → energy minimization →
  equilibration under NVT/NPT ensembles → short production run
- Monitored quantities: dipole moment, radius of gyration
- Verification: visual inspection of trajectories using VMD and Avogadro
- Purpose: qualitative stability check and MD workflow experience

Detailed notes and minimal reproducible inputs are provided in:
`ReaxFF_Polyimide_Box/`

---

### 2. PVDF Polymer MD (Supplementary Example)
An additional MD example involving a PVDF polymer system.
This case focuses on multi-stage MD workflows, including equilibration
and deformation, and is included as a secondary illustration of
classical MD usage.

- Focus: polymer deformation and qualitative dipole behavior
- Scope: supplementary experience only
- Note: no quantitative material properties are claimed

Details are provided in:
`PVDF_MD_Example/`

---

## Methodological Scope
Across the included examples, the following MD aspects were handled:

- Construction and preparation of atomistic polymer systems
- Selection and use of force fields (ReaxFF and classical FFs)
- Ensemble control (NVT / NPT)
- Monitoring of polymer-scale observables
- Trajectory inspection and qualitative validation

Large trajectory files, restart files, and executable binaries
are intentionally excluded to keep the repository lightweight
and focused on reproducibility and interpretation.

---

## Limitations
The simulations presented here are based on classical force fields
and do not include explicit electronic structure effects.
As such, they are not intended for quantitative electronic or spectroscopic
predictions.

These MD examples are included to complement my primary DFT-based work
and to demonstrate broader computational experience.
