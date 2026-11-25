# Copyright 2026 Google LLC
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

desc "Sync google-apis-generator's Gemfile.lock and open a pull request."

long_desc \
  "google-apis-generator/Gemfile.lock records the local google-apis-core and " \
    "google-apis-generator versions and their dependencies. When a release or " \
    "a gemspec change makes it stale, `bundle install` in generate-updates " \
    "rewrites it and the regeneration stops on a dirty checkout. This tool runs " \
    "`bundle lock` and opens a pull request if the lockfile changed."

flag :git_remote, "--remote=NAME" do
  desc "The git remote to use as the pull request head. If omitted, does not open a pull request."
end
flag :enable_fork, "--fork" do
  desc "Create or use a fork of the repository for the pull request."
end

include :exec, e: true
include :terminal

include "yoshi-pr-generator"

COMMIT_MESSAGE = "chore(generator): sync Gemfile.lock"

def run
  yoshi_utils.git_ensure_identity
  if enable_fork
    set :git_remote, "pull-request-fork" unless git_remote
    yoshi_utils.gh_ensure_fork remote: git_remote
  end
  if open_pr_exists?
    puts "A pull request to sync the lockfile is already open", :yellow
    return
  end
  timestamp = Time.now.utc.strftime "%Y%m%d-%H%M%S"
  result = yoshi_pr_generator.capture enabled: !git_remote.nil?,
                                      remote: git_remote,
                                      branch_name: "gen/sync-generator-lockfile-#{timestamp}",
                                      commit_message: COMMIT_MESSAGE do
    Dir.chdir "#{context_directory}/google-apis-generator" do
      exec ["bundle", "lock"]
    end
  end
  case result
  when Integer
    puts "Opened pull request #{result}", :green, :bold
  when :unchanged
    puts "Gemfile.lock is already in sync", :cyan
  when :aborted
    puts "Error when syncing Gemfile.lock", :red, :bold
    exit 1
  else
    puts "Synced Gemfile.lock locally", :cyan
  end
end

def open_pr_exists?
  return false unless git_remote
  require "json"
  result = exec ["gh", "pr", "list", "--search", "\"#{COMMIT_MESSAGE}\" in:title",
                 "--state=open", "--json=number"],
                out: :capture
  !JSON.parse(result.captured_out).empty?
end
