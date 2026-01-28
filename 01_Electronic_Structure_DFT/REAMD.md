# First-Principles Electronic Structure Calculations using DFT

## Overview

This repository contains first-principles density functional theory (DFT) studies on crystalline and low-dimensional materials, with a focus on electronic structure analysis and reproducible computational workflows.
All calculations are performed using VASP on SLURM-based Linux HPC clusters, with post-processing and visualization conducted in Python.

---

## Research Motivation

Understanding structure–property relationships in acknowledged benchmark systems (bulk Si) and 2D transition metal dichalcogenides (TMDs) is essential for reliable computational materials research.
This project aims to:

- establish robust convergence protocols for plane-wave DFT,

- analyze phase-dependent electronic properties, and

- develop reproducible, scalable workflows suitable for high-throughput calculations.

## Key Research Outcomes

- Verified DFT workflow reliability through benchmark calculations on bulk silicon.

- Demonstrated phase-dependent electronic behavior in monolayer WSe₂:
   - 2H phase: semiconducting
   - 1T phase: metallic

- Established convergence procedures for:
   - plane-wave cutoff energy
   - k-point sampling

- Implemented automated batch job management on SLURM-based HPC systems.

---

## Computational Methodology

- DFT Code: VASP (PAW pseudopotentials, plane-wave basis)

- Exchange–Correlation Functional: GGA-PBE

- Convergence Parameters:
   - Energy cutoff convergence
   - k-point mesh convergence

- HPC Environment:
   - Linux clusters
   - SLURM job scheduler

- Post-processing & Visualization:
   - Gnuplot

---

## Project Structure
1. Bulk Silicon (Benchmark Study)

Objective:
Validate computational setup and convergence protocols.

Key Tasks:

- Structural optimization

- Energy cutoff and k-point convergence tests

- Band structure calculation

2. Monolayer WSe₂ — 2H vs 1T Phases

Objective:
Compare electronic structures of semiconducting (2H) and metallic (1T) phases.

Key Tasks:

- Geometry optimization of both phases

- Electronic band structure and DOS analysis

- Phase-dependent electronic behavior comparison

Findings:

- 2H-WSe₂ exhibits a finite band gap

- 1T-WSe₂ shows metallic band dispersion

- Results consistent with known experimental and theoretical trends

---

## Reproducibility

Each project directory includes:

- input files (INCAR, POSCAR, KPOINTS)

- SLURM job scripts

- post-processing scripts

Calculations are organized to allow full reproduction of results given access to VASP and an HPC environment.

---

## How to Run (Example)

sbatch run.sh

Post-processing:

gnuplot plot_band.gp

---

## Research Skills Demonstrated

- First-principles DFT calculations

- Convergence testing and validation

- Electronic structure analysis (band structure, DOS)

- Linux-based HPC computing

- SLURM batch job automation

- Scientific data visualization

---

## Contact

S. Chae
Undergraduate Researcher — Computational Condensed Matter Physics
GitHub: https://github.com/S-Chae
