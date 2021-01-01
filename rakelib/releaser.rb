require "fileutils"
require "gems"
require "rubygems"

class Releaser
  def initialize gem_name, gem_dir,
                 rubygems_api_token: nil,
                 docs_staging_bucket: nil,
                 docuploader_credentials: nil,
                 dry_run: false
    @gem_name = gem_name
    @gem_dir = File.expand_path(gem_dir)
    @rubygems_api_token = rubygems_api_token || ENV["RUBYGEMS_API_TOKEN"]
    @docs_staging_bucket = docs_staging_bucket || ENV["STAGING_BUCKET"] || "docs-staging"
    @docuploader_credentials = docuploader_credentials
    if @docuploader_credentials.nil? && ENV["KOKORO_KEYSTORE_DIR"]
      @docuploader_credentials = File.join(ENV["KOKORO_KEYSTORE_DIR"], "73713_docuploader_service_account")
    end
    @dry_run = dry_run ? true : false
    @rubygems_api_token_configured = false
    @bundle_updated = false
  end

  attr_reader :gem_name
  attr_reader :gem_dir
  attr_reader :rubygems_api_token
  attr_reader :docs_staging_bucket
  attr_reader :docuploader_credentials

  def dry_run?
    @dry_run
  end

  def needs_gem_publish?
    Gem::Version.new(gem_version) > Gem::Version.new(current_rubygems_version)
  end

  def publish_gem
    configure_rubygems_api_token
    bundle_dir do
      FileUtils.rm_rf("pkg")
      execute "bundle exec rake build"
      built_gem_path = "pkg/#{gem_name}-#{gem_version}.gem"
      raise "Failed to build #{built_gem_path}" unless File.file?(built_gem_path)
      if dry_run?
        puts "**** In dry run mode. Skipping gem publish of #{gem_name}"
        return
      end
      response = gems_client.push(File.new(built_gem_path))
      puts response
      raise "Failed to publish gem" unless response.include? "Successfully registered gem:"
    end
  end

  def publish_docs
    bundle_dir do
      FileUtils.rm_rf("doc")
      FileUtils.rm_rf(".yardoc")
      execute "bundle exec rake yard"
      Dir.chdir("doc") do
        execute "python3 -m docuploader create-metadata" \
                " --name #{gem_name}" \
                " --distribution-name #{gem_name}" \
                " --language ruby" \
                " --version v#{gem_version}"
        unless docuploader_credentials
          puts "**** No credentials available. Skipping doc upload of #{gem_name}"
          return
        end
        if dry_run?
          puts "**** In dry run mode. Skipping doc upload of #{gem_name}"
          return
        end
        execute "python3 -m docuploader upload ." \
                " --credentials=#{docuploader_credentials}" \
                " --staging-bucket=#{docs_staging_bucket}" \
                " --metadata-file=./docs.metadata"
      end
    end
  end

  def current_rubygems_version
    @current_rubygems_version ||= begin
      gems_client.info(gem_name)["version"]
    rescue Gems::NotFound
      "0.0.0"
    end
  end

  def gem_version
    @gem_version ||= begin
      version_content = File.read(version_file_path)
      match = /\s(?:GEM_)?VERSION = "([\d\.]+)"/.match(version_content)
      raise "Unable to find version constant in #{version_file_path}" unless match
      match[1]
    end
  end

  def version_file_path
    @version_file_path ||= begin
      path = Dir.glob("#{gem_dir}/lib/google/apis/*/version.rb").first ||
             Dir.glob("#{gem_dir}/lib/google/apis/*/gem_version.rb").first ||
             Dir.glob("#{gem_dir}/lib/google/apis/version.rb").first
      raise "Unable to find version file in #{gem_dir}" unless path
      path
    end
  end

  def gems_client
    @gems_client ||= Gems::Client.new
  end

  def configure_rubygems_api_token
    return if @rubygems_api_token_configured
    @rubygems_api_token_configured = true
    if rubygems_api_token
      Gems.configure do |config|
        config.key = rubygems_api_token
      end
    end
  end

  def bundle_dir
    block = proc do
      execute "bundle update" unless @bundle_updated
      @bundle_updated = true
      yield
    end
    Dir.chdir(gem_dir) do
      if defined?(Bundler)
        if Bundler.respond_to?(:with_unbundled_env)
          Bundler.with_unbundled_env(&block)
        else
          Bundler.with_clean_env(&block)
        end
      else
        block.call
      end
    end
  end

  def execute(cmd)
    puts cmd
    raise "Error executing command" unless system(cmd)
  end
end
