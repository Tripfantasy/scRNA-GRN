# Scanpy-pySCENIC
A complete workflow involving integrating gene regulatory network inference tool pySCENIC, with Scanpy analysis of scRNA-seq data. This workflow employs the CLI implementation of pySCENIC, to generate regulon enrichment scores across cells from an scRNA-seq experiment in loom format. 

# Inclusions:
This workflow consists of two primary jupyter notebooks, for upstream preprocessing and downstream analysis. In addition, we provide slurm scripts for running pySCENIC CLI commands in an HPC environment. We also provide accessory scripts primarily in R, which were used for cases of merging and converting raw data, seurat objects, etc.  
