require "pathname"

require_relative "repo_metadata.rb"

class DevsiteBuilder
  def initialize master_dir = "."
    @master_dir = Pathname.new master_dir
    @output_dir = "doc"
    @metadata = RepoMetadata.from_source "#{master_dir}/.repo-metadata.json"
  end

  def build
    FileUtils.remove_dir @output_dir if Dir.exist? @output_dir
    markup = "--markup markdown --markup-provider redcarpet"

    Dir.chdir @master_dir do
      cmds = ["-o #{@output_dir}", markup]
      cmd "yard --verbose #{cmds.join ' '}"
    end
    @metadata.build @master_dir + @output_dir
  end

  def upload
    Dir.chdir @output_dir do
      opts = [
        "--credentials=#{ENV['KOKORO_KEYSTORE_DIR']}/73713_docuploader_service_account",
        "--staging-bucket=#{ENV.fetch 'STAGING_BUCKET', 'docs-staging'}",
        "--metadata-file=./docs.metadata"
      ]
      cmd "python3 -m docuploader upload . #{opts.join ' '}"
    end
  end

  def publish
    build
    upload
  end

  def cmd line
    puts line
    output = `#{line}`
    puts output
    output
  end
end
