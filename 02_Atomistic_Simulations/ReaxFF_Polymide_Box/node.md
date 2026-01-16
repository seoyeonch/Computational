# Notes: ReaxFF MD Simulation of a Polyimide Box

## What I Did
I performed classical molecular dynamics simulations of a polyimide system
using LAMMPS with a ReaxFF force field (CHON-2019).
The workflow consisted of structure preparation, energy minimization,
equilibration under NVT/NPT ensembles, and short production runs.

The polyimide box structure was provided as an atomistic input configuration
and simulated using a reactive force field to allow bond flexibility
during thermal equilibration.

---

## What I Checked
During the simulations, polymer-scale observables such as dipole moment
and radius of gyration were computed using LAMMPS built-in computes.
These quantities were monitored to qualitatively assess structural stability
and large-scale conformational behavior of the polymer system.

Simulation trajectories were visually inspected using VMD and Avogadro.
By comparing initial and equilibrated configurations, I confirmed that
the system remained physically reasonable without unphysical bond breaking
or numerical instability during equilibration.

---

## What This Shows
This example demonstrates practical familiarity with atomistic MD workflows,
including force-field-based modeling, ensemble control, and post-simulation
verification using both numerical outputs and trajectory visualization.

The simulation was not intended to produce quantitatively accurate material
properties, but rather to verify basic stability and to gain experience
in handling polymer systems at the atomistic level.

---

## Limitations
This simulation is based on a classical reactive force field and does not
capture electronic structure effects.
Quantitative predictions of electronic or spectroscopic properties
would require first-principles approaches such as DFT.

Accordingly, this MD example is included as supplementary experience
and is not the primary focus of my research portfolio.
