require "json"

namespace :kokoro do
  task :load_env_vars do
    load_env_vars
  end

  task :dry_run do
    ENV["DRY_RUN"] = "true"
  end

  task :presubmit do
    Rake::Task["kokoro:run_tests"].invoke
  end

  task :continuous do
    Rake::Task["kokoro:run_tests"].invoke
  end

  task :nightly do
    Rake::Task["kokoro:run_tests"].invoke
  end

  task :post do
    require_relative "rakelib/devsite/link_checker.rb"

    link_checker = LinkChecker.new
    link_checker.run
    exit link_checker.exit_status
  end

  task :release do
    require_relative "rakelib/releaser.rb"

    load_env_vars if ENV["KOKORO_GFILE_DIR"]
    package = ENV["PACKAGE"]
    raise "PACKAGE missing" unless package
    dry_run = ENV["DRY_RUN"]

    if package == "ALL_GENERATED"
      Dir.glob("generated/google-apis-*") do |gem_dir|
        gem_name = File.basename(gem_dir)
        releaser = Releaser.new(gem_name, gem_dir, dry_run: dry_run)
        if releaser.needs_gem_publish?
          releaser.publish_gem
          releaser.publish_docs
        end
      end
    else
      releaser = Releaser.new(package, package, dry_run: dry_run)
      releaser.publish_gem if releaser.needs_gem_publish?
      releaser.publish_docs
    end
  end

  task :run_tests do
    gem_directories = ["google-apis-core", "google-apis-generator"]
    gem_directories << "google-api-client" unless RUBY_VERSION.start_with? "3."
    gem_directories.each do |dir|
      next unless File.file?(File.join(dir, "Gemfile"))
      cd dir do
        Bundler.with_clean_env do
          sh "bundle install"
          sh "bundle exec rake spec"
        end
      end
    end
  end
end

def load_env_vars
  service_account = "#{ENV['KOKORO_GFILE_DIR']}/service-account.json"
  raise "#{service_account} is not a file" unless File.file? service_account
  ENV["GOOGLE_APPLICATION_CREDENTIALS"] = service_account
  filename = "#{ENV['KOKORO_GFILE_DIR']}/ruby_env_vars.json"
  raise "#{filename} is not a file" unless File.file? filename
  env_vars = JSON.parse File.read(filename)
  env_vars.each do |k, v|
    if ENV[k]
      puts "Ignoring #{k} because it is already set"
    else
      puts "Setting #{k}"
    end
    ENV[k] ||= v
  end
end

def header str, token = "#"
  line_length = str.length + 8
  puts
  puts token * line_length
  puts "#{token * 3} #{str} #{token * 3}"
  puts token * line_length
  puts
end
