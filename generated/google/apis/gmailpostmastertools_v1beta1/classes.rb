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
      
      # Metric on a particular delivery error type.
      class DeliveryError
        include Google::Apis::Core::Hashable
      
        # The class of delivery error.
        # Corresponds to the JSON property `errorClass`
        # @return [String]
        attr_accessor :error_class
      
        # The ratio of messages where the error occurred vs all authenticated traffic.
        # Corresponds to the JSON property `errorRatio`
        # @return [Float]
        attr_accessor :error_ratio
      
        # The type of delivery error.
        # Corresponds to the JSON property `errorType`
        # @return [String]
        attr_accessor :error_type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @error_class = args[:error_class] if args.key?(:error_class)
          @error_ratio = args[:error_ratio] if args.key?(:error_ratio)
          @error_type = args[:error_type] if args.key?(:error_type)
        end
      end
      
      # A registered domain resource in the Postmaster API.
      class Domain
        include Google::Apis::Core::Hashable
      
        # Timestamp when the user registered this domain. Assigned by the server.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The resource name of the Domain. Domain names have the form `domains/`
        # domain_name``, where domain_name is the fully qualified domain name (i.e.,
        # mymail.mydomain.com).
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # User’s permission for this domain. Assigned by the server.
        # Corresponds to the JSON property `permission`
        # @return [String]
        attr_accessor :permission
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @name = args[:name] if args.key?(:name)
          @permission = args[:permission] if args.key?(:permission)
        end
      end
      
      # [Feedback loop](https://support.google.com/mail/answer/6254652) identifier
      # information.
      class FeedbackLoop
        include Google::Apis::Core::Hashable
      
        # Feedback loop identifier that uniquely identifies individual campaigns.
        # Corresponds to the JSON property `id`
        # @return [String]
        attr_accessor :id
      
        # The ratio of user marked spam messages with the identifier vs the total number
        # of inboxed messages with that identifier.
        # Corresponds to the JSON property `spamRatio`
        # @return [Float]
        attr_accessor :spam_ratio
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @id = args[:id] if args.key?(:id)
          @spam_ratio = args[:spam_ratio] if args.key?(:spam_ratio)
        end
      end
      
      # IP Reputation information for a set of IPs in a specific reputation category.
      class IpReputation
        include Google::Apis::Core::Hashable
      
        # Total number of unique IPs in this reputation category. This metric only
        # pertains to traffic that passed [SPF](http://www.openspf.org/) or [DKIM](http:/
        # /www.dkim.org/).
        # Corresponds to the JSON property `numIps`
        # @return [Fixnum]
        attr_accessor :num_ips
      
        # The reputation category this IP reputation represents.
        # Corresponds to the JSON property `reputation`
        # @return [String]
        attr_accessor :reputation
      
        # A sample of IPs in this reputation category.
        # Corresponds to the JSON property `sampleIps`
        # @return [Array<String>]
        attr_accessor :sample_ips
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @num_ips = args[:num_ips] if args.key?(:num_ips)
          @reputation = args[:reputation] if args.key?(:reputation)
          @sample_ips = args[:sample_ips] if args.key?(:sample_ips)
        end
      end
      
      # Response message for ListDomains.
      class ListDomainsResponse
        include Google::Apis::Core::Hashable
      
        # The list of domains.
        # Corresponds to the JSON property `domains`
        # @return [Array<Google::Apis::GmailpostmastertoolsV1beta1::Domain>]
        attr_accessor :domains
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domains = args[:domains] if args.key?(:domains)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for ListTrafficStats.
      class ListTrafficStatsResponse
        include Google::Apis::Core::Hashable
      
        # Token to retrieve the next page of results, or empty if there are no more
        # results in the list.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of TrafficStats.
        # Corresponds to the JSON property `trafficStats`
        # @return [Array<Google::Apis::GmailpostmastertoolsV1beta1::TrafficStats>]
        attr_accessor :traffic_stats
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @traffic_stats = args[:traffic_stats] if args.key?(:traffic_stats)
        end
      end
      
      # Email traffic statistics pertaining to a specific date.
      class TrafficStats
        include Google::Apis::Core::Hashable
      
        # Delivery errors for the domain. This metric only pertains to traffic that
        # passed [SPF](http://www.openspf.org/) or [DKIM](http://www.dkim.org/).
        # Corresponds to the JSON property `deliveryErrors`
        # @return [Array<Google::Apis::GmailpostmastertoolsV1beta1::DeliveryError>]
        attr_accessor :delivery_errors
      
        # The ratio of mail that successfully authenticated with DKIM vs. all mail that
        # attempted to authenticate with [DKIM](http://www.dkim.org/). Spoofed mail is
        # excluded.
        # Corresponds to the JSON property `dkimSuccessRatio`
        # @return [Float]
        attr_accessor :dkim_success_ratio
      
        # The ratio of mail that passed [DMARC](https://dmarc.org/) alignment checks vs
        # all mail received from the domain that successfully authenticated with either
        # of [SPF](http://www.openspf.org/) or [DKIM](http://www.dkim.org/).
        # Corresponds to the JSON property `dmarcSuccessRatio`
        # @return [Float]
        attr_accessor :dmarc_success_ratio
      
        # Reputation of the domain.
        # Corresponds to the JSON property `domainReputation`
        # @return [String]
        attr_accessor :domain_reputation
      
        # The ratio of incoming mail (to Gmail), that passed secure transport (TLS) vs
        # all mail received from that domain. This metric only pertains to traffic that
        # passed [SPF](http://www.openspf.org/) or [DKIM](http://www.dkim.org/).
        # Corresponds to the JSON property `inboundEncryptionRatio`
        # @return [Float]
        attr_accessor :inbound_encryption_ratio
      
        # Reputation information pertaining to the IP addresses of the email servers for
        # the domain. There is exactly one entry for each reputation category except
        # REPUTATION_CATEGORY_UNSPECIFIED.
        # Corresponds to the JSON property `ipReputations`
        # @return [Array<Google::Apis::GmailpostmastertoolsV1beta1::IpReputation>]
        attr_accessor :ip_reputations
      
        # The resource name of the traffic statistics. Traffic statistic names have the
        # form `domains/`domain`/trafficStats/`date``, where domain_name is the fully
        # qualified domain name (i.e., mymail.mydomain.com) of the domain this traffic
        # statistics pertains to and date is the date in yyyymmdd format that these
        # statistics corresponds to. For example: domains/mymail.mydomain.com/
        # trafficStats/20160807
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The ratio of outgoing mail (from Gmail) that was accepted over secure
        # transport (TLS).
        # Corresponds to the JSON property `outboundEncryptionRatio`
        # @return [Float]
        attr_accessor :outbound_encryption_ratio
      
        # Spammy [Feedback loop identifiers] (https://support.google.com/mail/answer/
        # 6254652) with their individual spam rates. This metric only pertains to
        # traffic that is authenticated by [DKIM](http://www.dkim.org/).
        # Corresponds to the JSON property `spammyFeedbackLoops`
        # @return [Array<Google::Apis::GmailpostmastertoolsV1beta1::FeedbackLoop>]
        attr_accessor :spammy_feedback_loops
      
        # The ratio of mail that successfully authenticated with SPF vs. all mail that
        # attempted to authenticate with [SPF](http://www.openspf.org/). Spoofed mail is
        # excluded.
        # Corresponds to the JSON property `spfSuccessRatio`
        # @return [Float]
        attr_accessor :spf_success_ratio
      
        # The ratio of user-report spam vs. email that was sent to the inbox. This
        # metric only pertains to emails authenticated by [DKIM](http://www.dkim.org/).
        # Corresponds to the JSON property `userReportedSpamRatio`
        # @return [Float]
        attr_accessor :user_reported_spam_ratio
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @delivery_errors = args[:delivery_errors] if args.key?(:delivery_errors)
          @dkim_success_ratio = args[:dkim_success_ratio] if args.key?(:dkim_success_ratio)
          @dmarc_success_ratio = args[:dmarc_success_ratio] if args.key?(:dmarc_success_ratio)
          @domain_reputation = args[:domain_reputation] if args.key?(:domain_reputation)
          @inbound_encryption_ratio = args[:inbound_encryption_ratio] if args.key?(:inbound_encryption_ratio)
          @ip_reputations = args[:ip_reputations] if args.key?(:ip_reputations)
          @name = args[:name] if args.key?(:name)
          @outbound_encryption_ratio = args[:outbound_encryption_ratio] if args.key?(:outbound_encryption_ratio)
          @spammy_feedback_loops = args[:spammy_feedback_loops] if args.key?(:spammy_feedback_loops)
          @spf_success_ratio = args[:spf_success_ratio] if args.key?(:spf_success_ratio)
          @user_reported_spam_ratio = args[:user_reported_spam_ratio] if args.key?(:user_reported_spam_ratio)
        end
      end
    end
  end
end
