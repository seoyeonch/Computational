# Computational Condensed Matter Physics Portfolio

## Overview
This repository documents my hands-on experience in computational condensed matter physics,
with a primary focus on density functional theory (DFT) calculations for electronic structure analysis.
The projects are organized to emphasize reproducible workflows, convergence testing,
and physical interpretation of results.

## Research Focus
- Density Functional Theory (DFT) for electronic structure calculations
- Convergence testing and reproducible computational workflows
- Electronic properties of bulk and low-dimensional materials
- Extension toward molecular dynamics and machine-learned force fields

## Primary Projects

### 1. WSe₂ Monolayer (2H vs 1T)
**DFT-based electronic structure comparison of structural phases**

- Systematic ENCUT and k-point convergence tests
- Structural relaxation and electronic structure analysis (DOS, band structure)
- Qualitative comparison of semiconducting (2H) and metallic (1T) phases
- Discussion of limitations and future extensions (SOC, phonons)

📂 `01_Electronic_Structure_DFT/WSe2_monolayer_2H_vs_1T`

---

### 2. Bulk Silicon
**Reference DFT calculation for workflow validation**

- Convergence testing and structural relaxation
- Band structure and DOS analysis of a prototypical semiconductor
- Used as a baseline to validate computational settings

📂 `01_Electronic_Structure_DFT/Si_bulk`

---

## Technical Skills
- **DFT codes**: VASP
- **Simulation methods**: electronic structure, structural relaxation, DOS, band structure
- **Related tools**: LAMMPS (introductory MD experience)
- **Scripting**: Bash (job execution, data extraction)
- **Post-processing**: data analysis and visualization for electronic structure

## Notes on Reproducibility
All projects follow a consistent directory structure
(`relax → convergence → production → analysis`)
with minimal input files tracked for reproducibility.
Large binary outputs and licensed files are intentionally excluded.
