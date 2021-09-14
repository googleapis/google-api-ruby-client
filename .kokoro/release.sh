#!/bin/bash

set -eo pipefail

# Install gems in the user directory because the default install directory
# is in a read-only location.
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

python3 -m pip install git+https://github.com/googleapis/releasetool
python3 -m pip install gcp-docuploader
gem install --no-document toys

if [ "$PACKAGE" = "ALL_GENERATED" ]; then
    # TODO(dazuma): Remove this clause once we switch to release-generated
    toys kokoro release-all-generated < /dev/null
else
    python3 -m releasetool publish-reporter-script > /tmp/publisher-script; source /tmp/publisher-script
    toys release perform -v --enable-docs --enable-rad < /dev/null
fi
