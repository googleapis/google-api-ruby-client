#!/bin/bash

set -eo pipefail

# Install gems in the user directory because the default install directory
# is in a read-only location.
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

python3 -m pip install git+https://github.com/googleapis/releasetool
python3 -m pip install gcp-docuploader
gem install --no-document toys

python3 -m releasetool publish-reporter-script > /tmp/publisher-script; source /tmp/publisher-script
toys release perform -v --enable-docs < /dev/null
