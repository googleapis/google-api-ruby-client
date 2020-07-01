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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module GmailpostmastertoolsV1beta1
      
      class DeliveryError
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Domain
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FeedbackLoop
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class IpReputation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListDomainsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListTrafficStatsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TrafficStats
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DeliveryError
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :error_class, as: 'errorClass'
          property :error_ratio, as: 'errorRatio'
          property :error_type, as: 'errorType'
        end
      end
      
      class Domain
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :create_time, as: 'createTime'
          property :name, as: 'name'
          property :permission, as: 'permission'
        end
      end
      
      class FeedbackLoop
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :id, as: 'id'
          property :spam_ratio, as: 'spamRatio'
        end
      end
      
      class IpReputation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :num_ips, :numeric_string => true, as: 'numIps'
          property :reputation, as: 'reputation'
          collection :sample_ips, as: 'sampleIps'
        end
      end
      
      class ListDomainsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :domains, as: 'domains', class: Google::Apis::GmailpostmastertoolsV1beta1::Domain, decorator: Google::Apis::GmailpostmastertoolsV1beta1::Domain::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListTrafficStatsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :next_page_token, as: 'nextPageToken'
          collection :traffic_stats, as: 'trafficStats', class: Google::Apis::GmailpostmastertoolsV1beta1::TrafficStats, decorator: Google::Apis::GmailpostmastertoolsV1beta1::TrafficStats::Representation
      
        end
      end
      
      class TrafficStats
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :delivery_errors, as: 'deliveryErrors', class: Google::Apis::GmailpostmastertoolsV1beta1::DeliveryError, decorator: Google::Apis::GmailpostmastertoolsV1beta1::DeliveryError::Representation
      
          property :dkim_success_ratio, as: 'dkimSuccessRatio'
          property :dmarc_success_ratio, as: 'dmarcSuccessRatio'
          property :domain_reputation, as: 'domainReputation'
          property :inbound_encryption_ratio, as: 'inboundEncryptionRatio'
          collection :ip_reputations, as: 'ipReputations', class: Google::Apis::GmailpostmastertoolsV1beta1::IpReputation, decorator: Google::Apis::GmailpostmastertoolsV1beta1::IpReputation::Representation
      
          property :name, as: 'name'
          property :outbound_encryption_ratio, as: 'outboundEncryptionRatio'
          collection :spammy_feedback_loops, as: 'spammyFeedbackLoops', class: Google::Apis::GmailpostmastertoolsV1beta1::FeedbackLoop, decorator: Google::Apis::GmailpostmastertoolsV1beta1::FeedbackLoop::Representation
      
          property :spf_success_ratio, as: 'spfSuccessRatio'
          property :user_reported_spam_ratio, as: 'userReportedSpamRatio'
        end
      end
    end
  end
end
