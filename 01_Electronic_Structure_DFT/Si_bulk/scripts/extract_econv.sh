#!/bin/bash
# extract_econv3.sh
# extract data for plotting convergence curve

ofile='conv3.ecut'
echo '# kpt grid G4x4' > $ofile
echo '# e_cutoff  e_total  e_diff  d_e_total' >> $ofile
ecutref=900; cp out.e$ecutref OUTCAR; arr_out=($(gf5.x | tail -1)); eref=${arr_out[1]}
elist='200 225 250 275 300 325 350 375 400 425 450 475 500 525 550 575 600 625 650 675 700 725 750 775 800 825 850 875 900'
i=0
for ecut in $elist
do
  cp out.e$ecut OUTCAR
  arr_out=($(gf5.x | tail -1)); etot=${arr_out[1]}
  if (( i == 0 )); then
     echo $ecut $etot >> $ofile
  else
     edif=$(echo "$etot - $eold" | bc -l)
     dE=$(echo "$etot - $eref" | bc -l)
     echo $ecut $etot $edif $dE >> $ofile
  fi
  eold=${arr_out[1]}; ((i++))
done
rm -f OUTCAR
