#!/bin/bash
#SBATCH -J WSe2
#SBATCH -o WSe2.o%j
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=12
#SBATCH --exclusive
# Optional (cluster-specific):
# #SBATCH --partition=YOUR_PARTITION

set -euo pipefail

# ===== User config =====
: "${VASP_BIN:?Set VASP_BIN to your vasp_std path (e.g., export VASP_BIN=/path/to/vasp_std)}"
VASP="$VASP_BIN"

# Optional: module environment (cluster-specific)
module purge || true
# module add compiler/2023.1.0
# module add mkl/2023.1.0
# module add mpi/2021.12.1
# module add VASP/basic_tools

declare -a runmode=( rlx vcsv )

rinit0=0
rinit=0
rfinal=50

# Expect: INCAR.rlx, INCAR.vcsv, POSCAR.exp exist
nrlxold=99

count_ionic_steps() {
  # Portable fallback: count "POSITION" blocks in OUTCAR (rough but works widely)
  # If you have a local tool (e.g., gf5.x), replace this function.
  grep -c "POSITION" "OUTCAR" 2>/dev/null || echo 0
}

for (( runid = rinit; runid <= rfinal; runid++ )); do
  if (( runid > rinit0 )); then
    previous=$((runid - 1))
    cp "CONTCAR.$previous" POSCAR
  else
    cp POSCAR.exp POSCAR
  fi

  cp "INCAR.${runmode[$((runid%2))]}" INCAR
  printf "runid=%02d | INCAR.%s | " "$runid" "${runmode[$((runid%2))]}"

  srun -n "${SLURM_NTASKS}" "$VASP" > stdout

  nrlx="$(count_ionic_steps)"
  printf "ionic_steps=%s\n" "$nrlx"

  for f in INCAR POSCAR OUTCAR stdout CONTCAR XDATCAR; do
    [[ -f "$f" ]] && mv "$f" "$f.$runid"
  done

  # Termination condition (keep your original logic if needed)
  if [[ "$nrlxold" -eq 1 && "$nrlx" -eq 1 && $((runid%2)) -eq 0 ]]; then
    echo "===> Relaxation finished at runid=$runid"
    break
  else
    nrlxold="$nrlx"
  fi
done
