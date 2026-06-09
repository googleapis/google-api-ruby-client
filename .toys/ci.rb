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

require "json"
require "set"

flag :github_event_name, "--github-event-name PATH"
flag :github_event_payload, "--github-event-payload PATH"
flag :from_commit, "--from COMMIT"
flag :only, "--only"
flag :include_spec, "--[no-]include-spec"
flag :include_yardoc, "--[no-]include-yardoc"
flag :include_build, "--[no-]include-build"

include :exec, e: true
include :terminal, styled: true

def run
  set :include_spec, !only if include_spec.nil?
  set :include_yardoc, !only if include_yardoc.nil?
  set :include_build, !only if include_build.nil?

  Dir.chdir context_directory

  base_sha = find_base_sha
  if base_sha.nil?
    puts "No base SHA. Using local diff.", :bold
  else
    puts "Base SHA: #{base_sha}", :bold
  end

  files = find_changed_files base_sha
  if files.empty?
    puts "No files changed.", :bold
  else
    puts "Files changed:", :bold
    files.each { |file| puts "  #{file}" }
  end

  dirs = find_changed_directories files
  if dirs.empty?
    puts "No gem directories changed.", :bold
  else
    puts "Gem directories changed:", :bold
    dirs.each { |dir| puts "  #{dir}" }
  end

  dirs.each { |dir| run_in_dir dir }
end

def run_in_dir dir
  Dir.chdir dir do
    if include_spec
      puts
      puts "Running spec in #{dir}...", :bold
      exec ["toys", "_nested", "spec"]
    end
    if include_yardoc
      puts
      puts "Running yardoc in #{dir}...", :bold
      exec ["toys", "_nested", "yardoc"]
    end
    if include_build
      puts
      puts "Running build in #{dir}...", :bold
      exec ["toys", "_nested", "build"]
    end
  end
end

def generated_dirs
  @generated_dirs ||= Dir.glob "generated/google-apis-*"
end

def find_base_sha
  case github_event_name
  when "pull_request"
    payload = JSON.load File.read github_event_payload
    payload["pull_request"]["base"]["sha"]
  when "push"
    payload = JSON.load File.read github_event_payload
    payload["before"]
  else
    from_commit
  end
end

def find_changed_files base_sha
  if base_sha.nil?
    capture(["git", "status", "--porcelain"]).split("\n").map { |line| line.split.last }
  else
    result = exec(["git", "show", "--no-patch", "--format=%H", base_sha], out: :capture, err: :capture, e: false)
    if result.error?
      exec(["git", "fetch", "--depth=1", "origin", base_sha])
      base_sha = capture(["git", "show", "--no-patch", "--format=%H", base_sha]).strip
    else
      base_sha = result.captured_out.strip
    end
    capture(["git", "diff", "--name-only", base_sha]).split("\n").map(&:strip)
  end
end

def find_changed_directories files
  dirs = Set.new
  files.each do |file|
    case file
    when %r{^generated/google-apis-discovery_v1/}
      dirs << "generated/google-apis-discovery_v1" << "google-apis-generator"
    when %r{^(generated/[^/]+)/}
      dirs << Regexp.last_match[1]
    when %r{^google-apis-core/}
      dirs << "google-apis-core" << "generated/google-apis-discovery_v1"
    when %r{^google-apis-generator/}
      dirs << "google-apis-generator"
    end
  end
  dirs.to_a.sort
end
