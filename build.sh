#!/bin/bash
#
# Converts .ipynb file to .md file and data folder
#   .md -> $IPYTHON_OUTDIR
#   data folder -> $IPYTHON_IMGDIR
#
# source: http://cscorley.github.io/2014/02/21/blogging-with-ipython-and-jekyll/
#

IPYTHON_BINDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" # script directory, also containing jekyll.tpl and ipython.py
source ${IPYTHON_BINDIR}/config.env
IPYTHON_IMGDIR="${IPYTHON_BINDIR}/../../${IPYTHON_IMAGES}"
IPYTHON_OUTDIR="${IPYTHON_BINDIR}/../../${IPYTHON_DRAFTS}"
IPYTHON_INDIR="${IPYTHON_BINDIR}/../../${IPYTHON_NOTEBOOKS}"

export IPYTHON_BIN_DIR=${IPYTHON_BINDIR}
export IPYTHON_BUILD_DIR=${IPYTHON_IMGDIR}
export IPYTHON_IMAGES=${IPYTHON_IMAGES}
export IPYTHON_INDIR=${IPYTHON_INDIR}

nbconvert(){
    python ${IPYTHON_BINDIR}/caller.py $1;
        find ${IPYTHON_IMGDIR} -name '*.md' -exec mv {} ${IPYTHON_OUTDIR} \;
}
for fname in "$@"
do
    nbconvert "$fname"
done
