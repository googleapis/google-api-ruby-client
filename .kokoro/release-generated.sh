#!/bin/bash

set -eo pipefail

# Install gems in the user directory because the default install directory
# is in a read-only location.
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

gem install --no-document toys
toys release install-python-tools -v
# This is not called from autorelease, so don't run publish-reporter-script
echo "${GEMS_LIST}"
if [[ -z "${GEMS_LIST}" ]]; then
  toys release perform -v --base-dir=generated --gems="${GEMS_LIST}" --enable-docs < /dev/null
else
  toys release perform -v --base-dir=generated --all=^google-apis- --enable-docs < /dev/null
fi
