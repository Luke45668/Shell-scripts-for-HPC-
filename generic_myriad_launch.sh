#!/bin/bash -l

#$ -N JOBNAME
#$ -M EMAIL
# a = abort, b = running, e = finished
#$ -m abe

PRIORITY

# Request ten minutes of wallclock time (format hours:minutes:seconds).
#$ -l h_rt=HH:MM:SS

# Request 1 gigabyte of RAM (must be an integer followed by M, G, or T)
#$ -l mem=RAMMEM

# Request 15 gigabyte of TMPDIR space (default is 10 GB - remove if cluster is diskless)
#$ -l tmpfs=TMPMEM

# Set up the job array.  In this instance we have requested 10000 tasks
# numbered 1 to 10000.
#$ -t 1-TOTALNUMTASKS

# Select the MPI parallel environment and 36 processes.
#$ -pe mpi NTASKSPERNODE

#$ -wd LOCALDIR

#module load mpi/openmpi/4.1.1/gnu-4.9.2

echo "STARTING MYRIAD JOB"

start=$(date +%s)

EXTRA

RUN

wait

sleep 30s

DATATRANSFER

end=$(date +%s)

echo "ENDED MYRIAD JOB"

elapsedtimesecs=$(($end-$start))

echo $elapsedtimesecs

#cat /proc/cpuinfo
