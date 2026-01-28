# Structural Relaxation of Bulk Silicon


Performs a final structural relaxation using converged ENCUT and k-point mesh parameters to obtain the production geometry.

This optimized structure is used for subsequent DOS and band structure calculations.


Structural relaxation was automated to ensure stability.
Variable-cell and fixed-cell relaxations were performed sequentially,
with convergence monitored through ionic step counts.
Only the final relaxed structure was used for production calculations.

Structural relaxation was performed in two stages:

1. **Variable-cell relaxation (ISIF = 3)**  
   Both lattice parameters and atomic positions were relaxed
   to remove residual stresses and obtain a physically reasonable cell.
   This step corresponds to the initial equilibration of the bulk structure.

2. **Fixed-cell ionic relaxation (ISIF = 2)**  
   Using the optimized lattice from the previous step,
   a final relaxation of atomic positions was performed
   to obtain the structure used for subsequent DOS and band calculations.

Charge density and local potential outputs (CHGCAR, LOCPOT)
were generated only in the final relaxation step.
Intermediate relaxation steps were performed without these outputs
to reduce unnecessary I/O overhead.
