#!/bin/bash
#SBATCH --job-name=aucell            # Job name
#SBATCH --nodes=1                    # Run all processes on a single node  
#SBATCH --ntasks=1                   # Run a single task       
#SBATCH --cpus-per-task=18           # Number of CPU cores per task
#SBATCH --mem=100gb                  # Job memory request
#SBATCH --time=00:00:00              # Time limit hrs:min:sec
#SBATCH -o %j.out                   # File to which standard out will be written
#SBATCH -e %j.err                   # File to which standard err will be written

#Working directory
cd /home/dm2763/projects/scenic/pyscenic/MOLNG3650

module load pyscenic

pyscenic aucell /home/dm2763/projects/scenic/pyscenic/MOLNG3650/MOLNG3650_filtered.loom \
    /home/dm2763/projects/scenic/pyscenic/MOLNG3650/MOLNG3650_regulons.csv \
    -o MOLNG3650_scenic.loom \
    --num_workers 18
echo "cell scoring complete: MOLNG3650"
echo "Done!"
