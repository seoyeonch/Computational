# ==================================================
# Gnuplot script for plotting density of states (DOS)
# from VASP DOS calculation results.
#
# Input files:
#   - tdos.dat  : total density of states
#   - ldos.dat1 : projected DOS (optional)
#   - ldos.dat2 : projected DOS (optional)
#
# Reference energy:
#   - Valence band maximum (VBM) for semiconductors
#   - Fermi level for metals
# ==================================================

set datafile fortran
set term postscript eps enhanced color "Helvetica" 20
set size 1.0,1.0
set border 31 lw 2
set key
set yzeroaxis

# --------------------------------------------------
# Reference energy (modify as needed)
# --------------------------------------------------
Ef   = -1.96426881   # from DOSCAR
Evbm = -2.347641     # from EIGENVAL
dE   = Evbm - Ef

# Energy range
emin = -18.0
emax =  8.0
set xrange [emin:emax]

set xlabel "E - E_{VBM} (eV)"
set ylabel "DOS (states/eV)"

set format y "%.1f"
set ytics 1.0

# --------------------------------------------------
# Total DOS
# --------------------------------------------------
set output "dos_total.eps"
plot "tdos.dat" using ($1-dE):2 with filledcurves notitle

# --------------------------------------------------
# Projected DOS (optional)
# Uncomment if needed
# --------------------------------------------------
# set output "dos_projected.eps"
# plot \
#   "ldos.dat1" using ($1-dE):5 title "W" with lines, \
#   "ldos.dat2" using ($1-dE):5 title "Se" with lines
