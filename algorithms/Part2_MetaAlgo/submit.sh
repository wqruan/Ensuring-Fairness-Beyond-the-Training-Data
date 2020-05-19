#!/bin/sh
#
#
#SBATCH --account=free # The account name for the job.
#SBATCH --job-name=Fairness_Checking_T50 # The job name.
#SBATCH --mail-type=ALL
#SBATCH --mail-user=sd3013@columbia.edu
#SBATCH --exclusive
#SBATCH -N 1 # The number of cpu cores to use.
#SBATCH --time=4:00:00 # The time the job will take to run.

module load anaconda/3-2019.03
source activate /rigel/home/sd3013/.conda/envs/fairness_checking

#Command to execute Python program
python main.py --solver ECOS --num_cores 12 --T_inner 250 --T 1 --constraint eo --eta_inner 0.1

python main.py --solver ECOS --num_cores 12 --T_inner 250 --T 1 --constraint eo --eta_inner 0.2

python main.py --solver ECOS --num_cores 12 --T_inner 250 --T 1 --constraint eo --eta_inner 0.3

python main.py --solver ECOS --num_cores 12 --T_inner 250 --T 1 --constraint eo --eta_inner 0.4

python main.py --solver ECOS --num_cores 12 --T_inner 250 --T 1 --constraint eo --eta_inner 0.5

python main.py --solver ECOS --num_cores 12 --T_inner 250 --T 1 --constraint eo --eta_inner 0.6

python main.py --solver ECOS --num_cores 12 --T_inner 250 --T 1 --constraint eo --eta_inner 0.7

#End of script