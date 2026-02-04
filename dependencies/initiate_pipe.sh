#!/bin/bash
#SBATCH --job-name=ampliseq
#SBATCH --output=ampliseq.out
#SBATCH --error=ampliseq.err
#SBATCH --time=24:00:00
#SBATCH --mem=6G
#SBATCH --cpus-per-task=1
#SBATCH --nodes=1
#SBATCH --ntasks=1

# Load modules
module load Nextflow/25.04.6
module load WebProxy/0000

runName="default_run"
configPath="$SCRATCH/nextflow.config"
paramsPath="params.json"

nextflow run nf-core/ampliseq \
    -c $configPath \
    -r 2.14.0 \
    -profile singularity \
    -name $runName \
    -params-file $paramsPath

