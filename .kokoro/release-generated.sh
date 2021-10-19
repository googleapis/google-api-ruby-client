#!/bin/bash

set -eo pipefail

# Install gems in the user directory because the default install directory
# is in a read-only location.
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

python3 -m pip install git+https://github.com/googleapis/releasetool
python3 -m pip install gcp-docuploader
gem install --no-document toys

# This is not called from autorelease, so don't run publish-reporter-script
toys release perform -v --base-dir=generated --all=google-apis- --enable-docs --enable-rad < /dev/null
