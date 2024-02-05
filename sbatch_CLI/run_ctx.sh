#!/bin/bash
#SBATCH --job-name=regulons           # Job name
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



pyscenic ctx /home/dm2763/projects/scenic/pyscenic/MOLNG3650/MOLNG3650_P3xP7xP10_GRN_adjacencies.csv \
        /home/dm2763/projects/scenic/pyscenic/MOLNG3650/loom_pipeline/db/mm10_10kbp_up_10kbp_down_full_tx_v10_clust.genes_vs_motifs.rankings.feather \
        /home/dm2763/projects/scenic/pyscenic/MOLNG3650/loom_pipeline/db/mm10_500bp_up_100bp_down_full_tx_v10_clust.genes_vs_motifs.rankings.feather \
        --annotations_fname /home/dm2763/projects/scenic/pyscenic/MOLNG3650/loom_pipeline/db/motifs-v10nr_clust-nr.mgi-m0.001-o0.0.tbl \
        --expression_mtx_fname /home/dm2763/projects/scenic/pyscenic/MOLNG3650/MOLNG3650_P3xP7xP10_filtered.loom \
        --mask_dropouts \
        --output "MOLNG3650_P3XP7XP10_regulons.csv" \
        --num_workers 18

echo "regulon modules defined"

    