#!/bin/bash
# extract_kconv.sh

ofile='conv.kpt'
echo '# E_cutoff = 400 eV' > $ofile
echo '# N_k e_total e_diff d_e_total' >> $ofile

nk=20; cp out.k$nk OUTCAR; arr_out=($(gf5.x | tail -1)); eref=${arr_out[1]}
klist='4 8 12 16 20'
i=0

for nk in $klist
do
        if (( $nk < 10 )); then
                cp out.k0$nk OUTCAR
        else
                cp out.k$nk OUTCAR
        fi
        arr_out=($(gf5.x | tail -1)); etot=${arr_out[1]}
        if (( i == 0 )); then
                printf "%5d %10.6f\n" $nk $etot >> $ofile
        else
                edif=$(echo "$etot - $eold" | bc -l)
                dE=$(echo "$etot - $eref" | bc -l)
                printf "%5d %10.6f %9.6f %9.6f\n" "$nk" $etot $edif $dE >> $ofile
        fi
        eold=${arr_out[1]}; ((i++))
done
rm -f OUTCAR
