require "json"

namespace :kokoro do
  task :load_env_vars do
    load_env_vars
  end

  task :presubmit do
    cd "google-api-client" do
      Bundler.with_unbundled_env do
        sh "bundle update"
        sh "bundle exec rake spec"
      end
    end
  end

  task :continuous do
    cd "google-api-client" do
      Bundler.with_unbundled_env do
        sh "bundle update"
        sh "bundle exec rake spec"
      end
    end
  end

  task :nightly do
    cd "google-api-client" do
      Bundler.with_unbundled_env do
        sh "bundle update"
        sh "bundle exec rake spec"
      end
    end
  end

  task :post do
    require_relative "rakelib/devsite/link_checker.rb"

    link_checker = LinkChecker.new
    link_checker.run
    exit link_checker.exit_status
  end

  task :release do
    Rake::Task["kokoro:publish_gem"].invoke
    Rake::Task["kokoro:publish_docs"].invoke
  end

  task :publish_gem do
    require "gems"

    load_env_vars if ENV["KOKORO_GFILE_DIR"]
    api_token = ENV["RUBYGEMS_API_TOKEN"]
    if api_token
      ::Gems.configure do |config|
        config.key = api_token
      end
    end

    cd "google-api-client" do
      Bundler.with_unbundled_env do
        rm_rf "pkg"
        sh "bundle update"
        sh "bundle exec rake build"
        built_gem_path = Dir.glob("pkg/google-api-client-*.gem").last

        response = ::Gems.push File.new built_gem_path
        puts response
        raise "Failed to release gem" unless response.include? "Successfully registered gem:"
      end
    end
  end

  desc "Publish docs for the latest git tag"
  task :publish_docs do
    require_relative "rakelib/devsite/devsite_builder.rb"

    cd "google-api-client" do
      DevsiteBuilder.new.publish ENV["DOCS_BUILD_TAG"]
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
  env_vars.each { |k, v| ENV[k] ||= v }
end

def header str, token = "#"
  line_length = str.length + 8
  puts
  puts token * line_length
  puts "#{token * 3} #{str} #{token * 3}"
  puts token * line_length
  puts
end
