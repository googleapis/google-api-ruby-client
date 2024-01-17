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

require "uri"

desc "Run standard Google client generation."

optional_arg :api, desc: "API name (optional). Generates all APIs if omitted."
optional_arg :version, desc: "API version. Required if the API name is given."

include :bundler, gemfile_path: "#{context_directory}/google-apis-generator/Gemfile"
include :exec, e: true

def run
  Dir.chdir "#{context_directory}/google-apis-generator"
  case api
  when "clean"
    exec ["bin/generate-api", "gen",
          "#{context_directory}/generated",
          "--clean"]
  when nil
    exec ["bin/generate-api", "gen",
          "#{context_directory}/generated",
          "--from-discovery",
          "--no-preferred-only",
          "--spot-check",
          "--names=#{context_directory}/api_names.yaml",
          "--names-out=#{context_directory}/api_names_out.yaml"],
         in: [:string, "a\n"]
  else
    raise "Version is required if an API is given" unless version
    exec ["bin/generate-api", "gen",
          "#{context_directory}/generated",
          "--api=#{api}.#{version}",
          "--spot-check",
          "--names=#{context_directory}/api_names.yaml",
          "--names-out=#{context_directory}/api_names_out.yaml"],
         in: [:string, "a\n"]
  end
end
