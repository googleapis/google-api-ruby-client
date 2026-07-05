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

require 'google/apis/biglake_v1/service.rb'
require 'google/apis/biglake_v1/classes.rb'
require 'google/apis/biglake_v1/representations.rb'
require 'google/apis/biglake_v1/gem_version.rb'

module Google
  module Apis
    # Lakehouse API
    #
    # The Lakehouse API (formerly BigLake API) provides access to a serverless,
    # fully managed, and highly available metastore that provides a single source of
    # truth for your data lakehouse. It lets multiple engines—including Apache Spark,
    # Google Managed Spark, Apache Flink, Trino and BigQuery—share tables and
    # metadata for key open formats (Apache Iceberg, Apache Hive), and query the
    # same copy of data. Plus, through the Lakehouse runtime catalog federation
    # seamlessly unite your lakehouse ecosystem, letting Iceberg compatible engines
    # on Google Cloud (BigQuery, Google Managed Spark) discover and analyze
    # enterprise data across Snowflake, Databricks, and AWS Glue.
    #
    # @see https://cloud.google.com/products/lakehouse
    module BiglakeV1
      # Version of the Lakehouse API this client connects to.
      # This is NOT the gem version.
      VERSION = 'V1'

      # View and manage your data in Google BigQuery and see the email address for your Google Account
      AUTH_BIGQUERY = 'https://www.googleapis.com/auth/bigquery'

      # See, edit, configure, and delete your Google Cloud data and see the email address for your Google Account.
      AUTH_CLOUD_PLATFORM = 'https://www.googleapis.com/auth/cloud-platform'
    end
  end
end
