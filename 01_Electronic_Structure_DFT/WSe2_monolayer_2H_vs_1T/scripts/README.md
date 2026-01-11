# Visualization and Post-processing Scripts

This directory contains minimal scripts used for post-processing
and visualization of VASP calculation results in this project.

## Contents

- `extract_econv.sh`  
  Extracts total energy data from ENCUT convergence calculations.

- `extract_kconv.sh`  
  Extracts total energy data from k-point convergence calculations.

- `plot_band.gp`  
  Gnuplot script for plotting electronic band structures
  from band calculation outputs (e.g., `band_up.001`, `band_up.002`).

- `plot_dos.gp`  
  Gnuplot script for plotting total density of states (DOS),
  with energies referenced to the valence band maximum.

## Notes

These scripts are written as reusable templates and are intentionally
kept simple to emphasize reproducibility rather than visualization style.
