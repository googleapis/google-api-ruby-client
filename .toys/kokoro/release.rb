# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include :exec, e: true
include :gems

required_arg :package
flag :dry_run, default: ::ENV["RELEASE_DRY_RUN"] == "true"

def run
  gem "gems", "~> 1.2"
  require "releaser"
  Releaser.load_env
  releaser = Releaser.new package, package, dry_run: dry_run
  releaser.publish_gem if releaser.needs_gem_publish?
  releaser.publish_docs
end
