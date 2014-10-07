#!/bin/bash
#
# Converts .ipynb file to .md file and data folder
#   .md -> $OUTDIR
#   data folder -> $IMGDIR
#
# source: http://cscorley.github.io/2014/02/21/blogging-with-ipython-and-jekyll/
#

source ${BINDIR}/config.env
BINDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )" # script directory, also containing jekyll.tpl and ipython.py
IMGDIR="${IPYTHON_BLOG_PATH}/${IPYTHON_IMAGES}"
OUTDIR="${IPYTHON_BLOG_PATH}/${IPYTHON_DRAFTS}"

export IPYTHON_BIN_DIR=${BINDIR}
export IPYTHON_BUILD_DIR=${IMGDIR}
export IPYTHON_IMAGES=${IPYTHON_IMAGES}

nbconvert(){
    ipython nbconvert --config ${BINDIR}/ipython.py $1;
        find ${IMGDIR} -name '*.md' -exec mv {} ${OUTDIR} \;
}
for fname in "$@"
do
    nbconvert "$fname"
done
