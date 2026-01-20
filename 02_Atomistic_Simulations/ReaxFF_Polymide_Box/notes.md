# Notes: ReaxFF MD Simulation of a Polyimide Box

## What I Did
I performed classical molecular dynamics simulations of a polyimide system
using LAMMPS with a ReaxFF force field (CHON-2019).
The workflow was developed while learning LAMMPS and ReaxFF under the guidance
of my advisor.

Starting from a provided polyimide box structure, I modified existing input
examples, performed energy minimization, thermal equilibration under NVT/NPT
ensembles, and short production runs.
Charge equilibration was applied at every step using `fix qeq/reax`.

---

## What I Checked
During the simulations, polymer-scale observables such as dipole moment
and radius of gyration were computed using LAMMPS built-in computes.
These quantities were monitored to qualitatively assess large-scale
conformational behavior and structural stability.

Simulation trajectories were visually inspected using VMD and Avogadro.
By comparing initial and equilibrated configurations, I verified that:

- The system remained physically reasonable during equilibration  
- No unphysical bond breaking occurred  
- No numerical instability or divergence was observed  

---

## What This Shows
This example demonstrates practical familiarity with:

- Reactive force-field based MD workflows (ReaxFF)
- Ensemble control (NVT / NPT, Langevin thermostat)
- Charge equilibration in reactive MD
- Post-simulation verification using both numerical outputs
  and trajectory visualization

The simulation was primarily intended as workflow training and qualitative
stability verification, rather than as a source of quantitative material data.

---

## Limitations
This simulation is based on a classical reactive force field and does not
capture electronic structure effects.
Quantitative prediction of electronic or spectroscopic properties would
require first-principles methods such as DFT.

Accordingly, this MD example is included as supplementary experience and is
not the primary focus of my research portfolio.
