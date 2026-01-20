# PVDF Molecular Dynamics Workflow (LAMMPS)

## Overview
This directory contains a representative classical molecular dynamics (MD)
workflow for a PVDF polymer system performed using LAMMPS with a polymer
force field (IFF).

This example is included as supplementary computational experience to
demonstrate familiarity with multi-stage MD workflows, ensemble control,
and polymer deformation simulations.
My primary research focus remains on DFT-based electronic structure
calculations.

---

## Context and Learning Process
This workflow was constructed while learning classical polymer MD
under faculty supervision.
Based on provided examples and references, I modified input scripts,
performed equilibration and deformation simulations, and verified the
stability of the system through trajectory inspection and qualitative
analysis.

---

## Simulation Workflow

The workflow consists of two main stages:

### 1. Equilibration (`in_equilibrate.lmp`)
- Multi-stage equilibration using NVT → NPT ensembles  
- Long-range electrostatics treated using PPPM  
- Hydrogen constraints applied via SHAKE  
- Time step: 1.0 fs  
- Purpose: thermal and volumetric stabilization of the PVDF system  

### 2. Deformation (`in_deformation.lmp`)
- Uniaxial deformation applied after equilibration  
- Controlled strain rate using `fix deform`  
- Purpose: qualitative observation of polymer response under strain  

---

## Input Files

The minimal reproducible input set is provided in the `input/` directory:

- `in_equilibrate.lmp`  
  Main equilibration script defining ensemble transitions (NVT → NPT),
  thermostat/barostat settings, long-range electrostatics, and constraints.

- `in_deformation.lmp`  
  Input script applying controlled deformation after equilibration.

- `data_pvdf_initial.lmp`  
  Initial atomistic configuration of the PVDF system.

- `PVDF-FF.lmp`  
  Polymer force field file (Interface Force Field, IFF).

Large trajectory files, restart files, and executable binaries are
intentionally excluded from the repository.

---

## Verification

- Trajectories were visually inspected using VMD and Avogadro.  
- Structural stability was confirmed during equilibration.  
- Qualitative changes under deformation were monitored to ensure
  physically reasonable behavior without numerical instability.

---

## Scope and Limitations

This example is based on a classical polymer force field and does not
include electronic structure effects.
It is intended as qualitative workflow training rather than as a source
of quantitatively accurate mechanical or dielectric properties.

This workflow complements my primary DFT-based work by providing experience
with polymer-scale atomistic simulations and deformation protocols.
