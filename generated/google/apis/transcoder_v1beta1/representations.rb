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
    module TranscoderV1beta1
      
      class AdBreak
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Aes128Encryption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Animation
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnimationEnd
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnimationFade
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AnimationStatic
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Audio
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AudioAtom
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AudioChannel
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AudioChannelInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AudioStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Color
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Crop
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Deblock
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Denoise
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class EditAtom
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ElementaryStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Empty
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Encryption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class FailureDetail
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Image
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Input
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Job
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class JobTemplate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListJobTemplatesResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class ListJobsResponse
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Manifest
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MpegCommonEncryption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class MuxStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class NormalizedCoordinate
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class OriginUri
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Output
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Overlay
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PreprocessingConfig
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Progress
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class PubsubDestination
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SampleAesEncryption
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SegmentSettings
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class SpriteSheet
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextAtom
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextInput
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class TextStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class VideoStream
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class AdBreak
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time_offset, as: 'startTimeOffset'
        end
      end
      
      class Aes128Encryption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_uri, as: 'keyUri'
        end
      end
      
      class Animation
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :animation_end, as: 'animationEnd', class: Google::Apis::TranscoderV1beta1::AnimationEnd, decorator: Google::Apis::TranscoderV1beta1::AnimationEnd::Representation
      
          property :animation_fade, as: 'animationFade', class: Google::Apis::TranscoderV1beta1::AnimationFade, decorator: Google::Apis::TranscoderV1beta1::AnimationFade::Representation
      
          property :animation_static, as: 'animationStatic', class: Google::Apis::TranscoderV1beta1::AnimationStatic, decorator: Google::Apis::TranscoderV1beta1::AnimationStatic::Representation
      
        end
      end
      
      class AnimationEnd
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time_offset, as: 'startTimeOffset'
        end
      end
      
      class AnimationFade
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_offset, as: 'endTimeOffset'
          property :fade_type, as: 'fadeType'
          property :start_time_offset, as: 'startTimeOffset'
          property :xy, as: 'xy', class: Google::Apis::TranscoderV1beta1::NormalizedCoordinate, decorator: Google::Apis::TranscoderV1beta1::NormalizedCoordinate::Representation
      
        end
      end
      
      class AnimationStatic
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :start_time_offset, as: 'startTimeOffset'
          property :xy, as: 'xy', class: Google::Apis::TranscoderV1beta1::NormalizedCoordinate, decorator: Google::Apis::TranscoderV1beta1::NormalizedCoordinate::Representation
      
        end
      end
      
      class Audio
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :high_boost, as: 'highBoost'
          property :low_boost, as: 'lowBoost'
          property :lufs, as: 'lufs'
        end
      end
      
      class AudioAtom
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :channels, as: 'channels', class: Google::Apis::TranscoderV1beta1::AudioChannel, decorator: Google::Apis::TranscoderV1beta1::AudioChannel::Representation
      
          property :key, as: 'key'
        end
      end
      
      class AudioChannel
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inputs, as: 'inputs', class: Google::Apis::TranscoderV1beta1::AudioChannelInput, decorator: Google::Apis::TranscoderV1beta1::AudioChannelInput::Representation
      
        end
      end
      
      class AudioChannelInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :channel, as: 'channel'
          property :gain_db, as: 'gainDb'
          property :key, as: 'key'
          property :track, as: 'track'
        end
      end
      
      class AudioStream
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bitrate_bps, as: 'bitrateBps'
          property :channel_count, as: 'channelCount'
          collection :channel_layout, as: 'channelLayout'
          property :codec, as: 'codec'
          collection :mapping, as: 'mapping', class: Google::Apis::TranscoderV1beta1::AudioAtom, decorator: Google::Apis::TranscoderV1beta1::AudioAtom::Representation
      
          property :sample_rate_hertz, as: 'sampleRateHertz'
        end
      end
      
      class Color
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :brightness, as: 'brightness'
          property :contrast, as: 'contrast'
          property :saturation, as: 'saturation'
        end
      end
      
      class Crop
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :bottom_pixels, as: 'bottomPixels'
          property :left_pixels, as: 'leftPixels'
          property :right_pixels, as: 'rightPixels'
          property :top_pixels, as: 'topPixels'
        end
      end
      
      class Deblock
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :enabled, as: 'enabled'
          property :strength, as: 'strength'
        end
      end
      
      class Denoise
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :strength, as: 'strength'
          property :tune, as: 'tune'
        end
      end
      
      class EditAtom
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :end_time_offset, as: 'endTimeOffset'
          collection :inputs, as: 'inputs'
          property :key, as: 'key'
          property :start_time_offset, as: 'startTimeOffset'
        end
      end
      
      class ElementaryStream
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio_stream, as: 'audioStream', class: Google::Apis::TranscoderV1beta1::AudioStream, decorator: Google::Apis::TranscoderV1beta1::AudioStream::Representation
      
          property :key, as: 'key'
          property :text_stream, as: 'textStream', class: Google::Apis::TranscoderV1beta1::TextStream, decorator: Google::Apis::TranscoderV1beta1::TextStream::Representation
      
          property :video_stream, as: 'videoStream', class: Google::Apis::TranscoderV1beta1::VideoStream, decorator: Google::Apis::TranscoderV1beta1::VideoStream::Representation
      
        end
      end
      
      class Empty
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
        end
      end
      
      class Encryption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :aes128, as: 'aes128', class: Google::Apis::TranscoderV1beta1::Aes128Encryption, decorator: Google::Apis::TranscoderV1beta1::Aes128Encryption::Representation
      
          property :iv, as: 'iv'
          property :key, as: 'key'
          property :mpeg_cenc, as: 'mpegCenc', class: Google::Apis::TranscoderV1beta1::MpegCommonEncryption, decorator: Google::Apis::TranscoderV1beta1::MpegCommonEncryption::Representation
      
          property :sample_aes, as: 'sampleAes', class: Google::Apis::TranscoderV1beta1::SampleAesEncryption, decorator: Google::Apis::TranscoderV1beta1::SampleAesEncryption::Representation
      
        end
      end
      
      class FailureDetail
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :description, as: 'description'
        end
      end
      
      class Image
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :alpha, as: 'alpha'
          property :resolution, as: 'resolution', class: Google::Apis::TranscoderV1beta1::NormalizedCoordinate, decorator: Google::Apis::TranscoderV1beta1::NormalizedCoordinate::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class Input
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :preprocessing_config, as: 'preprocessingConfig', class: Google::Apis::TranscoderV1beta1::PreprocessingConfig, decorator: Google::Apis::TranscoderV1beta1::PreprocessingConfig::Representation
      
          property :uri, as: 'uri'
        end
      end
      
      class Job
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::TranscoderV1beta1::JobConfig, decorator: Google::Apis::TranscoderV1beta1::JobConfig::Representation
      
          property :create_time, as: 'createTime'
          property :end_time, as: 'endTime'
          collection :failure_details, as: 'failureDetails', class: Google::Apis::TranscoderV1beta1::FailureDetail, decorator: Google::Apis::TranscoderV1beta1::FailureDetail::Representation
      
          property :failure_reason, as: 'failureReason'
          property :input_uri, as: 'inputUri'
          property :name, as: 'name'
          property :origin_uri, as: 'originUri', class: Google::Apis::TranscoderV1beta1::OriginUri, decorator: Google::Apis::TranscoderV1beta1::OriginUri::Representation
      
          property :output_uri, as: 'outputUri'
          property :priority, as: 'priority'
          property :progress, as: 'progress', class: Google::Apis::TranscoderV1beta1::Progress, decorator: Google::Apis::TranscoderV1beta1::Progress::Representation
      
          property :start_time, as: 'startTime'
          property :state, as: 'state'
          property :template_id, as: 'templateId'
        end
      end
      
      class JobConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :ad_breaks, as: 'adBreaks', class: Google::Apis::TranscoderV1beta1::AdBreak, decorator: Google::Apis::TranscoderV1beta1::AdBreak::Representation
      
          collection :edit_list, as: 'editList', class: Google::Apis::TranscoderV1beta1::EditAtom, decorator: Google::Apis::TranscoderV1beta1::EditAtom::Representation
      
          collection :elementary_streams, as: 'elementaryStreams', class: Google::Apis::TranscoderV1beta1::ElementaryStream, decorator: Google::Apis::TranscoderV1beta1::ElementaryStream::Representation
      
          collection :inputs, as: 'inputs', class: Google::Apis::TranscoderV1beta1::Input, decorator: Google::Apis::TranscoderV1beta1::Input::Representation
      
          collection :manifests, as: 'manifests', class: Google::Apis::TranscoderV1beta1::Manifest, decorator: Google::Apis::TranscoderV1beta1::Manifest::Representation
      
          collection :mux_streams, as: 'muxStreams', class: Google::Apis::TranscoderV1beta1::MuxStream, decorator: Google::Apis::TranscoderV1beta1::MuxStream::Representation
      
          property :output, as: 'output', class: Google::Apis::TranscoderV1beta1::Output, decorator: Google::Apis::TranscoderV1beta1::Output::Representation
      
          collection :overlays, as: 'overlays', class: Google::Apis::TranscoderV1beta1::Overlay, decorator: Google::Apis::TranscoderV1beta1::Overlay::Representation
      
          property :pubsub_destination, as: 'pubsubDestination', class: Google::Apis::TranscoderV1beta1::PubsubDestination, decorator: Google::Apis::TranscoderV1beta1::PubsubDestination::Representation
      
          collection :sprite_sheets, as: 'spriteSheets', class: Google::Apis::TranscoderV1beta1::SpriteSheet, decorator: Google::Apis::TranscoderV1beta1::SpriteSheet::Representation
      
        end
      end
      
      class JobTemplate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :config, as: 'config', class: Google::Apis::TranscoderV1beta1::JobConfig, decorator: Google::Apis::TranscoderV1beta1::JobConfig::Representation
      
          property :name, as: 'name'
        end
      end
      
      class ListJobTemplatesResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :job_templates, as: 'jobTemplates', class: Google::Apis::TranscoderV1beta1::JobTemplate, decorator: Google::Apis::TranscoderV1beta1::JobTemplate::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class ListJobsResponse
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :jobs, as: 'jobs', class: Google::Apis::TranscoderV1beta1::Job, decorator: Google::Apis::TranscoderV1beta1::Job::Representation
      
          property :next_page_token, as: 'nextPageToken'
        end
      end
      
      class Manifest
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :file_name, as: 'fileName'
          collection :mux_streams, as: 'muxStreams'
          property :type, as: 'type'
        end
      end
      
      class MpegCommonEncryption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_id, as: 'keyId'
          property :scheme, as: 'scheme'
        end
      end
      
      class MuxStream
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :container, as: 'container'
          collection :elementary_streams, as: 'elementaryStreams'
          property :encryption, as: 'encryption', class: Google::Apis::TranscoderV1beta1::Encryption, decorator: Google::Apis::TranscoderV1beta1::Encryption::Representation
      
          property :file_name, as: 'fileName'
          property :key, as: 'key'
          property :segment_settings, as: 'segmentSettings', class: Google::Apis::TranscoderV1beta1::SegmentSettings, decorator: Google::Apis::TranscoderV1beta1::SegmentSettings::Representation
      
        end
      end
      
      class NormalizedCoordinate
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :x, as: 'x'
          property :y, as: 'y'
        end
      end
      
      class OriginUri
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :dash, as: 'dash'
          property :hls, as: 'hls'
        end
      end
      
      class Output
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :uri, as: 'uri'
        end
      end
      
      class Overlay
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :animations, as: 'animations', class: Google::Apis::TranscoderV1beta1::Animation, decorator: Google::Apis::TranscoderV1beta1::Animation::Representation
      
          property :image, as: 'image', class: Google::Apis::TranscoderV1beta1::Image, decorator: Google::Apis::TranscoderV1beta1::Image::Representation
      
        end
      end
      
      class PreprocessingConfig
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :audio, as: 'audio', class: Google::Apis::TranscoderV1beta1::Audio, decorator: Google::Apis::TranscoderV1beta1::Audio::Representation
      
          property :color, as: 'color', class: Google::Apis::TranscoderV1beta1::Color, decorator: Google::Apis::TranscoderV1beta1::Color::Representation
      
          property :crop, as: 'crop', class: Google::Apis::TranscoderV1beta1::Crop, decorator: Google::Apis::TranscoderV1beta1::Crop::Representation
      
          property :deblock, as: 'deblock', class: Google::Apis::TranscoderV1beta1::Deblock, decorator: Google::Apis::TranscoderV1beta1::Deblock::Representation
      
          property :denoise, as: 'denoise', class: Google::Apis::TranscoderV1beta1::Denoise, decorator: Google::Apis::TranscoderV1beta1::Denoise::Representation
      
        end
      end
      
      class Progress
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :analyzed, as: 'analyzed'
          property :encoded, as: 'encoded'
          property :notified, as: 'notified'
          property :uploaded, as: 'uploaded'
        end
      end
      
      class PubsubDestination
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :topic, as: 'topic'
        end
      end
      
      class SampleAesEncryption
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key_uri, as: 'keyUri'
        end
      end
      
      class SegmentSettings
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :individual_segments, as: 'individualSegments'
          property :segment_duration, as: 'segmentDuration'
        end
      end
      
      class SpriteSheet
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :column_count, as: 'columnCount'
          property :end_time_offset, as: 'endTimeOffset'
          property :file_prefix, as: 'filePrefix'
          property :format, as: 'format'
          property :interval, as: 'interval'
          property :row_count, as: 'rowCount'
          property :sprite_height_pixels, as: 'spriteHeightPixels'
          property :sprite_width_pixels, as: 'spriteWidthPixels'
          property :start_time_offset, as: 'startTimeOffset'
          property :total_count, as: 'totalCount'
        end
      end
      
      class TextAtom
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :inputs, as: 'inputs', class: Google::Apis::TranscoderV1beta1::TextInput, decorator: Google::Apis::TranscoderV1beta1::TextInput::Representation
      
          property :key, as: 'key'
        end
      end
      
      class TextInput
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :key, as: 'key'
          property :track, as: 'track'
        end
      end
      
      class TextStream
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :codec, as: 'codec'
          property :language_code, as: 'languageCode'
          collection :mapping, as: 'mapping', class: Google::Apis::TranscoderV1beta1::TextAtom, decorator: Google::Apis::TranscoderV1beta1::TextAtom::Representation
      
        end
      end
      
      class VideoStream
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :allow_open_gop, as: 'allowOpenGop'
          property :aq_strength, as: 'aqStrength'
          property :b_frame_count, as: 'bFrameCount'
          property :b_pyramid, as: 'bPyramid'
          property :bitrate_bps, as: 'bitrateBps'
          property :codec, as: 'codec'
          property :crf_level, as: 'crfLevel'
          property :enable_two_pass, as: 'enableTwoPass'
          property :entropy_coder, as: 'entropyCoder'
          property :frame_rate, as: 'frameRate'
          property :gop_duration, as: 'gopDuration'
          property :gop_frame_count, as: 'gopFrameCount'
          property :height_pixels, as: 'heightPixels'
          property :pixel_format, as: 'pixelFormat'
          property :preset, as: 'preset'
          property :profile, as: 'profile'
          property :rate_control_mode, as: 'rateControlMode'
          property :tune, as: 'tune'
          property :vbv_fullness_bits, as: 'vbvFullnessBits'
          property :vbv_size_bits, as: 'vbvSizeBits'
          property :width_pixels, as: 'widthPixels'
        end
      end
    end
  end
end
