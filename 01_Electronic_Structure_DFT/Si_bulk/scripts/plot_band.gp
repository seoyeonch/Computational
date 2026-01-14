set term postscript enhanced solid color 'Helvetica' 20
set out 'BAND.eps'
set size 0.6,1.0

# panel boundary:  1    0.0000    1.1629
# panel boundary:  2    1.1629    2.1700

#set nokey

X=0.0000; G=1.1629; L=2.1700

# In case of METAL
# dE = 6.14620415
# In case of INSULATOR/SEMICONDUCTOR
  Ef = 6.15928351 # read from DOSCAR: 6th line, 4th field
  Evbm = 5.929167 # If possible, obtain from EIGENVAL (run07_dos/eig.dos)
# dE = Ef - Evbm
  dE = - Evbm
  ##################################################

set xr [X:L]
set noxtics
set xzeroaxis

emin=-15.0+dE
emax=+10.0+dE

#set yr [emin:emax]
set yr [-12:6]
set mytics 1
#set ytics emin,edel
#set xzeroaxis lw 4
set xtics ('X' X,'{/Symbol G}' G,'L' L)

set arrow 1 from G,-12,0  to G,6.0 lc rgb "black" lw 1 nohead

set linestyle 10 lc rgb "#000000" lw 1.5
set linestyle 11 lc rgb "red" lw 1.5
set linestyle 21 lc rgb "dark-violet" lw 1.5
set linestyle 31 lc rgb "magenta" lw 1.5
set linestyle 41 lc rgb "blue" lw 1.5
set linestyle 51 lc rgb "blue" lw 1.5
set linestyle 61 lc rgb "forest-green" lw 1.5
set linestyle 71 lc rgb "dark-orange" lw 1.5
set style line 13 lc rgb "#FF0000"     pt 7 ps variable
set style line 23 lc rgb "#0000FF"     pt 7 ps variable

#set ylabel 'E-E_F (eV)' offset 1,0
set ylabel 'E-E_{VBM} (eV)' offset 1,0
set format y '%.1f'

pl 'band_up.001' u 1:($2+dE) title "" w l ls 61,'' u 1:($3+dE) title "" w l ls 61,\
   '' u 1:($4+dE) title "" w l ls 61,'' u 1:($5+dE) title "" w l ls 61,\
   '' u 1:($6+dE) title "" w l ls 61,'' u 1:($7+dE) title "" w l ls 61,\
   '' u 1:($8+dE) title "" w l ls 61,'' u 1:($9+dE) title "" w l ls 61,\
   '' u 1:($10+dE) title "" w l ls 61,'' u 1:($11+dE) title "" w l ls 61,\
   'band_up.002' u 1:($2+dE) title "" w l ls 61,'' u 1:($3+dE) title "" w l ls 61,\
   '' u 1:($4+dE) title "" w l ls 61,'' u 1:($5+dE) title "" w l ls 61,\
   '' u 1:($6+dE) title "" w l ls 61,'' u 1:($7+dE) title "" w l ls 61,\
   '' u 1:($8+dE) title "" w l ls 61,'' u 1:($9+dE) title "" w l ls 61,\
   '' u 1:($10+dE) title "" w l ls 61,'' u 1:($11+dE) title "" w l ls 61
pause -1 'Band Strcutre...'
