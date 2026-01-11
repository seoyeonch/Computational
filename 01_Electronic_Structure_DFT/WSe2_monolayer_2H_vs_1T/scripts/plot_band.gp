# ==================================================
# Gnuplot script for plotting electronic band structure
# from VASP band calculation results.
#
# Input:
#   - band_up.001, band_up.002 : eigenvalue data
# These files are generated after band calculations
# and are stored in the data/ directory.
# Parameters to modify:
#   - High-symmetry k-points (G, M, K)
#   - Reference energy (VBM or Fermi level)
# ==================================================

set term postscript enhanced color "Helvetica" 20
set output "band_structure.eps"
set size 0.6,1.0

# High-symmetry k-points (example: hexagonal lattice)
G  = 0.0000
M  = 1.0941
K  = 1.7258
G2 = 2.9892

set xrange [G:G2]
set xtics ('{/Symbol G}' G, 'M' M, 'K' K, '{/Symbol G}' G2)
set xzeroaxis lw 2

# --------------------------------------------------
# Reference energy
# For semiconductors: use valence band maximum (VBM)
# For metals: replace with Fermi energy
# --------------------------------------------------
Evbm = -2.347641   # obtained from EIGENVAL
dE = Evbm

emin = -17.0
emax =  7.0
set yrange [emin:emax]
set ylabel "E - E_{VBM} (eV)"

set format y "%.1f"

# Vertical lines at high-symmetry points
set arrow from M,emin to M,emax nohead lw 1 lc rgb "black"
set arrow from K,emin to K,emax nohead lw 1 lc rgb "black"

# Plot band data
plot \
  "band_up.001" using 1:($2-dE) with lines notitle, \
  ""            using 1:($3-dE) with lines notitle, \
  ""            using 1:($4-dE) with lines notitle, \
  ""            using 1:($5-dE) with lines notitle, \
  ""            using 1:($6-dE) with lines notitle, \
  "band_up.002" using 1:($2-dE) with lines notitle, \
  ""            using 1:($3-dE) with lines notitle
