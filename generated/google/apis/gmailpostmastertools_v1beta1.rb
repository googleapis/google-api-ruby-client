# Copyright 2015 Google Inc.
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

require 'google/apis/gmailpostmastertools_v1beta1/service.rb'
require 'google/apis/gmailpostmastertools_v1beta1/classes.rb'
require 'google/apis/gmailpostmastertools_v1beta1/representations.rb'

module Google
  module Apis
    # Gmail Postmaster Tools API
    #
    # The Postmaster Tools API is a RESTful API that provides programmatic access to
    # email traffic metrics (like spam reports, delivery errors etc) otherwise
    # available through the Gmail Postmaster Tools UI currently.
    #
    # @see https://developers.google.com/gmail/postmaster
    module GmailpostmastertoolsV1beta1
      VERSION = 'V1beta1'
      REVISION = '20201012'

      # See email traffic metrics for the domains you have registered in Gmail Postmaster Tools
      AUTH_POSTMASTER_READONLY = 'https://www.googleapis.com/auth/postmaster.readonly'
    end
  end
end
