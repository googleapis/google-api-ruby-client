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

require 'google/apis/bigtableadmin_v2/service.rb'
require 'google/apis/bigtableadmin_v2/classes.rb'
require 'google/apis/bigtableadmin_v2/representations.rb'

module Google
  module Apis
    # Cloud Bigtable Admin API
    #
    # Administer your Cloud Bigtable tables and instances.
    #
    # @see https://cloud.google.com/bigtable/
    module BigtableadminV2
      VERSION = 'V2'
      REVISION = '20200821'

      # Administer your Cloud Bigtable tables and clusters
      AUTH_BIGTABLE_ADMIN = 'https://www.googleapis.com/auth/bigtable.admin'

      # Administer your Cloud Bigtable clusters
      AUTH_BIGTABLE_ADMIN_CLUSTER = 'https://www.googleapis.com/auth/bigtable.admin.cluster'

      # Administer your Cloud Bigtable clusters
      AUTH_BIGTABLE_ADMIN_INSTANCE = 'https://www.googleapis.com/auth/bigtable.admin.instance'

      # Administer your Cloud Bigtable tables
      AUTH_BIGTABLE_ADMIN_TABLE = 'https://www.googleapis.com/auth/bigtable.admin.table'

      # Administer your Cloud Bigtable tables and clusters
      AUTH_CLOUD_BIGTABLE_ADMIN = 'https://www.googleapis.com/auth/cloud-bigtable.admin'

      # Administer your Cloud Bigtable clusters
      AUTH_CLOUD_BIGTABLE_ADMIN_CLUSTER = 'https://www.googleapis.com/auth/cloud-bigtable.admin.cluster'

      # Administer your Cloud Bigtable tables
      AUTH_CLOUD_BIGTABLE_ADMIN_TABLE = 'https://www.googleapis.com/auth/cloud-bigtable.admin.table'

      # View and manage your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'

      # View your data across Google Cloud Platform services
      AUTH_CLOUD_PLATFORM_READ_ONLY = 'https://www.googleapis.com/auth/cloud-platform.read-only'
    end
  end
end
