#!/bin/bash

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

rm -f ${LOCKFILE}
