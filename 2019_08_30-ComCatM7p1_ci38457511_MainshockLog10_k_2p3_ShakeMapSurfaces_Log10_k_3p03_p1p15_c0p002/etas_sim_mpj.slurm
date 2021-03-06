#!/bin/bash

#SBATCH -t 24:00:00
#SBATCH -N 36
#SBATCH -p scec
#SBATCH --mem 0

######################
## INPUT PARAMETERS ##
######################

# the above '#SBATCH' lines are requred, and are supposed to start with a '#'. They must be at the beginning of the file
# the '-t hh:mm:ss' argument is the wall clock time of the job
# the '-N 18' argument specifies the number of nodes required, in this case 18
# the 'p scec' argument specifies the queue, this line can be removed if you want the default queue
# the '--mem 0' argument fixes some USC HPC weirdness and shouldn't be removed

## ETAS PARAMETERS ##

# path to the JSON configuration file
ETAS_CONF_JSON=${ETAS_SIM_DIR}/2019_08_30-ComCatM7p1_ci38457511_MainshockLog10_k_2p3_ShakeMapSurfaces_Log10_k_3p03_p1p15_c0p002-noSpont-full_td-scale1.14-modParams/config.json

## JAVA/MPJ PARAMETERS ##

# maxmimum memory in gigabytes. should be close to, but not over, total memory available
MEM_GIGS=55

# number of etas threads. should be approximately MEM_GIGS/5, and no more than the total number of threads available
THREADS=10

# MPJ_HOME directory. on USC HPC, it's fine to just use mine
# you can also fetch this directory via Git by cloning https://github.com/kevinmilner/mpj-express.git
MPJ_HOME=/home/scec-00/kmilner/mpj-current

# path to the opensha-ucerf3 jar file
JAR_FILE=${ETAS_LAUNCHER}/lib/opensha-ucerf3-all.jar

# simulations are sent out in batches to each compute node. these paramters control the size of those batches
# smaller max size will allow for better checking of progress with watch_logparse.sh, but more wasted time at the end of batches waiting on a single calculation to finish
MIN_DISPATCH=$THREADS
MAX_DISPATCH=100

##########################
## END INPUT PARAMETERS ##
##   DO NOT EDIT BELOW  ##
##########################

NEW_JAR="`dirname ${ETAS_CONF_JSON}`/`basename $JAR_FILE`"
cp $JAR_FILE $NEW_JAR
if [[ -e $NEW_JAR ]];then
	JAR_FILE=$NEW_JAR
fi

PBS_NODEFILE="/tmp/${USER}-hostfile-${SLURM_JOBID}"
echo "creating PBS_NODEFILE: $PBS_NODEFILE"
scontrol show hostnames $SLURM_NODELIST > $PBS_NODEFILE

export MPJ_HOME=$MPJ_HOME
export PATH=$PATH:$MPJ_HOME/bin

date
echo "RUNNING MPJ"
mpjrun_errdetect_wrapper.sh $PBS_NODEFILE -dev hybdev -Djava.library.path=$MPJ_HOME/lib -Xmx${MEM_GIGS}G -cp $JAR_FILE scratch.UCERF3.erf.ETAS.launcher.MPJ_ETAS_Launcher --min-dispatch $MIN_DISPATCH --max-dispatch $MAX_DISPATCH --threads $THREADS --end-time `scontrol show job $SLURM_JOB_ID | egrep --only-matching 'EndTime=[^ ]+' | cut -c 9-` $ETAS_CONF_JSON
ret=$?
date

exit $ret
