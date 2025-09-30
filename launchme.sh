#!/bin/bash
#SBATCH --job-name=get_skill
#SBATCH --partition=meteo_long
#SBATCH --mem=64G
#SBATCH --time=08:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --output=prueba.out
#SBATCH --error=prueba.err

cd /lustre/gmeteo/WORK/lavinp/Practicas 

# Carga conda
source /vols/abedul/home/meteo/lavinp/miniforge3/etc/profile.d/conda.sh
conda activate C4R

# Ejecuta el notebook
jupyter nbconvert --to notebook --execute EstudioIndices/prueba.ipynb

