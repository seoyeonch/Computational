# Generic gnuplot script for plotting VASP band structures
# Input: band.dat (k-path, energies)
# Energies are shifted by the valence band maximum (VBM)

set terminal pngcairo size 800,1200 font "Helvetica,18"
set output 'band.png'

# High-symmetry points
G=0.0; M=1.0941; K=1.7258; G2=2.9892
set xrange [G:G2]
set xtics ('{/Symbol G}' G,'M' M,'K' K,'{/Symbol G}' G2)

# Energy reference
Evbm = -2.347641
set ylabel 'E - E_{VBM} (eV)'

set yrange [-17:7]
set xzeroaxis lw 2

# Plot
plot 'band.dat' using 1:($2-Evbm) with lines lw 2 lc rgb "black" notitle
