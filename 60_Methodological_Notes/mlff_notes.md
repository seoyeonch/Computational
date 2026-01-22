# Notes on Machine-Learned Force Fields (VASP MLFF)

I studied the theoretical foundations of VASP’s machine-learned force field
(MLFF) framework and followed official tutorials for molecules, bulk systems,
and molecular dynamics.

MLFF aims to reproduce DFT-level forces and energies using trained interatomic
potentials, enabling larger-scale simulations at reduced computational cost.

While MLFF provides significant speedup, its accuracy depends strongly on
the quality and representativeness of the training dataset.
