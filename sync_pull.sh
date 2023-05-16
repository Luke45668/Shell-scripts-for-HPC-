#!/bin/bash

echo please enter path of files you wish to pull
read pull_files

echo please enter location you wish to sync with 
read destination 

rsync -av ucahlrl@myriad.rc.ucl.ac.uk:/home/ucahlrl//Scratch/output/$pull_files //Volumes/Backup\ Plus\ 1/PhD_/Rouse\ Model\ simulations/Using\ LAMMPS\ imac/$destination