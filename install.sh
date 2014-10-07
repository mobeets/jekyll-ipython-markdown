source config.env
IPYTHON_BLOG_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )/../.."
mkdir -p ${IPYTHON_BLOG_PATH}/${IPYTHON_DRAFTS}
mkdir -p ${IPYTHON_BLOG_PATH}/${IPYTHON_IMAGES}
