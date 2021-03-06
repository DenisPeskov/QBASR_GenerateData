#!/bin/bash
#SBATCH -n 1
#SBATCH --partition=scavenger-cpu
#SBATCH --account=scavenger
#SBATCH -e slurm-error.txt
#SBATCH --time=24:00:00

. /fs/cliphomes/dpeskov/anaconda3/bin/activate asr
cd '/fs/clip-sw/user-supported/kaldi/egs/aspire/s5'
. cmd.sh
. path.sh
cd -
python  QBASR_Decode_Jeopardy.py -n {{process_id}}
