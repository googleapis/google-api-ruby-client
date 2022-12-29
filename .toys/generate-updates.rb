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
flag :approval_token, "--approval-token" do
  default ENV["APPROVAL_GITHUB_TOKEN"]
  desc "GitHub token for adding labels and approving pull requests"
end
flag :all do
  desc "Generate all APIs"
end
flag :clean do
  desc "Open a PR to clean out old APIs if needed"
end

remaining_args :requested do
  desc "Requested apis in api:version format"
end

include :bundler, gemfile_path: "#{context_directory}/google-apis-generator/Gemfile"
include :exec, e: true
include :git_cache
include :terminal

include "yoshi-pr-generator"

def run
  require "json"

  yoshi_utils.git_ensure_identity
  if enable_fork
    set :git_remote, "pull-request-fork" unless git_remote
    yoshi_utils.gh_ensure_fork remote: git_remote
  end

  @errors = []
  @timestamp = Time.now.utc.strftime("%Y%m%d-%H%M%S")
  apis_versions = list_apis_versions
  apis_versions.each_with_index do |(api, version), index|
    pr_single_gem api, version, index + 1, apis_versions.size
  end
  pr_clean_old_gems if clean
  unless @errors.empty?
    puts "Errors:", :red, :bold
    @errors.each { |name| puts "Error generating #{name}", :red }
    exit 1
  end
end

def list_apis_versions
  return requested.map { |request| request.split(":") } unless all
  path = git_cache.find("https://github.com/googleapis/discovery-artifact-manager.git",
                        path: "discoveries", update: true)
  apis_versions = Dir.children(path).map do |name|
    match = /^(\w+)\.(\w+)\.json$/.match name
    [match[1], match[2]] if match
  end
  apis_versions.compact.shuffle
end

def pr_single_gem api, version, index, total
  branch_name = "gen/#{api}-#{version}-#{@timestamp}"
  commit_message = "feat: Automated regeneration of #{api} #{version} client"
  if open_pr_exists? commit_message
    puts "(#{index}/#{total}) Pull request already exists for google-apis-#{api}_#{version}", :yellow
    return
  end
  approval_message = "Rubber-stamped client auto-generation!"
  result = yoshi_pr_generator.capture enabled: !git_remote.nil?,
                                      remote: git_remote,
                                      branch_name: branch_name,
                                      commit_message: commit_message,
                                      labels: ["automerge"],
                                      auto_approve: approval_message,
                                      approval_token: approval_token do
    regen_single_gem api, version
  end
  case result
  when Integer
    puts "(#{index}/#{total}) Opened pull request #{result} for google-apis-#{api}_#{version}", :green, :bold
  when :unchanged
    puts "(#{index}/#{total}) No changes for google-apis-#{api}_#{version}", :magenta
  when :aborted
    puts "(#{index}/#{total}) Error when generating google-apis-#{api}_#{version}", :red, :bold
    @errors << "google-apis-#{api}_#{version}"
  else
    puts "(#{index}/#{total}) Generated google-apis-#{api}_#{version}", :cyan
  end
end

def pr_clean_old_gems
  branch_name = "gen/clean-#{@timestamp}"
  commit_message = "feat: Automated cleanup of obsolete gems"
  if open_pr_exists? commit_message
    puts "Pull request already exists for cleaning obsolete gems", :yellow
    return
  end
  approval_message = "Rubber-stamped cleanup of obsolete gems!"
  result = yoshi_pr_generator.capture enabled: !git_remote.nil?,
                                      remote: git_remote,
                                      branch_name: branch_name,
                                      commit_message: commit_message,
                                      labels: ["automerge"],
                                      auto_approve: approval_message,
                                      approval_token: approval_token do
    clean_old_gems
  end
  case result
  when Integer
    puts "Opened pull request #{result} for cleaning obsolete gems", :green, :bold
  when :unchanged
    puts "No obsolete gems to clean", :magenta
  when :aborted
    puts "Error when cleaning obsolete gems", :red, :bold
    @errors << "cleanup of obsolete gems"
  end
end

def open_pr_exists? title
  content = capture ["gh", "pr", "list", "--search", "\"#{title}\" in:title", "--state=open", "--json=number"]
  !JSON.parse(content).empty?
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
    result = exec cmd, in: [:string, "a\n"], e: false
    yoshi_pr_generator.abort_capture! unless result.success?
  end
end

def clean_old_gems
  Dir.chdir "#{context_directory}/google-apis-generator" do
    cmd = [
      "bin/generate-api", "gen",
      "#{context_directory}/generated",
      "--clean"
    ]
    result = exec cmd, e: false
    yoshi_pr_generator.abort_capture! unless result.success?
  end
end
