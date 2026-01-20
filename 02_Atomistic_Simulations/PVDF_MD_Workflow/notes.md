# Notes: PVDF Polymer MD Workflow

## What I Did
I performed classical molecular dynamics simulations of a PVDF polymer system
using LAMMPS with a polymer force field (Interface Force Field, IFF).
The workflow was developed while learning polymer MD under the guidance
of my advisor.

Starting from a provided PVDF structure, I carried out multi-stage
equilibration using NVT and NPT ensembles, followed by controlled deformation
simulations.
Long-range electrostatics were treated using PPPM, and hydrogen constraints
were applied using SHAKE.

---

## What I Checked
During equilibration, I monitored basic thermodynamic stability and visually
inspected trajectories using VMD and Avogadro.
By comparing initial and equilibrated configurations, I verified that:

- The system reached a stable density under NPT equilibration  
- No numerical divergence or unphysical bond distortions occurred  
- The polymer configuration remained physically reasonable  

During deformation runs, I qualitatively observed structural response
under applied strain and confirmed smooth evolution without instabilities.

---

## What This Shows
This example demonstrates familiarity with:

- Construction of multi-stage MD workflows (equilibration → deformation)  
- Ensemble control (NVT / NPT) and barostat usage  
- Long-range electrostatics treatment (PPPM)  
- Constraint algorithms (SHAKE)  
- Qualitative verification of polymer stability and deformation behavior  

The focus of this example is on workflow understanding and simulation control,
rather than on extraction of quantitative mechanical properties.

---

## Limitations
This simulation is based on a classical polymer force field and does not
capture electronic structure effects or bond reactivity.
Quantitative prediction of electronic, dielectric, or spectroscopic
properties would require first-principles methods such as DFT.

Accordingly, this MD example is included as supplementary experience and is
not the primary focus of my research portfolio.
