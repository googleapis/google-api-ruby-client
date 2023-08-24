# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'spec_helper'
require 'google/apis/cloudkms_v1'
require 'googleauth'
require "logger"

Cloudkms = Google::Apis::CloudkmsV1

RSpec.describe Google::Apis::CloudkmsV1, :if => run_integration_tests? do

  before(:context) do
    # Note: the service account running this test must have
    # roles/cloudkms.cryptoKeyEncrypterDecrypter permissions.
    WebMock.allow_net_connect!
    @kms = Cloudkms::CloudKMSService.new
    @kms.authorization = Google::Auth.get_application_default([Cloudkms::AUTH_CLOUDKMS])

    @project = ENV["GOOGLE_PROJECT_ID"]
    @suffix = Time.now.utc.strftime("%Y%m%d%H%M%S-") + rand(36**8).to_s(36)
    @parent_name = "projects/#{@project}/locations/us-central1"
    @ring_name = @kms.create_project_location_key_ring(@parent_name, key_ring_id: "ring-#{@suffix}").name
    key_object = Cloudkms::CryptoKey.new
    key_object.purpose = "ENCRYPT_DECRYPT"
    @key_name = @kms.create_project_location_key_ring_crypto_key(@ring_name, key_object, crypto_key_id: "key-#{@suffix}").name

    @old_logger = Google::Apis.logger
    @logio = StringIO.new
    Google::Apis.logger = ::Logger.new(@logio)
    Google::Apis.logger.level = ::Logger::DEBUG
  end

  it 'should not log secrets in plain text' do
    request = Cloudkms::EncryptRequest.new(plaintext: "secretabcde")
    response = @kms.encrypt_crypto_key(@key_name, request)
    request = ::Google::Apis::CloudkmsV1::DecryptRequest.new(ciphertext: response.ciphertext)
    recovered_secret = @kms.decrypt_crypto_key(@key_name, request).plaintext
    expect(recovered_secret).to eq "secretabcde"

    logs = @logio.string
    # Plain text content should never show up in logs.
    # Ensure we redact the service response object for the decrypt call.
    expect(logs).not_to match(/secretabcde/)
    # Base64 encoding of the plain text content should never show up in logs.
    # Ensure we redact the http response object for the decrypt call.
    expect(logs).not_to match(/c2VjcmV0YWJjZGU=/)
    # It's okay for the ciphertext to show up in logs.
    # Ensure we don't redact the service response object for the encrypt call.
    expect(logs).to match(/@ciphertext=/)
    # Ensure we don't redact the http response object for the encrypt call.
    expect(logs).to match(/\\"ciphertext\\"/)
  end

  after(:context) do
    # There does not appear to be a way to clean up key resources. :sadface:  
    Google::Apis.logger = @old_logger
    WebMock.disable_net_connect!
  end

end
