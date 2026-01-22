# Notes on DFT Convergence

In my Si and WSe₂ calculations, I performed convergence tests with respect
to the plane-wave cutoff energy (ENCUT) and k-point mesh density.

For Si bulk, total energy convergence within ~1 meV/atom was achieved
at ENCUT ≈ 400 eV and a 9×9×9 k-mesh.

For WSe₂ monolayers, a denser in-plane k-mesh was required due to reduced
dimensionality and flatter bands near the Fermi level.

These tests were used to balance computational cost and numerical accuracy
for subsequent electronic structure calculations.
