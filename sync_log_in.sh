#!/bin/bash

# Best to copy to myriad from your local machine, use this command syntax :
#scp -r ./test_runs_folder ucahlrl@myriad.rc.ucl.ac.uk:/scratch/scratch/ucahlrl 

# Acess the remote myriad server, this may need to chnage if you are tunnelling from outside the UCL firewall
echo The second Tuesday of every month is a maintenance day, when Myriad should be considered at risk all day from 08:00.
echo 'Is today the second Tuesday of the month?'

echo Please enter the filname of the simulation codes you wish to push

read sim_codes_file_name

echo Please enter destination within simulation run folder

read sim_run_file_loc
#MYRIAD_LAMMPS_runs/
# make sure to put a backslash after a file or it will make a new directory aswell

#6e?RW^Z)4?pEh@Y

# use an rsyinc command to make sure your simulation run directory is up to date, do this from local machine 
# check files which will be synced first with a dry run so there is no need 
#dry run 

#rsync -av --dry-run //Volumes/Backup\ Plus/PhD_/Rouse\ Model\ simulations/Using\ LAMMPS\ imac/$sim_codes_file_name ucahlrl@myriad.rc.ucl.ac.uk:/scratch/scratch/ucahlrl/simulation_run_folder

#pull
# rsync -a username@remote_host:/home/username/dir1 place_to_sync_on_local_machine
#push
#rsync -a ~/dir1 username@remote_host:destination_directory

rsync -av //Volumes/Backup\ Plus\ 1/PhD_/Rouse\ Model\ simulations/Using\ LAMMPS\ imac/$sim_codes_file_name ucahlrl@myriad.rc.ucl.ac.uk:/home/ucahlrl/simulation_run_folder/$sim_run_file_loc

 #Shell_scripts_for_MYRIAD/lammps_node_compiler.sh

#pure_fluid_validations_batch_scripts_500k_tstps_phi_0.005

#ssh ucahlrl@myriad.rc.ucl.ac.uk


