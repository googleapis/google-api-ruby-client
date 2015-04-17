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
    module BooksV1
      class AnnotationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AnnotationdataRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AnnotationsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AnnotationsSummaryRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AnnotationsdataRepresentation < Google::Apis::Core::JsonRepresentation; end
      class AnnotationsRangeRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CloudloadingResourceRepresentation < Google::Apis::Core::JsonRepresentation; end
      class VolumesRecommendedRateResponseRepresentation < Google::Apis::Core::JsonRepresentation; end
      class BookshelfRepresentation < Google::Apis::Core::JsonRepresentation; end
      class BookshelvesRepresentation < Google::Apis::Core::JsonRepresentation; end
      class CategoryRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ConcurrentAccessRestrictionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DictlayerdataRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DownloadAccessRestrictionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class DownloadAccessesRepresentation < Google::Apis::Core::JsonRepresentation; end
      class GeolayerdataRepresentation < Google::Apis::Core::JsonRepresentation; end
      class LayersummariesRepresentation < Google::Apis::Core::JsonRepresentation; end
      class LayersummaryRepresentation < Google::Apis::Core::JsonRepresentation; end
      class MetadataRepresentation < Google::Apis::Core::JsonRepresentation; end
      class OffersRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ReadingPositionRepresentation < Google::Apis::Core::JsonRepresentation; end
      class RequestAccessRepresentation < Google::Apis::Core::JsonRepresentation; end
      class ReviewRepresentation < Google::Apis::Core::JsonRepresentation; end
      class UsersettingsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class VolumeRepresentation < Google::Apis::Core::JsonRepresentation; end
      class Volume2Representation < Google::Apis::Core::JsonRepresentation; end
      class VolumeannotationRepresentation < Google::Apis::Core::JsonRepresentation; end
      class VolumeannotationsRepresentation < Google::Apis::Core::JsonRepresentation; end
      class VolumesRepresentation < Google::Apis::Core::JsonRepresentation; end

      # @private
      class AnnotationRepresentation < Google::Apis::Core::JsonRepresentation
        property :after_selected_text, as: 'afterSelectedText'
        property :before_selected_text, as: 'beforeSelectedText'
        property :client_version_ranges, as: 'clientVersionRanges', class: Google::Apis::BooksV1::Annotation::ClientVersionRanges do
          property :cfi_range, as: 'cfiRange', class: Google::Apis::BooksV1::AnnotationsRange, decorator: Google::Apis::BooksV1::AnnotationsRangeRepresentation
          
          property :content_version, as: 'contentVersion'
          property :gb_image_range, as: 'gbImageRange', class: Google::Apis::BooksV1::AnnotationsRange, decorator: Google::Apis::BooksV1::AnnotationsRangeRepresentation
          
          property :gb_text_range, as: 'gbTextRange', class: Google::Apis::BooksV1::AnnotationsRange, decorator: Google::Apis::BooksV1::AnnotationsRangeRepresentation
          
          property :image_cfi_range, as: 'imageCfiRange', class: Google::Apis::BooksV1::AnnotationsRange, decorator: Google::Apis::BooksV1::AnnotationsRangeRepresentation
        end
        
        property :created, as: 'created', type: DateTime
        property :current_version_ranges, as: 'currentVersionRanges', class: Google::Apis::BooksV1::Annotation::CurrentVersionRanges do
          property :cfi_range, as: 'cfiRange', class: Google::Apis::BooksV1::AnnotationsRange, decorator: Google::Apis::BooksV1::AnnotationsRangeRepresentation
          
          property :content_version, as: 'contentVersion'
          property :gb_image_range, as: 'gbImageRange', class: Google::Apis::BooksV1::AnnotationsRange, decorator: Google::Apis::BooksV1::AnnotationsRangeRepresentation
          
          property :gb_text_range, as: 'gbTextRange', class: Google::Apis::BooksV1::AnnotationsRange, decorator: Google::Apis::BooksV1::AnnotationsRangeRepresentation
          
          property :image_cfi_range, as: 'imageCfiRange', class: Google::Apis::BooksV1::AnnotationsRange, decorator: Google::Apis::BooksV1::AnnotationsRangeRepresentation
        end
        
        property :data, as: 'data'
        property :deleted, as: 'deleted'
        property :highlight_style, as: 'highlightStyle'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :layer_id, as: 'layerId'
        property :layer_summary, as: 'layerSummary', class: Google::Apis::BooksV1::Annotation::LayerSummary do
          property :allowed_character_count, as: 'allowedCharacterCount'
          property :limit_type, as: 'limitType'
          property :remaining_character_count, as: 'remainingCharacterCount'
        end
        
        collection :page_ids, as: 'pageIds'
        
        property :selected_text, as: 'selectedText'
        property :self_link, as: 'selfLink'
        property :updated, as: 'updated', type: DateTime
        property :volume_id, as: 'volumeId'
      end

      # @private
      class AnnotationdataRepresentation < Google::Apis::Core::JsonRepresentation
        property :annotation_type, as: 'annotationType'
        property :data, as: 'data'
        property :encoded_data, as: 'encoded_data'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :layer_id, as: 'layerId'
        property :self_link, as: 'selfLink'
        property :updated, as: 'updated', type: DateTime
        property :volume_id, as: 'volumeId'
      end

      # @private
      class AnnotationsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::BooksV1::Annotation, decorator: Google::Apis::BooksV1::AnnotationRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :total_items, as: 'totalItems'
      end

      # @private
      class AnnotationsSummaryRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        collection :layers, as: 'layers', class: Google::Apis::BooksV1::AnnotationsSummary::Layer do
          property :allowed_character_count, as: 'allowedCharacterCount'
          property :layer_id, as: 'layerId'
          property :limit_type, as: 'limitType'
          property :remaining_character_count, as: 'remainingCharacterCount'
          property :updated, as: 'updated', type: DateTime
        end
      end

      # @private
      class AnnotationsdataRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::BooksV1::Annotationdata, decorator: Google::Apis::BooksV1::AnnotationdataRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :total_items, as: 'totalItems'
      end

      # @private
      class AnnotationsRangeRepresentation < Google::Apis::Core::JsonRepresentation
        property :end_offset, as: 'endOffset'
        property :end_position, as: 'endPosition'
        property :start_offset, as: 'startOffset'
        property :start_position, as: 'startPosition'
      end

      # @private
      class CloudloadingResourceRepresentation < Google::Apis::Core::JsonRepresentation
        property :author, as: 'author'
        property :processing_state, as: 'processingState'
        property :title, as: 'title'
        property :volume_id, as: 'volumeId'
      end

      # @private
      class VolumesRecommendedRateResponseRepresentation < Google::Apis::Core::JsonRepresentation
        property :consistency_token, as: 'consistency_token'
      end

      # @private
      class BookshelfRepresentation < Google::Apis::Core::JsonRepresentation
        property :access, as: 'access'
        property :created, as: 'created', type: DateTime
        property :description, as: 'description'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :self_link, as: 'selfLink'
        property :title, as: 'title'
        property :updated, as: 'updated', type: DateTime
        property :volume_count, as: 'volumeCount'
        property :volumes_last_updated, as: 'volumesLastUpdated', type: DateTime
      end

      # @private
      class BookshelvesRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::BooksV1::Bookshelf, decorator: Google::Apis::BooksV1::BookshelfRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class CategoryRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::BooksV1::Category::Item do
          property :badge_url, as: 'badgeUrl'
          property :category_id, as: 'categoryId'
          property :name, as: 'name'
        end
        
        
        property :kind, as: 'kind'
      end

      # @private
      class ConcurrentAccessRestrictionRepresentation < Google::Apis::Core::JsonRepresentation
        property :device_allowed, as: 'deviceAllowed'
        property :kind, as: 'kind'
        property :max_concurrent_devices, as: 'maxConcurrentDevices'
        property :message, as: 'message'
        property :nonce, as: 'nonce'
        property :reason_code, as: 'reasonCode'
        property :restricted, as: 'restricted'
        property :signature, as: 'signature'
        property :source, as: 'source'
        property :time_window_seconds, as: 'timeWindowSeconds'
        property :volume_id, as: 'volumeId'
      end

      # @private
      class DictlayerdataRepresentation < Google::Apis::Core::JsonRepresentation
        property :common, as: 'common', class: Google::Apis::BooksV1::Dictlayerdata::Common do
          property :title, as: 'title'
        end
        
        property :dict, as: 'dict', class: Google::Apis::BooksV1::Dictlayerdata::Dict do
          property :source, as: 'source', class: Google::Apis::BooksV1::Dictlayerdata::Dict::Source do
            property :attribution, as: 'attribution'
            property :url, as: 'url'
          end
          
          collection :words, as: 'words', class: Google::Apis::BooksV1::Dictlayerdata::Dict::Word do
            collection :derivatives, as: 'derivatives', class: Google::Apis::BooksV1::Dictlayerdata::Dict::Word::Derivative do
              property :source, as: 'source', class: Google::Apis::BooksV1::Dictlayerdata::Dict::Word::Derivative::Source do
                property :attribution, as: 'attribution'
                property :url, as: 'url'
              end
              
              property :text, as: 'text'
            end
            
            
            collection :examples, as: 'examples', class: Google::Apis::BooksV1::Dictlayerdata::Dict::Word::Example do
              property :source, as: 'source', class: Google::Apis::BooksV1::Dictlayerdata::Dict::Word::Example::Source do
                property :attribution, as: 'attribution'
                property :url, as: 'url'
              end
              
              property :text, as: 'text'
            end
            
            
            collection :senses, as: 'senses', class: Google::Apis::BooksV1::Dictlayerdata::Dict::Word::Sense do
              collection :conjugations, as: 'conjugations', class: Google::Apis::BooksV1::Dictlayerdata::Dict::Word::Sense::Conjugation do
                property :type, as: 'type'
                property :value, as: 'value'
              end
              
              
              collection :definitions, as: 'definitions', class: Google::Apis::BooksV1::Dictlayerdata::Dict::Word::Sense::Definition do
                property :definition, as: 'definition'
                collection :examples, as: 'examples', class: Google::Apis::BooksV1::Dictlayerdata::Dict::Word::Sense::Definition::Example do
                  property :source, as: 'source', class: Google::Apis::BooksV1::Dictlayerdata::Dict::Word::Sense::Definition::Example::Source do
                    property :attribution, as: 'attribution'
                    property :url, as: 'url'
                  end
                  
                  property :text, as: 'text'
                end
              end
              
              
              property :part_of_speech, as: 'partOfSpeech'
              property :pronunciation, as: 'pronunciation'
              property :pronunciation_url, as: 'pronunciationUrl'
              property :source, as: 'source', class: Google::Apis::BooksV1::Dictlayerdata::Dict::Word::Sense::Source do
                property :attribution, as: 'attribution'
                property :url, as: 'url'
              end
              
              property :syllabification, as: 'syllabification'
              collection :synonyms, as: 'synonyms', class: Google::Apis::BooksV1::Dictlayerdata::Dict::Word::Sense::Synonym do
                property :source, as: 'source', class: Google::Apis::BooksV1::Dictlayerdata::Dict::Word::Sense::Synonym::Source do
                  property :attribution, as: 'attribution'
                  property :url, as: 'url'
                end
                
                property :text, as: 'text'
              end
            end
            
            
            property :source, as: 'source', class: Google::Apis::BooksV1::Dictlayerdata::Dict::Word::Source do
              property :attribution, as: 'attribution'
              property :url, as: 'url'
            end
          end
        end
        
        property :kind, as: 'kind'
      end

      # @private
      class DownloadAccessRestrictionRepresentation < Google::Apis::Core::JsonRepresentation
        property :device_allowed, as: 'deviceAllowed'
        property :downloads_acquired, as: 'downloadsAcquired'
        property :just_acquired, as: 'justAcquired'
        property :kind, as: 'kind'
        property :max_download_devices, as: 'maxDownloadDevices'
        property :message, as: 'message'
        property :nonce, as: 'nonce'
        property :reason_code, as: 'reasonCode'
        property :restricted, as: 'restricted'
        property :signature, as: 'signature'
        property :source, as: 'source'
        property :volume_id, as: 'volumeId'
      end

      # @private
      class DownloadAccessesRepresentation < Google::Apis::Core::JsonRepresentation
        collection :download_access_list, as: 'downloadAccessList', class: Google::Apis::BooksV1::DownloadAccessRestriction, decorator: Google::Apis::BooksV1::DownloadAccessRestrictionRepresentation
        
        
        property :kind, as: 'kind'
      end

      # @private
      class GeolayerdataRepresentation < Google::Apis::Core::JsonRepresentation
        property :common, as: 'common', class: Google::Apis::BooksV1::Geolayerdata::Common do
          property :lang, as: 'lang'
          property :preview_image_url, as: 'previewImageUrl'
          property :snippet, as: 'snippet'
          property :snippet_url, as: 'snippetUrl'
          property :title, as: 'title'
        end
        
        property :geo, as: 'geo', class: Google::Apis::BooksV1::Geolayerdata::Geo do
          collection :boundary, as: 'boundary', :class => Array do
            include Representable::JSON::Collection
            items class: Google::Apis::BooksV1::Geolayerdata::Geo::Boundary do
            property :latitude, as: 'latitude'
            property :longitude, as: 'longitude'
          end
          
          end
          
          
          property :cache_policy, as: 'cachePolicy'
          property :country_code, as: 'countryCode'
          property :latitude, as: 'latitude'
          property :longitude, as: 'longitude'
          property :map_type, as: 'mapType'
          property :viewport, as: 'viewport', class: Google::Apis::BooksV1::Geolayerdata::Geo::Viewport do
            property :hi, as: 'hi', class: Google::Apis::BooksV1::Geolayerdata::Geo::Viewport::Hi do
              property :latitude, as: 'latitude'
              property :longitude, as: 'longitude'
            end
            
            property :lo, as: 'lo', class: Google::Apis::BooksV1::Geolayerdata::Geo::Viewport::Lo do
              property :latitude, as: 'latitude'
              property :longitude, as: 'longitude'
            end
          end
          
          property :zoom, as: 'zoom'
        end
        
        property :kind, as: 'kind'
      end

      # @private
      class LayersummariesRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::BooksV1::Layersummary, decorator: Google::Apis::BooksV1::LayersummaryRepresentation
        
        
        property :kind, as: 'kind'
        property :total_items, as: 'totalItems'
      end

      # @private
      class LayersummaryRepresentation < Google::Apis::Core::JsonRepresentation
        property :annotation_count, as: 'annotationCount'
        collection :annotation_types, as: 'annotationTypes'
        
        property :annotations_data_link, as: 'annotationsDataLink'
        property :annotations_link, as: 'annotationsLink'
        property :content_version, as: 'contentVersion'
        property :data_count, as: 'dataCount'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :layer_id, as: 'layerId'
        property :self_link, as: 'selfLink'
        property :updated, as: 'updated', type: DateTime
        property :volume_annotations_version, as: 'volumeAnnotationsVersion'
        property :volume_id, as: 'volumeId'
      end

      # @private
      class MetadataRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::BooksV1::Metadata::Item do
          property :download_url, as: 'download_url'
          property :encrypted_key, as: 'encrypted_key'
          property :language, as: 'language'
          property :size, as: 'size'
          property :version, as: 'version'
        end
        
        
        property :kind, as: 'kind'
      end

      # @private
      class OffersRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::BooksV1::Offers::Item do
          property :art_url, as: 'artUrl'
          property :gservices_key, as: 'gservicesKey'
          property :id, as: 'id'
          collection :items, as: 'items', class: Google::Apis::BooksV1::Offers::Item::Item do
            property :author, as: 'author'
            property :canonical_volume_link, as: 'canonicalVolumeLink'
            property :cover_url, as: 'coverUrl'
            property :description, as: 'description'
            property :title, as: 'title'
            property :volume_id, as: 'volumeId'
          end
        end
        
        
        property :kind, as: 'kind'
      end

      # @private
      class ReadingPositionRepresentation < Google::Apis::Core::JsonRepresentation
        property :epub_cfi_position, as: 'epubCfiPosition'
        property :gb_image_position, as: 'gbImagePosition'
        property :gb_text_position, as: 'gbTextPosition'
        property :kind, as: 'kind'
        property :pdf_position, as: 'pdfPosition'
        property :updated, as: 'updated', type: DateTime
        property :volume_id, as: 'volumeId'
      end

      # @private
      class RequestAccessRepresentation < Google::Apis::Core::JsonRepresentation
        property :concurrent_access, as: 'concurrentAccess', class: Google::Apis::BooksV1::ConcurrentAccessRestriction, decorator: Google::Apis::BooksV1::ConcurrentAccessRestrictionRepresentation
        
        property :download_access, as: 'downloadAccess', class: Google::Apis::BooksV1::DownloadAccessRestriction, decorator: Google::Apis::BooksV1::DownloadAccessRestrictionRepresentation
        
        property :kind, as: 'kind'
      end

      # @private
      class ReviewRepresentation < Google::Apis::Core::JsonRepresentation
        property :author, as: 'author', class: Google::Apis::BooksV1::Review::Author do
          property :display_name, as: 'displayName'
        end
        
        property :content, as: 'content'
        property :date, as: 'date'
        property :full_text_url, as: 'fullTextUrl'
        property :kind, as: 'kind'
        property :rating, as: 'rating'
        property :source, as: 'source', class: Google::Apis::BooksV1::Review::Source do
          property :description, as: 'description'
          property :extra_description, as: 'extraDescription'
          property :url, as: 'url'
        end
        
        property :title, as: 'title'
        property :type, as: 'type'
        property :volume_id, as: 'volumeId'
      end

      # @private
      class UsersettingsRepresentation < Google::Apis::Core::JsonRepresentation
        property :kind, as: 'kind'
        property :notes_export, as: 'notesExport', class: Google::Apis::BooksV1::Usersettings::NotesExport do
          property :folder_name, as: 'folderName'
          property :is_enabled, as: 'isEnabled'
        end
      end

      # @private
      class VolumeRepresentation < Google::Apis::Core::JsonRepresentation
        property :access_info, as: 'accessInfo', class: Google::Apis::BooksV1::Volume::AccessInfo do
          property :access_view_status, as: 'accessViewStatus'
          property :country, as: 'country'
          property :download_access, as: 'downloadAccess', class: Google::Apis::BooksV1::DownloadAccessRestriction, decorator: Google::Apis::BooksV1::DownloadAccessRestrictionRepresentation
          
          property :drive_imported_content_link, as: 'driveImportedContentLink'
          property :embeddable, as: 'embeddable'
          property :epub, as: 'epub', class: Google::Apis::BooksV1::Volume::AccessInfo::Epub do
            property :acs_token_link, as: 'acsTokenLink'
            property :download_link, as: 'downloadLink'
            property :is_available, as: 'isAvailable'
          end
          
          property :explicit_offline_license_management, as: 'explicitOfflineLicenseManagement'
          property :pdf, as: 'pdf', class: Google::Apis::BooksV1::Volume::AccessInfo::Pdf do
            property :acs_token_link, as: 'acsTokenLink'
            property :download_link, as: 'downloadLink'
            property :is_available, as: 'isAvailable'
          end
          
          property :public_domain, as: 'publicDomain'
          property :quote_sharing_allowed, as: 'quoteSharingAllowed'
          property :text_to_speech_permission, as: 'textToSpeechPermission'
          property :view_order_url, as: 'viewOrderUrl'
          property :viewability, as: 'viewability'
          property :web_reader_link, as: 'webReaderLink'
        end
        
        property :etag, as: 'etag'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :layer_info, as: 'layerInfo', class: Google::Apis::BooksV1::Volume::LayerInfo do
          collection :layers, as: 'layers', class: Google::Apis::BooksV1::Volume::LayerInfo::Layer do
            property :layer_id, as: 'layerId'
            property :volume_annotations_version, as: 'volumeAnnotationsVersion'
          end
        end
        
        property :recommended_info, as: 'recommendedInfo', class: Google::Apis::BooksV1::Volume::RecommendedInfo do
          property :explanation, as: 'explanation'
        end
        
        property :sale_info, as: 'saleInfo', class: Google::Apis::BooksV1::Volume::SaleInfo do
          property :buy_link, as: 'buyLink'
          property :country, as: 'country'
          property :is_ebook, as: 'isEbook'
          property :list_price, as: 'listPrice', class: Google::Apis::BooksV1::Volume::SaleInfo::ListPrice do
            property :amount, as: 'amount'
            property :currency_code, as: 'currencyCode'
          end
          
          collection :offers, as: 'offers', class: Google::Apis::BooksV1::Volume::SaleInfo::Offer do
            property :finsky_offer_type, as: 'finskyOfferType'
            property :list_price, as: 'listPrice', class: Google::Apis::BooksV1::Volume::SaleInfo::Offer::ListPrice do
              property :amount_in_micros, as: 'amountInMicros'
              property :currency_code, as: 'currencyCode'
            end
            
            property :rental_duration, as: 'rentalDuration', class: Google::Apis::BooksV1::Volume::SaleInfo::Offer::RentalDuration do
              property :count, as: 'count'
              property :unit, as: 'unit'
            end
            
            property :retail_price, as: 'retailPrice', class: Google::Apis::BooksV1::Volume::SaleInfo::Offer::RetailPrice do
              property :amount_in_micros, as: 'amountInMicros'
              property :currency_code, as: 'currencyCode'
            end
          end
          
          
          property :on_sale_date, as: 'onSaleDate', type: DateTime
          property :retail_price, as: 'retailPrice', class: Google::Apis::BooksV1::Volume::SaleInfo::RetailPrice do
            property :amount, as: 'amount'
            property :currency_code, as: 'currencyCode'
          end
          
          property :saleability, as: 'saleability'
        end
        
        property :search_info, as: 'searchInfo', class: Google::Apis::BooksV1::Volume::SearchInfo do
          property :text_snippet, as: 'textSnippet'
        end
        
        property :self_link, as: 'selfLink'
        property :user_info, as: 'userInfo', class: Google::Apis::BooksV1::Volume::UserInfo do
          property :copy, as: 'copy', class: Google::Apis::BooksV1::Volume::UserInfo::Copy do
            property :allowed_character_count, as: 'allowedCharacterCount'
            property :limit_type, as: 'limitType'
            property :remaining_character_count, as: 'remainingCharacterCount'
            property :updated, as: 'updated', type: DateTime
          end
          
          property :is_in_my_books, as: 'isInMyBooks'
          property :is_preordered, as: 'isPreordered'
          property :is_purchased, as: 'isPurchased'
          property :is_uploaded, as: 'isUploaded'
          property :reading_position, as: 'readingPosition', class: Google::Apis::BooksV1::ReadingPosition, decorator: Google::Apis::BooksV1::ReadingPositionRepresentation
          
          property :rental_period, as: 'rentalPeriod', class: Google::Apis::BooksV1::Volume::UserInfo::RentalPeriod do
            property :end_utc_sec, as: 'endUtcSec'
            property :start_utc_sec, as: 'startUtcSec'
          end
          
          property :rental_state, as: 'rentalState'
          property :review, as: 'review', class: Google::Apis::BooksV1::Review, decorator: Google::Apis::BooksV1::ReviewRepresentation
          
          property :updated, as: 'updated', type: DateTime
          property :user_uploaded_volume_info, as: 'userUploadedVolumeInfo', class: Google::Apis::BooksV1::Volume::UserInfo::UserUploadedVolumeInfo do
            property :processing_state, as: 'processingState'
          end
        end
        
        property :volume_info, as: 'volumeInfo', class: Google::Apis::BooksV1::Volume::VolumeInfo do
          collection :authors, as: 'authors'
          
          property :average_rating, as: 'averageRating'
          property :canonical_volume_link, as: 'canonicalVolumeLink'
          collection :categories, as: 'categories'
          
          property :content_version, as: 'contentVersion'
          property :description, as: 'description'
          property :dimensions, as: 'dimensions', class: Google::Apis::BooksV1::Volume::VolumeInfo::Dimensions do
            property :height, as: 'height'
            property :thickness, as: 'thickness'
            property :width, as: 'width'
          end
          
          property :image_links, as: 'imageLinks', class: Google::Apis::BooksV1::Volume::VolumeInfo::ImageLinks do
            property :extra_large, as: 'extraLarge'
            property :large, as: 'large'
            property :medium, as: 'medium'
            property :small, as: 'small'
            property :small_thumbnail, as: 'smallThumbnail'
            property :thumbnail, as: 'thumbnail'
          end
          
          collection :industry_identifiers, as: 'industryIdentifiers', class: Google::Apis::BooksV1::Volume::VolumeInfo::IndustryIdentifier do
            property :identifier, as: 'identifier'
            property :type, as: 'type'
          end
          
          
          property :info_link, as: 'infoLink'
          property :language, as: 'language'
          property :main_category, as: 'mainCategory'
          property :maturity_rating, as: 'maturityRating'
          property :page_count, as: 'pageCount'
          property :preview_link, as: 'previewLink'
          property :print_type, as: 'printType'
          property :printed_page_count, as: 'printedPageCount'
          property :published_date, as: 'publishedDate'
          property :publisher, as: 'publisher'
          property :ratings_count, as: 'ratingsCount'
          property :reading_modes, as: 'readingModes'
          property :sample_page_count, as: 'samplePageCount'
          property :subtitle, as: 'subtitle'
          property :title, as: 'title'
        end
      end

      # @private
      class Volume2Representation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::BooksV1::Volume, decorator: Google::Apis::BooksV1::VolumeRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
      end

      # @private
      class VolumeannotationRepresentation < Google::Apis::Core::JsonRepresentation
        property :annotation_data_id, as: 'annotationDataId'
        property :annotation_data_link, as: 'annotationDataLink'
        property :annotation_type, as: 'annotationType'
        property :content_ranges, as: 'contentRanges', class: Google::Apis::BooksV1::Volumeannotation::ContentRanges do
          property :cfi_range, as: 'cfiRange', class: Google::Apis::BooksV1::AnnotationsRange, decorator: Google::Apis::BooksV1::AnnotationsRangeRepresentation
          
          property :content_version, as: 'contentVersion'
          property :gb_image_range, as: 'gbImageRange', class: Google::Apis::BooksV1::AnnotationsRange, decorator: Google::Apis::BooksV1::AnnotationsRangeRepresentation
          
          property :gb_text_range, as: 'gbTextRange', class: Google::Apis::BooksV1::AnnotationsRange, decorator: Google::Apis::BooksV1::AnnotationsRangeRepresentation
        end
        
        property :data, as: 'data'
        property :deleted, as: 'deleted'
        property :id, as: 'id'
        property :kind, as: 'kind'
        property :layer_id, as: 'layerId'
        collection :page_ids, as: 'pageIds'
        
        property :selected_text, as: 'selectedText'
        property :self_link, as: 'selfLink'
        property :updated, as: 'updated', type: DateTime
        property :volume_id, as: 'volumeId'
      end

      # @private
      class VolumeannotationsRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::BooksV1::Volumeannotation, decorator: Google::Apis::BooksV1::VolumeannotationRepresentation
        
        
        property :kind, as: 'kind'
        property :next_page_token, as: 'nextPageToken'
        property :total_items, as: 'totalItems'
        property :version, as: 'version'
      end

      # @private
      class VolumesRepresentation < Google::Apis::Core::JsonRepresentation
        collection :items, as: 'items', class: Google::Apis::BooksV1::Volume, decorator: Google::Apis::BooksV1::VolumeRepresentation
        
        
        property :kind, as: 'kind'
        property :total_items, as: 'totalItems'
      end
    end
  end
end
