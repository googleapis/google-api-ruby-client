#!/bin/bash

# This file runs tests for merges, PRs, and nightlies.
# There are a few rules for what tests are run:
#  * PRs run all non-acceptance tests for every library.
#  * Merges run all non-acceptance tests for every library, and acceptance tests for all altered libraries.
#  * Nightlies run all acceptance tests for every library.

set -eo pipefail

# Debug: show build environment
env | grep KOKORO

cd github/google-api-ruby-client/

versions=($RUBY_VERSIONS)

# Temporary workaround for a known bundler+docker issue:
# https://github.com/bundler/bundler/issues/6154
export BUNDLE_GEMFILE=

# Capture failures
EXIT_STATUS=0 # everything passed
function set_failed_status {
    EXIT_STATUS=1
}

for version in "${versions[@]}"; do
    rbenv global "$version"
    echo "Using Ruby $version"
    (bundle update && bundle exec rake) || set_failed_status
done

exit $EXIT_STATUS