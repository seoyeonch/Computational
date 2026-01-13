## Purpose of This Calculation
This bulk silicon calculation serves as a reference system
to validate the DFT workflow used in more complex material systems.
By reproducing the well-known electronic structure of Si,
the reliability of convergence criteria and computational settings
can be assessed.

## Convergence Strategy
Plane-wave cutoff energy (ENCUT) and k-point mesh convergence tests
were performed on the initial bulk structure.
Total energy convergence within ~X × 10⁻³ eV per cell
(≈X meV/atom) was used as the criterion for selecting stable parameters.

## Structural Relaxation
Using the converged ENCUT and k-point mesh,
the bulk Si structure was fully relaxed until residual forces
were below X eV/Å.
The optimized lattice constant is consistent with typical PBE results.

## Electronic Structure Validation
The calculated band structure reproduces the indirect band gap
of bulk silicon, with the valence band maximum at Γ
and the conduction band minimum near the X point.
As expected for semi-local DFT, the band gap is underestimated,
but the overall band topology and DOS features are in good agreement
with standard references.

## Role in This Repository
This project provides a baseline validation of the electronic structure
calculation workflow.
The same convergence strategy and relaxation protocol
were subsequently applied to low-dimensional systems
such as monolayer WSe₂.
