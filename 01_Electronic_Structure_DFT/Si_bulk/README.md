# Electronic Structure of Bulk Silicon

## Overview
This project presents a DFT-based electronic structure calculation
of bulk silicon using VASP within the PBE approximation.
The workflow includes systematic convergence tests,
structural relaxation, and band structure/DOS analysis.

This project serves as a reference calculation
to validate the electronic structure workflow
used for more complex material systems.

---

## Key Results
- Indirect band gap reproduced at the qualitative level.
- Band structure and DOS are consistent with well-known references for bulk Si.

---

## Computational Details
- Exchange–correlation functional: PBE
- Plane-wave cutoff energy: XX eV (from convergence tests)
- k-point mesh: XX × XX × XX
- Structural relaxation until forces < XX eV/Å

---

## Convergence Summary
- ENCUT convergence within ~1 meV/atom above XX eV
- k-point convergence within ~1 meV/atom above XX × XX × XX

---

## Limitations
- Band gap underestimated due to the use of semi-local DFT.
- No quasiparticle corrections (HSE/GW) applied.

---

## Notes
This calculation provides a baseline
for validating computational settings
before applying the same methodology to low-dimensional materials.
