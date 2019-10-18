require "json"

class RepoMetadata
  def initialize data
    @data = data
    normalize_data!
  end

  def allowed_fields
    [
      "name", "version", "language", "distribution-name",
      "product-page", "github-repository", "issue-tracker"
    ]
  end

  def build output_directory
    fields = @data.to_a.map { |kv| "--#{kv[0]} #{kv[1]}" }
    Dir.chdir output_directory do
      cmd "python3 -m docuploader create-metadata #{fields.join ' '}"
    end
  end

  def normalize_data!
    require_relative "../../lib/google/apis/version.rb"

    @data.delete_if { |k, _| !allowed_fields.include?(k) }
    @data["version"] = Google::Apis::VERSION
  end

  def [] key
    data[key]
  end

  def []= key, value
    @data[key] = value
  end

  def data
    Marshal.load Marshal.dump(@data)
  end

  def cmd line
    puts line
    output = `#{line}`
    puts output
    output
  end

  def self.from_source source
    if source.is_a? RepoMetadata
      data = source.data
    elsif source.is_a? Hash
      data = source
    elsif File.file? source
      data = JSON.parse File.read(source)
    else
      raise "Source must be a path, hash, or RepoMetadata instance"
    end
    RepoMetadata.new data
  end
end
