# Computational Condensed Matter Portfolio

## Overview
This repository presents selected computational physics projects conducted
during my undergraduate studies in Applied Physics.
My primary research focus is on **DFT-based electronic structure calculations**
for condensed matter and low-dimensional materials, with supplementary
experience in atomistic simulations and machine-learned force fields.

This portfolio is intended to demonstrate:
- Practical experience with first-principles calculations (VASP)
- Understanding of electronic structure workflows and convergence strategies
- Familiarity with atomistic simulations beyond DFT (MD, MLFF)
- Emphasis on reproducibility, methodological clarity, and physical interpretation

---

## Primary Research Focus

### 1. Electronic Structure Calculations (DFT)

Directory: `01_Electronic_Structure_DFT/`

Main projects include:

- **Si bulk: band structure and density of states**  
  - Convergence tests (ENCUT, k-mesh)  
  - Structural relaxation  
  - Electronic band structure and DOS analysis  

- **WSe₂ monolayer: 2H vs 1T phases**  
  - Systematic convergence workflow  
  - Structural relaxation of both phases  
  - Band structure and DOS comparison  
  - Qualitative analysis of phase-dependent electronic behavior  

These projects constitute my primary research track and reflect my main
interest in electronic structure theory and first-principles modeling.

---

## Supporting Computational Experience

### 2. Atomistic Simulations (MD with LAMMPS)

Directory: `02_Atomistic_Simulations/`

This section contains supplementary molecular dynamics examples included to
demonstrate familiarity with classical atomistic workflows.

- **ReaxFF Polyimide Box**  
  Reactive MD using ReaxFF (C–H–O–N parameter set, J. Phys. Chem. B 2019)  
  - Energy minimization and annealing  
  - NVT / NPT equilibration  
  - Charge equilibration and qualitative stability checks  

- **PVDF Polymer MD Workflow**  
  Classical polymer MD using Interface Force Field (IFF)  
  - Multi-stage equilibration (NVT → NPT)  
  - Long-range electrostatics (PPPM) and SHAKE constraints  
  - Controlled deformation workflow  

These examples are included as **supplementary experience** and are not the
primary focus of my research portfolio.

---

## Methodological Notes

Directory: `60_Methodological_Notes/`

This directory contains short notes documenting:

- Convergence strategies and parameter selection  
- Practical limitations of standard DFT (e.g., band gap underestimation)  
- Assumptions behind classical force fields and MD  
- Theoretical background and limitations of machine-learned force fields  

These notes reflect my emphasis on **methodological understanding** rather
than black-box usage of simulation codes.

---

## Research Interests

My current interests include:

- Electronic structure of low-dimensional materials  
- Phase stability and electronic properties of 2D semiconductors  
- Beyond-DFT methods (hybrid functionals, GW, phonons)  
- Machine-learned interatomic potentials for large-scale simulations  

I am particularly interested in pursuing graduate studies in **computational
condensed matter physics** and **first-principles materials modeling**.

---

## Future Directions

Directory: `99_Future_Work/`

This section outlines natural next steps extending the calculations
presented in this portfolio, including beyond-DFT methods, lattice
dynamics, and finite-temperature effects.

These directions reflect awareness of methodological limitations and
are intended as conceptual extensions under graduate-level supervision.

---

## Reproducibility

For each project, only minimal reproducible input files are provided.
Large binary outputs (e.g., WAVECAR, CHGCAR, trajectories, restart files)
are intentionally excluded.

Each directory contains:
- Input files  
- Brief README explaining the workflow  
- Notes describing assumptions and limitations  

---

## Contact

This repository is maintained as part of my graduate school application
portfolio.

For further information or questions regarding the calculations, please feel
free to contact me.

---
