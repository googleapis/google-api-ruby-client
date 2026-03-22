# Copyright 2020 Google LLC
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

require 'google/apis/agentregistry_v1alpha/service.rb'
require 'google/apis/agentregistry_v1alpha/classes.rb'
require 'google/apis/agentregistry_v1alpha/representations.rb'
require 'google/apis/agentregistry_v1alpha/gem_version.rb'

module Google
  module Apis
    # Agent Registry API
    #
    # Agent Registry is a centralized, unified catalog that lets you store, discover,
    # and govern Model Context Protocol (MCP) servers, tools, and AI agents within
    # Google Cloud.
    #
    # @see https://docs.cloud.google.com/agent-registry/overview
    module AgentregistryV1alpha
      # Version of the Agent Registry API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1alpha'

      # See your Google Cloud Agent Registry data and the email address of your Google Account
      AUTH_AGENTREGISTRY_READ_ONLY = 'https://www.googleapis.com/auth/agentregistry.read-only'

      # See, edit, configure, and delete your Google Cloud Agent Registry data and see the email address for your Google Account
      AUTH_AGENTREGISTRY_READ_WRITE = 'https://www.googleapis.com/auth/agentregistry.read-write'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # View your data across Google Cloud services and see the email address of your Google Account
      AUTH_CLOUD_PLATFORM_READ_ONLY = 'https://www.googleapis.com/auth/cloud-platform.read-only'
    end
  end
end
