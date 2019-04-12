require "bundler/gem_tasks"

task default: :spec

namespace :kokoro do
  task :load_env_vars do
    service_account = "#{ENV['KOKORO_GFILE_DIR']}/service-account.json"
    ENV["GOOGLE_APPLICATION_CREDENTIALS"] = service_account
    filename = "#{ENV['KOKORO_GFILE_DIR']}/env_vars.json"
    env_vars = JSON.parse File.read(filename)
    env_vars.each { |k, v| ENV[k] = v }
  end

  task :presubmit do
    Rake::Task["spec"].invoke
  end

  task :continuous do
    Rake::Task["spec"].invoke
  end

  task :nightly do
    Rake::Task["spec"].invoke
  end
end

def header str, token = "#"
  line_length = str.length + 8
  puts ""
  puts token * line_length
  puts "#{token * 3} #{str} #{token * 3}"
  puts token * line_length
  puts ""
end
