# Structural Relaxation of Monolayer WSe₂

Structural relaxation was performed in two stages.

1. **Initial relaxation with in-plane lattice optimization**  
   Atomic positions and in-plane lattice vectors were relaxed
   while maintaining sufficient vacuum spacing along the out-of-plane direction
   to model an isolated monolayer.

2. **Final ionic relaxation at fixed lattice**  
   Using the optimized in-plane lattice parameters from the first step,
   a final relaxation of atomic positions was performed.
   The resulting structure was used for all subsequent electronic structure calculations.

The final relaxed structure is provided as `POSCAR_final`.


Performs a final structural relaxation using converged ENCUT
and k-point mesh parameters to obtain the production geometry.

This optimized structure is used for subsequent DOS and band structure calculations.
