#!/bin/bash

echo The second Tuesday of every month is a maintenance day, when Myriad should be considered at risk all day from 08:00.
echo 'Is today the second Tuesday of the month?'
pass="6e?RW^Z)4?pEh@Y"
# cmake -D BUILD_MPI=yes  -D PKG_EXTRA-FIX=on -D PKG_EXTRA-PAIR=on -D PKG_KSPACE=on -D PKG_MANYBODY=on -D PKG_MOLECULE=on -D PKG_RIGID=on -D PKG_SRD=on ../cmake
ssh ucahlrl@myriad.rc.ucl.ac.uk
# expect "Password:"
# send -s $pass
#/Volumes/Backup\ Plus/PhD_/Rouse\ Model\ simulations/Using\ LAMMPS\ imac/LSC/no_wall_pure_SRD_sim_var_inputs_td_var_no_tstat_no_rescale_mom_output.file