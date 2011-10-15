require 'google/api_client'

CACHE_PREFIX =
  "http://www.gmodules.com/gadgets/proxy/container=default&debug=0&nocache=0/"

namespace :wiki do
  desc 'Autogenerate wiki pages'
  task :generate do
    output = <<-WIKI
#summary The list of supported APIs

The Google API Client for Ruby is a small flexible client library for accessing
the following Google APIs.

WIKI
    preferred_apis = {}
    client = Google::APIClient.new
    for api in client.discovered_apis
      if !preferred_apis.has_key?(api.name)
        preferred_apis[api.name] = api
      elsif api.preferred
        preferred_apis[api.name] = api
      end
    end
    for api_name, api in preferred_apis
      output += (
        "||#{CACHE_PREFIX}#{api['icons']['x16']}||" +
        "[#{api.documentation} #{api.title}]||" +
        "#{api.description}||\n"
      )
    end
    wiki_path = File.expand_path(
      File.join(File.dirname(__FILE__), '../wiki/'))
    Dir.mkdir(wiki_path) if !File.exist?(wiki_path)
    File.open(File.join(wiki_path, 'SupportedAPIs.wiki'), 'w') do |file|
      file.write(output)
    end
  end
end

# task 'clobber' => ['wiki:clobber_wiki']
