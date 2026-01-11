# ==================================================
# Gnuplot script for plotting density of states (DOS)
# from VASP DOS calculations.
#
# Input:
#   - dos.dat : total DOS (energy, DOS)
# Reference energy:
#   - Valence band maximum (VBM) for semiconductors
# ==================================================

set terminal postscript eps enhanced color "Helvetica" 20
set output "dos_total.eps"

set size 1.0,1.0
set border lw 2
set yzeroaxis
set key
set style fill solid 0.3 noborder

# --------------------------------------------------
# Reference energy (adjust if necessary)
# --------------------------------------------------
Evbm = -2.347641   # obtained from EIGENVAL
dE = Evbm

# Energy range
set xrange [-10:6]
set yrange [0:*]

set xlabel "E - E_{VBM} (eV)"
set ylabel "DOS (states/eV)"

set format y "%.1f"

# Plot total DOS
plot "dos.dat" using ($1-dE):2 with filledcurves title "Total DOS"
