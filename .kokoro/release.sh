#!/bin/bash

set -eo pipefail

# Install gems in the user directory because the default install directory
# is in a read-only location.
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

python3 -m pip install git+https://github.com/googleapis/releasetool
python3 -m pip install gcp-docuploader
gem install --no-document toys
bundle install

if [ "$PACKAGE" = "ALL_GENERATED" ]; then
    # This is not called from autorelease, so don't run publish-reporter-script
    toys kokoro release-all-generated < /dev/null
else
    python3 -m releasetool publish-reporter-script > /tmp/publisher-script; source /tmp/publisher-script
    toys kokoro release "$PACKAGE" < /dev/null
fi
