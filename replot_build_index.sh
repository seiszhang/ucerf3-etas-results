#!/bin/bash

set -o errexit

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

cd $DIR

echo "pulling from GitHub..."
git pull
echo "rebuilding plots and index"
if [[ ! -z "$ETAS_LAUNCHER" ]];then
	ETAS_LAUNCHER_DIR="${ETAS_LAUNCHER}/sbin/"
fi
${ETAS_LAUNCHER_DIR}u3etas_jar_wrapper.sh scratch.UCERF3.erf.ETAS.launcher.util.ETAS_MarkdownIndexWriter --threads 8 --update-plots $@ --update-file $DIR/update_file.txt $DIR
