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

flag :dry_run, default: ::ENV["RELEASE_DRY_RUN"] == "true"

def run
  gem "gems", "~> 1.2"
  require "releaser"
  Releaser.load_env
  current_versions = Releaser.lookup_current_versions
  Dir.glob("generated/google-apis-*") do |gem_dir|
    gem_name = File.basename gem_dir
    puts "Checking #{gem_name}..."
    releaser = Releaser.new gem_name, gem_dir, current_versions: current_versions, dry_run: dry_run
    if releaser.needs_gem_publish?
      releaser.publish_gem
      releaser.publish_docs
    end
  end
end
