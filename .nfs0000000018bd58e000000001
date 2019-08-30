#!/bin/bash

echo "******************************************"
echo "*******  UCERF3-ETAS PLOT CRON JOB *******"
echo "******************************************"
date
echo "******************************************"
export ETAS_LAUNCHER=/home/scec-02/kmilner/ucerf3/ucerf3-etas-launcher
export ETAS_SIM_DIR=/home/scec-02/kmilner/ucerf3/etas_sim

LOCKFILE=/tmp/${USER}_etas_lock.txt
if [ -e ${LOCKFILE} ] && kill -0 `cat ${LOCKFILE}`; then
    echo "already running"
    exit
fi

# make sure the lockfile is removed when we exit and then claim it
trap "rm -f ${LOCKFILE}; exit" INT TERM EXIT
echo $$ > ${LOCKFILE}

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

cd $DIR

./replot_build_index.sh $@

echo
echo "************* DONE PLOTTING **************"
date

if [[ $? -eq 0 ]];then
	echo "pulling any updates from GitHub"
	git pull
	echo "doing a git add --all"
	git add --all
	echo "git committing"
	git commit -m "automatic plot and index update from $HOSTNAME"
	echo "pushing to GitHub"
	git push
fi

echo
echo "******************* DONE *****************"
date

rm -f ${LOCKFILE}
