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
    module FirebasehostingV1beta1
      
      # Contains metadata about the user who performed an action, such as creating a
      # release or finalizing a version.
      class ActingUser
        include Google::Apis::Core::Hashable
      
        # The email address of the user when the user performed the action.
        # Corresponds to the JSON property `email`
        # @return [String]
        attr_accessor :email
      
        # A profile image URL for the user. May not be present if the user has changed
        # their email address or deleted their account.
        # Corresponds to the JSON property `imageUrl`
        # @return [String]
        attr_accessor :image_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @email = args[:email] if args.key?(:email)
          @image_url = args[:image_url] if args.key?(:image_url)
        end
      end
      
      # Represents a DNS certificate challenge.
      class CertDnsChallenge
        include Google::Apis::Core::Hashable
      
        # The domain name upon which the DNS challenge must be satisfied.
        # Corresponds to the JSON property `domainName`
        # @return [String]
        attr_accessor :domain_name
      
        # The value that must be present as a TXT record on the domain name to satisfy
        # the challenge.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_name = args[:domain_name] if args.key?(:domain_name)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # Represents an HTTP certificate challenge.
      class CertHttpChallenge
        include Google::Apis::Core::Hashable
      
        # The URL path on which to serve the specified token to satisfy the certificate
        # challenge.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # The token to serve at the specified URL path to satisfy the certificate
        # challenge.
        # Corresponds to the JSON property `token`
        # @return [String]
        attr_accessor :token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @path = args[:path] if args.key?(:path)
          @token = args[:token] if args.key?(:token)
        end
      end
      
      # A `Channel` represents a stream of releases for a site. All sites have a
      # default `live` channel that serves content to the live Firebase-provided
      # domains and any connected custom domains.
      class Channel
        include Google::Apis::Core::Hashable
      
        # Output only. The time at which the channel was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # The time at which the channel will be automatically deleted. If null, the
        # channel will not be automatically deleted. This field is present in output
        # whether set directly or via the `ttl` field.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        # Text labels used for extra metadata and/or filtering.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The fully-qualified identifier of the Channel.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # A `Release` is a particular [collection of configurations and files](sites.
        # versions) that is set to be public at a particular time.
        # Corresponds to the JSON property `release`
        # @return [Google::Apis::FirebasehostingV1beta1::Release]
        attr_accessor :release
      
        # The number of previous releases to retain on the channel for rollback or other
        # purposes. Must be a number between 1-100. Defaults to 10 for new channels.
        # Corresponds to the JSON property `retainedReleaseCount`
        # @return [Fixnum]
        attr_accessor :retained_release_count
      
        # Input only. A time-to-live for this channel. Sets `expire_time` to the
        # provided duration past the time of the request.
        # Corresponds to the JSON property `ttl`
        # @return [String]
        attr_accessor :ttl
      
        # Output only. The time at which the channel was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        # Output only. The URL at which the channel can be viewed. For the `live`
        # channel, the content of the current release may also be visible at other URLs.
        # Corresponds to the JSON property `url`
        # @return [String]
        attr_accessor :url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @create_time = args[:create_time] if args.key?(:create_time)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @release = args[:release] if args.key?(:release)
          @retained_release_count = args[:retained_release_count] if args.key?(:retained_release_count)
          @ttl = args[:ttl] if args.key?(:ttl)
          @update_time = args[:update_time] if args.key?(:update_time)
          @url = args[:url] if args.key?(:url)
        end
      end
      
      # The request sent to CloneVersion.
      class CloneVersionRequest
        include Google::Apis::Core::Hashable
      
        # A representation of filter path.
        # Corresponds to the JSON property `exclude`
        # @return [Google::Apis::FirebasehostingV1beta1::PathFilter]
        attr_accessor :exclude
      
        # If true, immediately finalize the version after cloning is complete.
        # Corresponds to the JSON property `finalize`
        # @return [Boolean]
        attr_accessor :finalize
        alias_method :finalize?, :finalize
      
        # A representation of filter path.
        # Corresponds to the JSON property `include`
        # @return [Google::Apis::FirebasehostingV1beta1::PathFilter]
        attr_accessor :include
      
        # Required. The name of the version to be cloned, in the format: `sites/`site`/
        # versions/`version``
        # Corresponds to the JSON property `sourceVersion`
        # @return [String]
        attr_accessor :source_version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @exclude = args[:exclude] if args.key?(:exclude)
          @finalize = args[:finalize] if args.key?(:finalize)
          @include = args[:include] if args.key?(:include)
          @source_version = args[:source_version] if args.key?(:source_version)
        end
      end
      
      # A configured rewrite that directs requests to a Cloud Run service. If the
      # Cloud Run service does not exist when setting or updating your Firebase
      # Hosting configuration, then the request fails. Any errors from the Cloud Run
      # service are passed to the end user (for example, if you delete a service, any
      # requests directed to that service receive a `404` error).
      class CloudRunRewrite
        include Google::Apis::Core::Hashable
      
        # Optional. User-provided region where the Cloud Run service is hosted. Defaults
        # to `us-central1` if not supplied.
        # Corresponds to the JSON property `region`
        # @return [String]
        attr_accessor :region
      
        # Required. User-defined ID of the Cloud Run service.
        # Corresponds to the JSON property `serviceId`
        # @return [String]
        attr_accessor :service_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @region = args[:region] if args.key?(:region)
          @service_id = args[:service_id] if args.key?(:service_id)
        end
      end
      
      # The intended behavior and status information of a domain.
      class Domain
        include Google::Apis::Core::Hashable
      
        # Required. The domain name of the association.
        # Corresponds to the JSON property `domainName`
        # @return [String]
        attr_accessor :domain_name
      
        # Defines the behavior of a domain-level redirect. Domain redirects preserve the
        # path of the redirect but replace the requested domain with the one specified
        # in the redirect configuration.
        # Corresponds to the JSON property `domainRedirect`
        # @return [Google::Apis::FirebasehostingV1beta1::DomainRedirect]
        attr_accessor :domain_redirect
      
        # The current certificate provisioning status information for a domain.
        # Corresponds to the JSON property `provisioning`
        # @return [Google::Apis::FirebasehostingV1beta1::DomainProvisioning]
        attr_accessor :provisioning
      
        # Required. The site name of the association.
        # Corresponds to the JSON property `site`
        # @return [String]
        attr_accessor :site
      
        # Output only. Additional status of the domain association.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Output only. The time at which the domain was last updated.
        # Corresponds to the JSON property `updateTime`
        # @return [String]
        attr_accessor :update_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_name = args[:domain_name] if args.key?(:domain_name)
          @domain_redirect = args[:domain_redirect] if args.key?(:domain_redirect)
          @provisioning = args[:provisioning] if args.key?(:provisioning)
          @site = args[:site] if args.key?(:site)
          @status = args[:status] if args.key?(:status)
          @update_time = args[:update_time] if args.key?(:update_time)
        end
      end
      
      # The current certificate provisioning status information for a domain.
      class DomainProvisioning
        include Google::Apis::Core::Hashable
      
        # The TXT records (for the certificate challenge) that were found at the last
        # DNS fetch.
        # Corresponds to the JSON property `certChallengeDiscoveredTxt`
        # @return [Array<String>]
        attr_accessor :cert_challenge_discovered_txt
      
        # Represents a DNS certificate challenge.
        # Corresponds to the JSON property `certChallengeDns`
        # @return [Google::Apis::FirebasehostingV1beta1::CertDnsChallenge]
        attr_accessor :cert_challenge_dns
      
        # Represents an HTTP certificate challenge.
        # Corresponds to the JSON property `certChallengeHttp`
        # @return [Google::Apis::FirebasehostingV1beta1::CertHttpChallenge]
        attr_accessor :cert_challenge_http
      
        # The certificate provisioning status; updated when Firebase Hosting provisions
        # an SSL certificate for the domain.
        # Corresponds to the JSON property `certStatus`
        # @return [String]
        attr_accessor :cert_status
      
        # The IPs found at the last DNS fetch.
        # Corresponds to the JSON property `discoveredIps`
        # @return [Array<String>]
        attr_accessor :discovered_ips
      
        # The time at which the last DNS fetch occurred.
        # Corresponds to the JSON property `dnsFetchTime`
        # @return [String]
        attr_accessor :dns_fetch_time
      
        # The DNS record match status as of the last DNS fetch.
        # Corresponds to the JSON property `dnsStatus`
        # @return [String]
        attr_accessor :dns_status
      
        # The list of IPs to which the domain is expected to resolve.
        # Corresponds to the JSON property `expectedIps`
        # @return [Array<String>]
        attr_accessor :expected_ips
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cert_challenge_discovered_txt = args[:cert_challenge_discovered_txt] if args.key?(:cert_challenge_discovered_txt)
          @cert_challenge_dns = args[:cert_challenge_dns] if args.key?(:cert_challenge_dns)
          @cert_challenge_http = args[:cert_challenge_http] if args.key?(:cert_challenge_http)
          @cert_status = args[:cert_status] if args.key?(:cert_status)
          @discovered_ips = args[:discovered_ips] if args.key?(:discovered_ips)
          @dns_fetch_time = args[:dns_fetch_time] if args.key?(:dns_fetch_time)
          @dns_status = args[:dns_status] if args.key?(:dns_status)
          @expected_ips = args[:expected_ips] if args.key?(:expected_ips)
        end
      end
      
      # Defines the behavior of a domain-level redirect. Domain redirects preserve the
      # path of the redirect but replace the requested domain with the one specified
      # in the redirect configuration.
      class DomainRedirect
        include Google::Apis::Core::Hashable
      
        # Required. The domain name to redirect to.
        # Corresponds to the JSON property `domainName`
        # @return [String]
        attr_accessor :domain_name
      
        # Required. The redirect status code.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @domain_name = args[:domain_name] if args.key?(:domain_name)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # A generic empty message that you can re-use to avoid defining duplicated empty
      # messages in your APIs. A typical example is to use it as the request or the
      # response type of an API method. For instance: service Foo ` rpc Bar(google.
      # protobuf.Empty) returns (google.protobuf.Empty); ` The JSON representation for
      # `Empty` is empty JSON object ````.
      class Empty
        include Google::Apis::Core::Hashable
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
        end
      end
      
      # A [`header`](/docs/hosting/full-config#headers) is an object that specifies a
      # URL pattern that, if matched to the request URL path, triggers Hosting to
      # apply the specified custom response headers.
      class Header
        include Google::Apis::Core::Hashable
      
        # The user-supplied [glob](/docs/hosting/full-config#glob_pattern_matching) to
        # match against the request URL path.
        # Corresponds to the JSON property `glob`
        # @return [String]
        attr_accessor :glob
      
        # Required. The additional headers to add to the response.
        # Corresponds to the JSON property `headers`
        # @return [Hash<String,String>]
        attr_accessor :headers
      
        # The user-supplied RE2 regular expression to match against the request URL path.
        # Corresponds to the JSON property `regex`
        # @return [String]
        attr_accessor :regex
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @glob = args[:glob] if args.key?(:glob)
          @headers = args[:headers] if args.key?(:headers)
          @regex = args[:regex] if args.key?(:regex)
        end
      end
      
      # If provided, i18n rewrites are enabled.
      class I18nConfig
        include Google::Apis::Core::Hashable
      
        # Required. The user-supplied path where country and language specific content
        # will be looked for within the public directory.
        # Corresponds to the JSON property `root`
        # @return [String]
        attr_accessor :root
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @root = args[:root] if args.key?(:root)
        end
      end
      
      # The response returned by ListChannels.
      class ListChannelsResponse
        include Google::Apis::Core::Hashable
      
        # The list of channels.
        # Corresponds to the JSON property `channels`
        # @return [Array<Google::Apis::FirebasehostingV1beta1::Channel>]
        attr_accessor :channels
      
        # If there are additional releases remaining beyond the ones in this response,
        # then supply this token in the next [`list`](../sites.channels/list) call to
        # continue with the next set of releases.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channels = args[:channels] if args.key?(:channels)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # The response to listing Domains.
      class ListDomainsResponse
        include Google::Apis::Core::Hashable
      
        # The list of domains, if any exist.
        # Corresponds to the JSON property `domains`
        # @return [Array<Google::Apis::FirebasehostingV1beta1::Domain>]
        attr_accessor :domains
      
        # The pagination token, if more results exist.
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
      
      # 
      class ListReleasesResponse
        include Google::Apis::Core::Hashable
      
        # If there are additional releases remaining beyond the ones in this response,
        # then supply this token in the next [`list`](../sites.versions.files/list) call
        # to continue with the next set of releases.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of hashes of files that still need to be uploaded, if any exist.
        # Corresponds to the JSON property `releases`
        # @return [Array<Google::Apis::FirebasehostingV1beta1::Release>]
        attr_accessor :releases
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @releases = args[:releases] if args.key?(:releases)
        end
      end
      
      # 
      class ListVersionFilesResponse
        include Google::Apis::Core::Hashable
      
        # The list path/hashes in the specified version.
        # Corresponds to the JSON property `files`
        # @return [Array<Google::Apis::FirebasehostingV1beta1::VersionFile>]
        attr_accessor :files
      
        # The pagination token, if more results exist.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @files = args[:files] if args.key?(:files)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # 
      class ListVersionsResponse
        include Google::Apis::Core::Hashable
      
        # The pagination token, if more results exist
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        # The list of versions, if any exist.
        # Corresponds to the JSON property `versions`
        # @return [Array<Google::Apis::FirebasehostingV1beta1::Version>]
        attr_accessor :versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
          @versions = args[:versions] if args.key?(:versions)
        end
      end
      
      # This resource represents a long-running operation that is the result of a
      # network API call.
      class Operation
        include Google::Apis::Core::Hashable
      
        # If the value is `false`, it means the operation is still in progress. If `true`
        # , the operation is completed, and either `error` or `response` is available.
        # Corresponds to the JSON property `done`
        # @return [Boolean]
        attr_accessor :done
        alias_method :done?, :done
      
        # The `Status` type defines a logical error model that is suitable for different
        # programming environments, including REST APIs and RPC APIs. It is used by [
        # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
        # data: error code, error message, and error details. You can find out more
        # about this error model and how to work with it in the [API Design Guide](https:
        # //cloud.google.com/apis/design/errors).
        # Corresponds to the JSON property `error`
        # @return [Google::Apis::FirebasehostingV1beta1::Status]
        attr_accessor :error
      
        # Service-specific metadata associated with the operation. It typically contains
        # progress information and common metadata such as create time. Some services
        # might not provide such metadata. Any method that returns a long-running
        # operation should document the metadata type, if any.
        # Corresponds to the JSON property `metadata`
        # @return [Hash<String,Object>]
        attr_accessor :metadata
      
        # The server-assigned name, which is only unique within the same service that
        # originally returns it. If you use the default HTTP mapping, the `name` should
        # be a resource name ending with `operations/`unique_id``.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The normal response of the operation in case of success. If the original
        # method returns no data on success, such as `Delete`, the response is `google.
        # protobuf.Empty`. If the original method is standard `Get`/`Create`/`Update`,
        # the response should be the resource. For other methods, the response should
        # have the type `XxxResponse`, where `Xxx` is the original method name. For
        # example, if the original method name is `TakeSnapshot()`, the inferred
        # response type is `TakeSnapshotResponse`.
        # Corresponds to the JSON property `response`
        # @return [Hash<String,Object>]
        attr_accessor :response
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @done = args[:done] if args.key?(:done)
          @error = args[:error] if args.key?(:error)
          @metadata = args[:metadata] if args.key?(:metadata)
          @name = args[:name] if args.key?(:name)
          @response = args[:response] if args.key?(:response)
        end
      end
      
      # A representation of filter path.
      class PathFilter
        include Google::Apis::Core::Hashable
      
        # An array of regexes to filter by.
        # Corresponds to the JSON property `regexes`
        # @return [Array<String>]
        attr_accessor :regexes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @regexes = args[:regexes] if args.key?(:regexes)
        end
      end
      
      # The request to populate a Version's Files.
      class PopulateVersionFilesRequest
        include Google::Apis::Core::Hashable
      
        # A set of file paths to the hashes corresponding to assets that should be added
        # to the version. Note that a file path to an empty hash will remove the path
        # from the version. Calculate a hash by Gzipping the file then taking the SHA256
        # hash of the newly compressed file.
        # Corresponds to the JSON property `files`
        # @return [Hash<String,String>]
        attr_accessor :files
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @files = args[:files] if args.key?(:files)
        end
      end
      
      # 
      class PopulateVersionFilesResponse
        include Google::Apis::Core::Hashable
      
        # The content hashes of the specified files that need to be uploaded to the
        # specified endpoint.
        # Corresponds to the JSON property `uploadRequiredHashes`
        # @return [Array<String>]
        attr_accessor :upload_required_hashes
      
        # The URL to which the files should be uploaded, in the format: "https://upload-
        # firebasehosting.googleapis.com/upload/sites/site-name /versions/versionID/
        # files". Perform a multipart `POST` of the Gzipped file contents to the URL
        # using a forward slash and the hash of the file appended to the end.
        # Corresponds to the JSON property `uploadUrl`
        # @return [String]
        attr_accessor :upload_url
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @upload_required_hashes = args[:upload_required_hashes] if args.key?(:upload_required_hashes)
          @upload_url = args[:upload_url] if args.key?(:upload_url)
        end
      end
      
      # Version preview configuration. If active and unexpired, this version will be
      # accessible via a custom URL even if it is not the currently released version.
      # Deprecated in favor of site channels.
      class PreviewConfig
        include Google::Apis::Core::Hashable
      
        # If true, preview URLs are enabled for this version.
        # Corresponds to the JSON property `active`
        # @return [Boolean]
        attr_accessor :active
        alias_method :active?, :active
      
        # Indicates the expiration time for previewing this version; preview URL
        # requests received after this time will 404.
        # Corresponds to the JSON property `expireTime`
        # @return [String]
        attr_accessor :expire_time
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @active = args[:active] if args.key?(:active)
          @expire_time = args[:expire_time] if args.key?(:expire_time)
        end
      end
      
      # A [`redirect`](/docs/hosting/full-config#redirects) object specifies a URL
      # pattern that, if matched to the request URL path, triggers Hosting to respond
      # with a redirect to the specified destination path.
      class Redirect
        include Google::Apis::Core::Hashable
      
        # The user-supplied [glob](/docs/hosting/full-config#glob_pattern_matching) to
        # match against the request URL path.
        # Corresponds to the JSON property `glob`
        # @return [String]
        attr_accessor :glob
      
        # Required. The value to put in the HTTP location header of the response. The
        # location can contain capture group values from the pattern using a `:` prefix
        # to identify the segment and an optional `*` to capture the rest of the URL.
        # For example: "glob": "/:capture*", "statusCode": 301, "location": "https://
        # example.com/foo/:capture"
        # Corresponds to the JSON property `location`
        # @return [String]
        attr_accessor :location
      
        # The user-supplied RE2 regular expression to match against the request URL path.
        # Corresponds to the JSON property `regex`
        # @return [String]
        attr_accessor :regex
      
        # Required. The status HTTP code to return in the response. It must be a valid
        # 3xx status code.
        # Corresponds to the JSON property `statusCode`
        # @return [Fixnum]
        attr_accessor :status_code
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @glob = args[:glob] if args.key?(:glob)
          @location = args[:location] if args.key?(:location)
          @regex = args[:regex] if args.key?(:regex)
          @status_code = args[:status_code] if args.key?(:status_code)
        end
      end
      
      # A `Release` is a particular [collection of configurations and files](sites.
      # versions) that is set to be public at a particular time.
      class Release
        include Google::Apis::Core::Hashable
      
        # The deploy description when the release was created. The value can be up to
        # 512 characters.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        # Output only. The unique identifier for the release, in the format: sites/ site-
        # name/releases/releaseID This name is provided in the response body when you
        # call the [`CreateRelease`](sites.releases/create) endpoint.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Output only. The time at which the version is set to be public.
        # Corresponds to the JSON property `releaseTime`
        # @return [String]
        attr_accessor :release_time
      
        # Contains metadata about the user who performed an action, such as creating a
        # release or finalizing a version.
        # Corresponds to the JSON property `releaseUser`
        # @return [Google::Apis::FirebasehostingV1beta1::ActingUser]
        attr_accessor :release_user
      
        # Explains the reason for the release. Specify a value for this field only when
        # creating a `SITE_DISABLE` type release.
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        # A `Version` is the collection of configuration and [static files](sites.
        # versions.files) that determine how a site is displayed.
        # Corresponds to the JSON property `version`
        # @return [Google::Apis::FirebasehostingV1beta1::Version]
        attr_accessor :version
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @message = args[:message] if args.key?(:message)
          @name = args[:name] if args.key?(:name)
          @release_time = args[:release_time] if args.key?(:release_time)
          @release_user = args[:release_user] if args.key?(:release_user)
          @type = args[:type] if args.key?(:type)
          @version = args[:version] if args.key?(:version)
        end
      end
      
      # A [`rewrite`](/docs/hosting/full-config#rewrites) object specifies a URL
      # pattern that, if matched to the request URL path, triggers Hosting to respond
      # as if the service were given the specified destination URL.
      class Rewrite
        include Google::Apis::Core::Hashable
      
        # The request will be forwarded to Firebase Dynamic Links.
        # Corresponds to the JSON property `dynamicLinks`
        # @return [Boolean]
        attr_accessor :dynamic_links
        alias_method :dynamic_links?, :dynamic_links
      
        # The function to proxy requests to. Must match the exported function name
        # exactly.
        # Corresponds to the JSON property `function`
        # @return [String]
        attr_accessor :function
      
        # The user-supplied [glob](/docs/hosting/full-config#glob_pattern_matching) to
        # match against the request URL path.
        # Corresponds to the JSON property `glob`
        # @return [String]
        attr_accessor :glob
      
        # The URL path to rewrite the request to.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # The user-supplied RE2 regular expression to match against the request URL path.
        # Corresponds to the JSON property `regex`
        # @return [String]
        attr_accessor :regex
      
        # A configured rewrite that directs requests to a Cloud Run service. If the
        # Cloud Run service does not exist when setting or updating your Firebase
        # Hosting configuration, then the request fails. Any errors from the Cloud Run
        # service are passed to the end user (for example, if you delete a service, any
        # requests directed to that service receive a `404` error).
        # Corresponds to the JSON property `run`
        # @return [Google::Apis::FirebasehostingV1beta1::CloudRunRewrite]
        attr_accessor :run
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dynamic_links = args[:dynamic_links] if args.key?(:dynamic_links)
          @function = args[:function] if args.key?(:function)
          @glob = args[:glob] if args.key?(:glob)
          @path = args[:path] if args.key?(:path)
          @regex = args[:regex] if args.key?(:regex)
          @run = args[:run] if args.key?(:run)
        end
      end
      
      # The configuration for how incoming requests to a site should be routed and
      # processed before serving content. The URL request paths are matched against
      # the specified URL patterns in the configuration, then Hosting applies the
      # applicable configuration according to a specific [priority order](/docs/
      # hosting/full-config#hosting_priority_order).
      class ServingConfig
        include Google::Apis::Core::Hashable
      
        # How to handle well known App Association files.
        # Corresponds to the JSON property `appAssociation`
        # @return [String]
        attr_accessor :app_association
      
        # Defines whether to drop the file extension from uploaded files.
        # Corresponds to the JSON property `cleanUrls`
        # @return [Boolean]
        attr_accessor :clean_urls
        alias_method :clean_urls?, :clean_urls
      
        # An array of objects, where each object specifies a URL pattern that, if
        # matched to the request URL path, triggers Hosting to apply the specified
        # custom response headers.
        # Corresponds to the JSON property `headers`
        # @return [Array<Google::Apis::FirebasehostingV1beta1::Header>]
        attr_accessor :headers
      
        # If provided, i18n rewrites are enabled.
        # Corresponds to the JSON property `i18n`
        # @return [Google::Apis::FirebasehostingV1beta1::I18nConfig]
        attr_accessor :i18n
      
        # An array of objects (called redirect rules), where each rule specifies a URL
        # pattern that, if matched to the request URL path, triggers Hosting to respond
        # with a redirect to the specified destination path.
        # Corresponds to the JSON property `redirects`
        # @return [Array<Google::Apis::FirebasehostingV1beta1::Redirect>]
        attr_accessor :redirects
      
        # An array of objects (called rewrite rules), where each rule specifies a URL
        # pattern that, if matched to the request URL path, triggers Hosting to respond
        # as if the service were given the specified destination URL.
        # Corresponds to the JSON property `rewrites`
        # @return [Array<Google::Apis::FirebasehostingV1beta1::Rewrite>]
        attr_accessor :rewrites
      
        # Defines how to handle a trailing slash in the URL path.
        # Corresponds to the JSON property `trailingSlashBehavior`
        # @return [String]
        attr_accessor :trailing_slash_behavior
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @app_association = args[:app_association] if args.key?(:app_association)
          @clean_urls = args[:clean_urls] if args.key?(:clean_urls)
          @headers = args[:headers] if args.key?(:headers)
          @i18n = args[:i18n] if args.key?(:i18n)
          @redirects = args[:redirects] if args.key?(:redirects)
          @rewrites = args[:rewrites] if args.key?(:rewrites)
          @trailing_slash_behavior = args[:trailing_slash_behavior] if args.key?(:trailing_slash_behavior)
        end
      end
      
      # A `SiteConfig` contains metadata associated with a specific site that controls
      # Firebase Hosting serving behavior
      class SiteConfig
        include Google::Apis::Core::Hashable
      
        # Whether or not web requests made by site visitors are logged via Cloud Logging.
        # Corresponds to the JSON property `cloudLoggingEnabled`
        # @return [Boolean]
        attr_accessor :cloud_logging_enabled
        alias_method :cloud_logging_enabled?, :cloud_logging_enabled
      
        # The number of FINALIZED versions that will be held for a site before automatic
        # deletion. When a new version is deployed, content for versions in storage in
        # excess of this number will be deleted, and will no longer be billed for
        # storage usage. Oldest versions will be deleted first; sites are created with
        # an unlimited number of max_versions by default.
        # Corresponds to the JSON property `maxVersions`
        # @return [Fixnum]
        attr_accessor :max_versions
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @cloud_logging_enabled = args[:cloud_logging_enabled] if args.key?(:cloud_logging_enabled)
          @max_versions = args[:max_versions] if args.key?(:max_versions)
        end
      end
      
      # The `Status` type defines a logical error model that is suitable for different
      # programming environments, including REST APIs and RPC APIs. It is used by [
      # gRPC](https://github.com/grpc). Each `Status` message contains three pieces of
      # data: error code, error message, and error details. You can find out more
      # about this error model and how to work with it in the [API Design Guide](https:
      # //cloud.google.com/apis/design/errors).
      class Status
        include Google::Apis::Core::Hashable
      
        # The status code, which should be an enum value of google.rpc.Code.
        # Corresponds to the JSON property `code`
        # @return [Fixnum]
        attr_accessor :code
      
        # A list of messages that carry the error details. There is a common set of
        # message types for APIs to use.
        # Corresponds to the JSON property `details`
        # @return [Array<Hash<String,Object>>]
        attr_accessor :details
      
        # A developer-facing error message, which should be in English. Any user-facing
        # error message should be localized and sent in the google.rpc.Status.details
        # field, or localized by the client.
        # Corresponds to the JSON property `message`
        # @return [String]
        attr_accessor :message
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @code = args[:code] if args.key?(:code)
          @details = args[:details] if args.key?(:details)
          @message = args[:message] if args.key?(:message)
        end
      end
      
      # A `Version` is the collection of configuration and [static files](sites.
      # versions.files) that determine how a site is displayed.
      class Version
        include Google::Apis::Core::Hashable
      
        # The configuration for how incoming requests to a site should be routed and
        # processed before serving content. The URL request paths are matched against
        # the specified URL patterns in the configuration, then Hosting applies the
        # applicable configuration according to a specific [priority order](/docs/
        # hosting/full-config#hosting_priority_order).
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::FirebasehostingV1beta1::ServingConfig]
        attr_accessor :config
      
        # Output only. The time at which the version was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Contains metadata about the user who performed an action, such as creating a
        # release or finalizing a version.
        # Corresponds to the JSON property `createUser`
        # @return [Google::Apis::FirebasehostingV1beta1::ActingUser]
        attr_accessor :create_user
      
        # Output only. The time at which the version was `DELETED`.
        # Corresponds to the JSON property `deleteTime`
        # @return [String]
        attr_accessor :delete_time
      
        # Contains metadata about the user who performed an action, such as creating a
        # release or finalizing a version.
        # Corresponds to the JSON property `deleteUser`
        # @return [Google::Apis::FirebasehostingV1beta1::ActingUser]
        attr_accessor :delete_user
      
        # Output only. The total number of files associated with the version. This value
        # is calculated after a version is `FINALIZED`.
        # Corresponds to the JSON property `fileCount`
        # @return [Fixnum]
        attr_accessor :file_count
      
        # Output only. The time at which the version was `FINALIZED`.
        # Corresponds to the JSON property `finalizeTime`
        # @return [String]
        attr_accessor :finalize_time
      
        # Contains metadata about the user who performed an action, such as creating a
        # release or finalizing a version.
        # Corresponds to the JSON property `finalizeUser`
        # @return [Google::Apis::FirebasehostingV1beta1::ActingUser]
        attr_accessor :finalize_user
      
        # The labels used for extra metadata and/or filtering.
        # Corresponds to the JSON property `labels`
        # @return [Hash<String,String>]
        attr_accessor :labels
      
        # The unique identifier for a version, in the format: sites/site-name /versions/
        # versionID This name is provided in the response body when you call the [`
        # CreateVersion`](../sites.versions/create) endpoint.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # Version preview configuration. If active and unexpired, this version will be
        # accessible via a custom URL even if it is not the currently released version.
        # Deprecated in favor of site channels.
        # Corresponds to the JSON property `preview`
        # @return [Google::Apis::FirebasehostingV1beta1::PreviewConfig]
        attr_accessor :preview
      
        # The deploy status of a version. For a successful deploy, call the [`
        # CreateVersion`](sites.versions/create) endpoint to make a new version (`
        # CREATED` status), [upload all desired files](sites.versions/populateFiles) to
        # the version, then [update](sites.versions/patch) the version to the `FINALIZED`
        # status. Note that if you leave the version in the `CREATED` state for more
        # than 12 hours, the system will automatically mark the version as `ABANDONED`.
        # You can also change the status of a version to `DELETED` by calling the [`
        # DeleteVersion`](sites.versions/delete) endpoint.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        # Output only. The total stored bytesize of the version. This value is
        # calculated after a version is `FINALIZED`.
        # Corresponds to the JSON property `versionBytes`
        # @return [Fixnum]
        attr_accessor :version_bytes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @create_user = args[:create_user] if args.key?(:create_user)
          @delete_time = args[:delete_time] if args.key?(:delete_time)
          @delete_user = args[:delete_user] if args.key?(:delete_user)
          @file_count = args[:file_count] if args.key?(:file_count)
          @finalize_time = args[:finalize_time] if args.key?(:finalize_time)
          @finalize_user = args[:finalize_user] if args.key?(:finalize_user)
          @labels = args[:labels] if args.key?(:labels)
          @name = args[:name] if args.key?(:name)
          @preview = args[:preview] if args.key?(:preview)
          @status = args[:status] if args.key?(:status)
          @version_bytes = args[:version_bytes] if args.key?(:version_bytes)
        end
      end
      
      # A static content file that is part of a version.
      class VersionFile
        include Google::Apis::Core::Hashable
      
        # The SHA256 content hash of the file.
        # Corresponds to the JSON property `hash`
        # @return [String]
        attr_accessor :hash_prop
      
        # The URI at which the file's content should display.
        # Corresponds to the JSON property `path`
        # @return [String]
        attr_accessor :path
      
        # Output only. The current status of a particular file in the specified version.
        # The value will be either `pending upload` or `uploaded`.
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @hash_prop = args[:hash_prop] if args.key?(:hash_prop)
          @path = args[:path] if args.key?(:path)
          @status = args[:status] if args.key?(:status)
        end
      end
    end
  end
end
