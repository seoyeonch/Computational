# Research Overview

This repository documents my hands-on work in **computational materials science**, with a focus on **electronic-structure calculations, atomistic simulations, and data-driven interatomic models**.  
The primary goal of this repository is to provide **reproducible, well-structured computational workflows**, rather than isolated calculation results.

---

## Research Interests

- Density Functional Theory (DFT)–based electronic structure calculations  
- Structure–property relationships in crystalline and low-dimensional materials  
- Convergence, validation, and reproducibility in first-principles simulations  
- Automation of simulation workflows and post-processing  
- Machine-learned interatomic force fields (introductory level)

---

## How to Read This Repository

If this is your first time here, I recommend the following order:

1. **Electronic Structure (DFT)**  
   `01_Electronic_Structure_DFT/`  
   - Parameter convergence (ENCUT, k-point mesh)  
   - Structural relaxation  
   - Band structure and density of states calculations  

2. **Atomistic Simulations**  
   `02_Atomistic_Simulations/`  
   - Classical simulations based on validated structures  

3. **Machine-Learned Force Fields**  
   `03_Machine_Learned_Force_Fields/`  
   - Initial experiments with data-driven interatomic potentials  

Each project directory contains:
- Input files (INCAR, KPOINTS, POSCAR)
- Execution scripts
- Raw data
- Post-processed figures
- A README describing the calculation purpose and workflow

---

## Representative Projects

### Bulk Silicon (DFT)
- Systematic ENCUT and k-point convergence tests  
- Final structural relaxation  
- Band structure and DOS calculations  
- Emphasis on reproducibility and clean workflow separation  

Location:  
`01_Electronic_Structure_DFT/Si_bulk/`

---

### Monolayer WSe₂: 2H vs 1T Phases
- Structural and electronic comparison between polymorphs  
- Phase-dependent electronic features analyzed via DFT  

Location:  
`01_Electronic_Structure_DFT/WSe2_monolayer_2H_vs_1T/`

---

## Technical Scope

- **DFT codes**: VASP  
- **Methods**: Geometry optimization, band structure, DOS, convergence testing  
- **Scripting**: Bash, gnuplot-based post-processing  
- **Data handling**: CSV-based extraction and analysis  
- **Materials systems**: Bulk semiconductors, 2D transition metal dichalcogenides  

---

## Philosophy

Rather than maximizing the number of systems studied, this repository emphasizes:
- Transparent calculation logic  
- Explicit convergence validation  
- Clear separation between inputs, outputs, and analysis  
- Ease of reproduction by other researchers

This repository reflects how I approach computational research in practice.
