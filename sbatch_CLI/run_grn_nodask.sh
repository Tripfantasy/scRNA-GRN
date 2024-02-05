#!/bin/bash
#SBATCH --job-name=grnboost          # Job name
#SBATCH --nodes=1                    # Run all processes on a single node  
#SBATCH --ntasks=1                   # Run a single task       
#SBATCH --cpus-per-task=158          # Number of CPU cores per task
#SBATCH --mem=1350GB                  # Job memory request
#SBATCH --time=00:00:00              # Time limit hrs:min:sec
#SBATCH -w cerebrobigmem01
#SBATCH -p bigmem
#SBATCH -o %j.out                   # File to which standard out will be written
#SBATCH -e %j.err                   # File to which standard err will be written
#SBATCH --mail-user=dm2763@stowers.org
#SBATCH --mail-type=ALL

#Working directory
cd /home/dm2763/projects/scenic/pyscenic/MOLNG3650

module load pyscenic

arboreto_with_multiprocessing.py \
    /home/dm2763/projects/scenic/pyscenic/MOLNG3650/MOLNG3650_P3xP7xP10_filtered.loom \
    /home/dm2763/projects/scenic/pyscenic/MOLNG3650/loom_pipeline/db/transcription_factors.txt \
    --num_workers 158 \
    -o MOLNG3650_P3xP7xP10_GRN_adjacencies.csv \
    --method grnboost2 \
    --sparse \
    --seed 23947 \
     
        
echo "regulatory networks inferred"
