require 'rake'
require 'rake/clean'

CLOBBER.include('wiki')

CACHE_PREFIX =
  "http://www.gmodules.com/gadgets/proxy/container=default&debug=0&nocache=0/"

namespace :wiki do
  desc 'Autogenerate wiki pages'
  task :supported_apis do
    output = <<-WIKI
#summary The list of supported APIs

The Google API Client for Ruby is a small flexible client library for accessing
the following Google APIs.

WIKI
    preferred_apis = {}
    require 'google/api_client'
    client = Google::APIClient.new
    for api in client.discovered_apis
      if !preferred_apis.has_key?(api.name)
        preferred_apis[api.name] = api
      elsif api.preferred
        preferred_apis[api.name] = api
      end
    end
    for api_name, api in preferred_apis
      if api.documentation.to_s != "" && api.title != ""
        output += (
          "||#{CACHE_PREFIX}#{api['icons']['x16']}||" +
          "[#{api.documentation} #{api.title}]||" +
          "#{api.description}||\n"
        )
      end
    end
    output.gsub!(/-32\./, "-16.")
    wiki_path = File.expand_path(
      File.join(File.dirname(__FILE__), '../wiki/'))
    Dir.mkdir(wiki_path) if !File.exist?(wiki_path)
    File.open(File.join(wiki_path, 'SupportedAPIs.wiki'), 'w') do |file|
      file.write(output)
    end
  end

  task 'generate' => ['wiki:supported_apis']
end

begin
  $LOAD_PATH.unshift(
    File.expand_path(File.join(File.dirname(__FILE__), '../yard/lib'))
  )
  $LOAD_PATH.unshift(File.expand_path('.'))
  $LOAD_PATH.uniq!

  require 'yard'
  require 'yard/rake/wikidoc_task'

  namespace :wiki do
    desc 'Generate Wiki Documentation with YARD'
    YARD::Rake::WikidocTask.new do |yardoc|
      yardoc.name = 'reference'
      yardoc.options = [
        '--verbose',
        '--markup', 'markdown',
        '-e', 'yard/lib/yard-google-code.rb',
        '-p', 'yard/templates',
        '-f', 'wiki',
        '-o', 'wiki'
      ]
      yardoc.files = [
        'lib/**/*.rb', 'ext/**/*.c', '-', 'README.md', 'CHANGELOG.md'
      ]
    end

    task 'generate' => ['wiki:reference', 'wiki:supported_apis']
  end
rescue LoadError
  # If yard isn't available, it's not the end of the world
  warn('YARD unavailable. Cannot fully generate wiki.')
end
