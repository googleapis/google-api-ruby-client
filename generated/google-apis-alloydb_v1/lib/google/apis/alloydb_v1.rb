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

require 'google/apis/alloydb_v1/service.rb'
require 'google/apis/alloydb_v1/classes.rb'
require 'google/apis/alloydb_v1/representations.rb'
require 'google/apis/alloydb_v1/gem_version.rb'

module Google
  module Apis
    # AlloyDB API
    #
    # AlloyDB for PostgreSQL is an open source-compatible database service that
    # provides a powerful option for migrating, modernizing, or building commercial-
    # grade applications. It offers full compatibility with standard PostgreSQL, and
    # is more than 4x faster for transactional workloads and up to 100x faster for
    # analytical queries than standard PostgreSQL in our performance tests. AlloyDB
    # for PostgreSQL offers a 99.99 percent availability SLA inclusive of
    # maintenance. AlloyDB is optimized for the most demanding use cases, allowing
    # you to build new applications that require high transaction throughput, large
    # database sizes, or multiple read resources; scale existing PostgreSQL
    # workloads with no application changes; and modernize legacy proprietary
    # databases.
    #
    # @see https://cloud.google.com/alloydb/
    module AlloydbV1
      # Version of the AlloyDB API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
