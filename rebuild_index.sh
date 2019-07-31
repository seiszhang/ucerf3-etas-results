#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

echo "pulling any update from GitHub"
git pull
echo "rebuilding plots and index"
u3etas_jar_wrapper.sh scratch.UCERF3.erf.ETAS.launcher.util.ETAS_MarkdownIndexWriter $DIR
