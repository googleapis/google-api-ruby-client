require 'spec_helper'
require 'google/apis/drive_v2'
require 'googleauth'
require 'fileutils'

Drive = Google::Apis::DriveV2

RSpec.describe Google::Apis::DriveV2, :if => run_integration_tests? do

  before(:context) do
    WebMock.allow_net_connect!
    @drive = Drive::DriveService.new
    @drive.authorization = Google::Auth.get_application_default([Drive::AUTH_DRIVE])
  end

  it 'should upload and download files' do
    # Insert a file
    content_path = File.join(FIXTURES_DIR, 'files', 'test_api.json')
    file = @drive.insert_file({title: 'test_file.txt'}, upload_source: content_path)
    puts "Created file #{file.title} (#{file.id})"

    # Read it back
    tmp = @drive.get_file(file.id, download_dest: Tempfile.new('drive'))

    # Delete it
    @drive.delete_file(file.id)
    puts "File deleted"

    expect(FileUtils.compare_file(content_path, tmp)).to be_truthy
  end

  after(:context) do
    WebMock.disable_net_connect!
  end
end
