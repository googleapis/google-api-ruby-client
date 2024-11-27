# Copyright 2024 Google LLC
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

require "uri"

desc "Freeze or unfreeze releases."

flag :git_remote, "--remote=NAME" do
  desc "The name of the git remote to use as the pull request head. If omitted, does not open a pull request."
end
flag :enable_fork, "--fork" do
  desc "The github user for whom to create/use a fork"
end

exactly_one desc: "Operations" do
  flag :on, desc: "Turn on the release freeze"
  flag :off, desc: "Turn off the release freeze"
end

include :exec, e: true
include :terminal

include "yoshi-pr-generator"

def run
  setup
  result = pr_update_freeze
  check_result result
end

def setup
  yoshi_utils.git_ensure_identity
  if enable_fork
    set :git_remote, "pull-request-fork" unless git_remote
    yoshi_utils.gh_ensure_fork remote: git_remote
  end
end

def pr_update_freeze
  timestamp = Time.now.utc.strftime("%Y%m%d-%H%M%S")
  file_path = "#{context_directory}/.kokoro/release-generated.sh"
  branch_name = "pr/freeze-update-#{timestamp}"
  commit_message = "chore: #{on ? 'Activate' : 'Deactivate'} release freeze"
  yoshi_pr_generator.capture enabled: !git_remote.nil?,
                             remote: git_remote,
                             branch_name: branch_name,
                             commit_message: commit_message do
    content = File.read file_path
    new_line = on ? "FREEZE_RELEASES=true" : "FREEZE_RELEASES="
    new_content = content.gsub(/FREEZE_RELEASES=.*$/, new_line)
    if content == new_content
      puts "No changes for release freeze", :yellow, :bold
      exit 1
    end
    File.write file_path, new_content
  end
end

def check_result result
  case result
  when Integer
    puts "Opened pull request #{result}", :green, :bold
  when :unchanged
    puts "No changes for release freeze", :yellow, :bold
    exit 1
  when :aborted
    puts "Error when modifying scripts for release freeze", :red, :bold
    exit 1
  else
    puts "Modified scripts for release freeze", :cyan
  end
end
