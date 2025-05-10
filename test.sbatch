#!/bin/bash
#SBATCH --job-name=test           # Job name
#SBATCH --partition=GPU-shared           # Use A100 GPU partition (change if needed)
#SBATCH --gpus=h100-80:1                 # Request 4 GPUs per node
#SBATCH --time=08:00:00                  # Time limit (2 hours)
#SBATCH --output=test.out        # Standard output log
#SBATCH --error=test.err         # Error log
# Load required modules
module load anaconda3
# Set conda environment directory and activate your environment
# export CONDA_PKGS_DIRS=/ocean/projects/cis240092p/$USER/conda_env
conda activate /ocean/projects/cis240092p/$USER/conda_env/pause_token
# Load CUDA module
module load cuda
# Avoid memory fragmentation
# export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True
# Run the Python script with specified parameters

python abc.py > test.out