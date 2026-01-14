  set datafile fortran
  set encoding iso_8859_1
  set size 1.5, 1.2
  set border 31 lw 2
  set term postscript eps enhanced dashed color 'Helvetica' 20
  set notitle
  set key
  set yzeroaxis
  set output 'Si_bulk_DOS.eps'

  ##################################################

# XMIN = -18
# XMAX = 8
# set xr [XMIN:XMAX]
# set format x "%.0f"
# set  xtics font ",18"
# set  xtics 5
# set mxtics 1


# EMIN_ = -20.00
# EMAX_ =  10.00

# REF = 0.0

# EMIN = EMIN_-REF
# EMAX = EMAX_-REF

# In case of METAL
# dE = 0.0
# In case of INSULATOR/SEMICONDUCTOR
  Ef = 6.14620415            # read from DOSCAR: 6th line, 4th field
  Evbm =5.929167          # If possible, obtain from EIGENVAL (run07_dos/eig.dos)
  dE = Evbm - Ef
  ##################################################

  red     = "#FF0000"
  orange  = "#FF8000"
  pink    = "#FF0080"
  magenta = "#FF00FF"
  green   = "#00FF00"
  darkgreen   = "#008000"
  cyan    = "#00FFFF"
  blue    = "#0000FF"
  purple  = "#800080"
  black   = "#000000"

  ##################################################

  set style line 10 lc rgb red     lt 1 lw 3
  set style line 11 lc rgb red     lt 2 lw 3
  set style line 12 lc rgb red     lt 0 lw 5
  set style line 13 lc rgb red     pt 7 ps variable

  set style line 20 lc rgb orange  lt 1 lw 3
  set style line 21 lc rgb orange  lt 2 lw 3
  set style line 22 lc rgb orange  lt 0 lw 5
  set style line 23 lc rgb orange  pt 7 ps variable

  set style line 30 lc rgb pink    lt 1 lw 3
  set style line 31 lc rgb pink    lt 2 lw 3
  set style line 32 lc rgb pink    lt 0 lw 5
  set style line 33 lc rgb pink    pt 7 ps variable

  set style line 40 lc rgb magenta lt 1 lw 3
  set style line 41 lc rgb magenta lt 2 lw 3
  set style line 42 lc rgb magenta lt 0 lw 5
  set style line 43 lc rgb magenta pt 7 ps variable

  set style line 50 lc rgb darkgreen   lt 1 lw 3
  set style line 51 lc rgb darkgreen   lt 2 lw 3
  set style line 52 lc rgb darkgreen   lt 0 lw 5
  set style line 53 lc rgb darkgreen   pt 7 ps variable

  set style line 60 lc rgb cyan    lt 1 lw 3
  set style line 61 lc rgb cyan    lt 2 lw 3
  set style line 62 lc rgb cyan    lt 0 lw 5
  set style line 63 lc rgb cyan    pt 7 ps variable
  
  set style line 70 lc rgb blue    lt 1 lw 3
  set style line 71 lc rgb blue    lt 2 lw 3
  set style line 72 lc rgb blue    lt 0 lw 5
  set style line 73 lc rgb blue    pt 7 ps variable

  set style line 80 lc rgb purple  lt 1 lw 3
  set style line 81 lc rgb purple  lt 2 lw 3
  set style line 82 lc rgb purple  lt 0 lw 5
  set style line 83 lc rgb purple  pt 7 ps variable

  set style line 90 lc rgb black   lt 1 lw 3
  set style line 91 lc rgb black   lt 2 lw 3
  set style line 92 lc rgb black   lt 0 lw 5
  set style line 93 lc rgb black   pt 7 ps variable

  set style fill solid 0.25 noborder

  ##################################################

# In case of METAL
# set xlabel '{E-E_F (eV)}' font ",20"
# In case of INSULATOR/SEMICONDUCTOR
  set xlabel '{E-E_{VBM} (eV)}' font ",20"

  set ylabel '{DOS (states/eV)}' font ",20"

  set format y "%.1f"
  set ytics font ",18"
# set mytics 2

  ##################################################

# set tmargin at screen 0.60; set bmargin at screen 0.25
# set lmargin at screen 0.35; set rmargin at screen 0.95

  ##################################################
  
  set yr [0:6.0]
  set ytics 1.0
# set output 'ReS2_tdos.eps'
  pl 'tdos.dat' u ($1-dE):2 t 'total DOS' w l ls 90

# set yr [0:2.5]
# set ytics 0.5
# set output 'ReS2_ldos.eps'
# pl 'ldos.dat1' u ($1-dE):5 t 'Re' w l ls 10,\
#    'ldos.dat2' u ($1-dE):5 t 'S' w l ls 70

# set output 'ReS2_ldos_Re.eps'
# pl 'ldos.dat1' u ($1-dE):2 t 'Re(6s)' w l ls 10,\
#    '' u ($1-dE):3 t 'Re(6p)' w l ls 70,\
#    '' u ($1-dE):4 t 'Re(5d)' w l ls 50

# set output 'Si_ldos_S.eps'
# pl 'ldos.dat2' u ($1-dE):2 t 'S(3s)' w l ls 10,\
#    '' u ($1-dE):3 t 'S(3p)' w l ls 70
pause -1 'DOS Strcutre...'
