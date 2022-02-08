# Copyright 2022 Google LLC
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

desc "Run standard Google client generation."

flag :git_remote, "--remote=NAME" do
  desc "The name of the git remote to use as the pull request head. If omitted, does not open a pull request."
end
flag :enable_fork, "--fork" do
  desc "The github user for whom to create/use a fork"
end

include :bundler, gemfile_path: "#{context_directory}/google-apis-generator/Gemfile"
include :exec, e: true
include :git_cache
include :terminal

def run
  require "pull_request_generator"
  extend PullRequestGenerator
  ensure_pull_request_generation_dependencies

  if enable_fork
    new_remote = ensure_pull_request_generation_fork git_remote: git_remote
    set :git_remote, new_remote
  end

  @timestamp = Time.now.utc.strftime("%Y%m%d-%H%M%S")
  list_apis_versions.each do |(api, version)|
    pr_single_gem api, version
  end
  pr_clean_old_gems
end

def list_apis_versions
  path = git_cache.get("https://github.com/googleapis/discovery-artifact-manager.git", path: "discoveries")
  apis_versions = Dir.children(path).map do |name|
    match = /^(\w+)\.(\w+)\.json$/.match name
    [match[1], match[2]] if match
  end
  apis_versions.compact.shuffle
end

def pr_single_gem api, version
  branch_name = "gen/#{api}-#{version}-#{@timestamp}"
  commit_message = "feat: Automated regeneration of #{api} #{version} client"
  result = generate_pull_request git_remote: git_remote,
                                 branch_name: branch_name,
                                 commit_message: commit_message do
    regen_single_gem api, version
  end
  case result
  when :opened
    puts "Opened pull request for google-apis-#{api}_#{version}", :green, :bold
  when :uknchanged
    puts "No changes for google-apis-#{api}_#{version}", :magenta
  end
end

def pr_clean_old_gems
  branch_name = "gen/clean-#{@timestamp}"
  commit_message = "feat: Automated cleanup of obsolete clients"
  result = generate_pull_request git_remote: git_remote,
                                 branch_name: branch_name,
                                 commit_message: commit_message do
    clean_old_gems
  end
  case result
  when :opened
    puts "Opened pull request for cleaning obsolete gems", :green, :bold
  when :uknchanged
    puts "No obsolete gems to clean", :magenta
  end
end

def regen_single_gem api, version
  Dir.chdir "#{context_directory}/google-apis-generator" do
    cmd = [
      "bin/generate-api", "gen",
      "#{context_directory}/generated",
      "--api=#{api}.#{version}",
      "--spot-check",
      "--names=#{context_directory}/api_names.yaml",
      "--names-out=#{context_directory}/api_names_out.yaml"
    ]
    exec cmd, in: [:string, "a\n"]
  end
end

def clean_old_gems
  Dir.chdir "#{context_directory}/google-apis-generator" do
    cmd = [
      "bin/generate-api", "gen",
      "#{context_directory}/generated",
      "--clean"
    ]
    exec cmd
  end
end
