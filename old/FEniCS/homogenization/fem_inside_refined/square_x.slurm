#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mail-type=END
#SBATCH --job-name=fem_square_x
#SBATCH --workdir=/data/wu/work/codes/fenics/homogenization/fem_inside_refined

source /home/wu/fenics.env

echo "$(date): Meshing square_x START"
srun python3 -u square_x.py
echo "$(date): Meshing square_x END"
