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
    p exec ["bin/generate-api", "gen",
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
