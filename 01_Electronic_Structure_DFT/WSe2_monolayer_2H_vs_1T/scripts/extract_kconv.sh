#!/bin/bash
# extract_kconv.sh

ofile='conv.kpt'
echo '# E_cutoff = 400 eV' > $ofile
echo '# N_k  e_total  e_diff  d_e_total' >> $ofile

k=40; cp out.k$k OUTCAR; arr_out=($(gf5.x | tail -1)); eref=${arr_out[1]}
i=0

#klist='4 8 12 16 20 24 28 32 36 40'
#for k in $klist; do
for (( k = 4; k <= 40; k = k + 4 )); do
    if (( $k < 10 )); then
       cp out.k0$k OUTCAR
    else
       cp out.k$k OUTCAR
    fi
    arr_out=($(gf5.x | tail -1)); etot=${arr_out[1]}
    if (( i == 0 )); then
       printf "%5d %10.6f\n" $k $etot >> $ofile
    else
       edif=$(echo "$etot - $eold" | bc -l)
       dE=$(echo "$etot - $eref" | bc -l)
       printf "%5d %10.6f %9.6f %9.6f\n" "$k" $etot $edif $dE >> $ofile
    fi
    eold=${arr_out[1]}; ((i++))
done
rm -f OUTCAR
