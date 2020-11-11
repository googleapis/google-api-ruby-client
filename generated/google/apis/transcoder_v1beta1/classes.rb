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
      
      # Ad break.
      class AdBreak
        include Google::Apis::Core::Hashable
      
        # Start time in seconds for the ad break, relative to the output file timeline.
        # The default is `0s`.
        # Corresponds to the JSON property `startTimeOffset`
        # @return [String]
        attr_accessor :start_time_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_time_offset = args[:start_time_offset] if args.key?(:start_time_offset)
        end
      end
      
      # Configuration for AES-128 encryption.
      class Aes128Encryption
        include Google::Apis::Core::Hashable
      
        # Required. URI of the key delivery service. This URI is inserted into the M3U8
        # header.
        # Corresponds to the JSON property `keyUri`
        # @return [String]
        attr_accessor :key_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_uri = args[:key_uri] if args.key?(:key_uri)
        end
      end
      
      # Animation types.
      class Animation
        include Google::Apis::Core::Hashable
      
        # End previous overlay animation from the video. Without AnimationEnd, the
        # overlay object will keep the state of previous animation until the end of the
        # video.
        # Corresponds to the JSON property `animationEnd`
        # @return [Google::Apis::TranscoderV1beta1::AnimationEnd]
        attr_accessor :animation_end
      
        # Display overlay object with fade animation.
        # Corresponds to the JSON property `animationFade`
        # @return [Google::Apis::TranscoderV1beta1::AnimationFade]
        attr_accessor :animation_fade
      
        # Display static overlay object.
        # Corresponds to the JSON property `animationStatic`
        # @return [Google::Apis::TranscoderV1beta1::AnimationStatic]
        attr_accessor :animation_static
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @animation_end = args[:animation_end] if args.key?(:animation_end)
          @animation_fade = args[:animation_fade] if args.key?(:animation_fade)
          @animation_static = args[:animation_static] if args.key?(:animation_static)
        end
      end
      
      # End previous overlay animation from the video. Without AnimationEnd, the
      # overlay object will keep the state of previous animation until the end of the
      # video.
      class AnimationEnd
        include Google::Apis::Core::Hashable
      
        # The time to end overlay object, in seconds. Default: 0
        # Corresponds to the JSON property `startTimeOffset`
        # @return [String]
        attr_accessor :start_time_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_time_offset = args[:start_time_offset] if args.key?(:start_time_offset)
        end
      end
      
      # Display overlay object with fade animation.
      class AnimationFade
        include Google::Apis::Core::Hashable
      
        # The time to end the fade animation, in seconds. Default: `start_time_offset` +
        # 1s
        # Corresponds to the JSON property `endTimeOffset`
        # @return [String]
        attr_accessor :end_time_offset
      
        # Required. Type of fade animation: `FADE_IN` or `FADE_OUT`.
        # Corresponds to the JSON property `fadeType`
        # @return [String]
        attr_accessor :fade_type
      
        # The time to start the fade animation, in seconds. Default: 0
        # Corresponds to the JSON property `startTimeOffset`
        # @return [String]
        attr_accessor :start_time_offset
      
        # 2D normalized coordinates. Default: ``0.0, 0.0``
        # Corresponds to the JSON property `xy`
        # @return [Google::Apis::TranscoderV1beta1::NormalizedCoordinate]
        attr_accessor :xy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time_offset = args[:end_time_offset] if args.key?(:end_time_offset)
          @fade_type = args[:fade_type] if args.key?(:fade_type)
          @start_time_offset = args[:start_time_offset] if args.key?(:start_time_offset)
          @xy = args[:xy] if args.key?(:xy)
        end
      end
      
      # Display static overlay object.
      class AnimationStatic
        include Google::Apis::Core::Hashable
      
        # The time to start displaying the overlay object, in seconds. Default: 0
        # Corresponds to the JSON property `startTimeOffset`
        # @return [String]
        attr_accessor :start_time_offset
      
        # 2D normalized coordinates. Default: ``0.0, 0.0``
        # Corresponds to the JSON property `xy`
        # @return [Google::Apis::TranscoderV1beta1::NormalizedCoordinate]
        attr_accessor :xy
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @start_time_offset = args[:start_time_offset] if args.key?(:start_time_offset)
          @xy = args[:xy] if args.key?(:xy)
        end
      end
      
      # Audio preprocessing configuration.
      class Audio
        include Google::Apis::Core::Hashable
      
        # Enable boosting high frequency components. The default is `false`.
        # Corresponds to the JSON property `highBoost`
        # @return [Boolean]
        attr_accessor :high_boost
        alias_method :high_boost?, :high_boost
      
        # Enable boosting low frequency components. The default is `false`.
        # Corresponds to the JSON property `lowBoost`
        # @return [Boolean]
        attr_accessor :low_boost
        alias_method :low_boost?, :low_boost
      
        # Specify audio loudness normalization in loudness units relative to full scale (
        # LUFS). Enter a value between -24 and 0, where -24 is the Advanced Television
        # Systems Committee (ATSC A/85), -23 is the EU R128 broadcast standard, -19 is
        # the prior standard for online mono audio, -18 is the ReplayGain standard, -16
        # is the prior standard for stereo audio, -14 is the new online audio standard
        # recommended by Spotify, as well as Amazon Echo, and 0 disables normalization.
        # The default is 0.
        # Corresponds to the JSON property `lufs`
        # @return [Float]
        attr_accessor :lufs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @high_boost = args[:high_boost] if args.key?(:high_boost)
          @low_boost = args[:low_boost] if args.key?(:low_boost)
          @lufs = args[:lufs] if args.key?(:lufs)
        end
      end
      
      # The mapping for the `Job.edit_list` atoms with audio `EditAtom.inputs`.
      class AudioAtom
        include Google::Apis::Core::Hashable
      
        # List of `Channel`s for this audio stream. for in-depth explanation.
        # Corresponds to the JSON property `channels`
        # @return [Array<Google::Apis::TranscoderV1beta1::AudioChannel>]
        attr_accessor :channels
      
        # Required. The `EditAtom.key` that references the atom with audio inputs in the
        # `Job.edit_list`.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channels = args[:channels] if args.key?(:channels)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # The audio channel.
      class AudioChannel
        include Google::Apis::Core::Hashable
      
        # List of `Job.inputs` for this audio channel.
        # Corresponds to the JSON property `inputs`
        # @return [Array<Google::Apis::TranscoderV1beta1::AudioChannelInput>]
        attr_accessor :inputs
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inputs = args[:inputs] if args.key?(:inputs)
        end
      end
      
      # Identifies which input file, track, and channel should be used.
      class AudioChannelInput
        include Google::Apis::Core::Hashable
      
        # Required. The zero-based index of the channel in the input file.
        # Corresponds to the JSON property `channel`
        # @return [Fixnum]
        attr_accessor :channel
      
        # Audio volume control in dB. Negative values decrease volume, positive values
        # increase. The default is 0.
        # Corresponds to the JSON property `gainDb`
        # @return [Float]
        attr_accessor :gain_db
      
        # Required. The `Input.key` that identifies the input file.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Required. The zero-based index of the track in the input file.
        # Corresponds to the JSON property `track`
        # @return [Fixnum]
        attr_accessor :track
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @channel = args[:channel] if args.key?(:channel)
          @gain_db = args[:gain_db] if args.key?(:gain_db)
          @key = args[:key] if args.key?(:key)
          @track = args[:track] if args.key?(:track)
        end
      end
      
      # Audio stream resource.
      class AudioStream
        include Google::Apis::Core::Hashable
      
        # Required. Audio bitrate in bits per second. Must be between 1 and 10,000,000.
        # Corresponds to the JSON property `bitrateBps`
        # @return [Fixnum]
        attr_accessor :bitrate_bps
      
        # Number of audio channels. Must be between 1 and 6. The default is 2.
        # Corresponds to the JSON property `channelCount`
        # @return [Fixnum]
        attr_accessor :channel_count
      
        # A list of channel names specifying layout of the audio channels. This only
        # affects the metadata embedded in the container headers, if supported by the
        # specified format. The default is `["fl", "fr"]`. Supported channel names: - '
        # fl' - Front left channel - 'fr' - Front right channel - 'sl' - Side left
        # channel - 'sr' - Side right channel - 'fc' - Front center channel - 'lfe' -
        # Low frequency
        # Corresponds to the JSON property `channelLayout`
        # @return [Array<String>]
        attr_accessor :channel_layout
      
        # The codec for this audio stream. The default is `"aac"`. Supported audio
        # codecs: - 'aac' - 'aac-he' - 'aac-he-v2' - 'mp3' - 'ac3' - 'eac3'
        # Corresponds to the JSON property `codec`
        # @return [String]
        attr_accessor :codec
      
        # The mapping for the `Job.edit_list` atoms with audio `EditAtom.inputs`.
        # Corresponds to the JSON property `mapping`
        # @return [Array<Google::Apis::TranscoderV1beta1::AudioAtom>]
        attr_accessor :mapping
      
        # The audio sample rate in Hertz. The default is 48000 Hertz.
        # Corresponds to the JSON property `sampleRateHertz`
        # @return [Fixnum]
        attr_accessor :sample_rate_hertz
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bitrate_bps = args[:bitrate_bps] if args.key?(:bitrate_bps)
          @channel_count = args[:channel_count] if args.key?(:channel_count)
          @channel_layout = args[:channel_layout] if args.key?(:channel_layout)
          @codec = args[:codec] if args.key?(:codec)
          @mapping = args[:mapping] if args.key?(:mapping)
          @sample_rate_hertz = args[:sample_rate_hertz] if args.key?(:sample_rate_hertz)
        end
      end
      
      # Color preprocessing configuration.
      class Color
        include Google::Apis::Core::Hashable
      
        # Control brightness of the video. Enter a value between -1 and 1, where -1 is
        # minimum brightness and 1 is maximum brightness. 0 is no change. The default is
        # 0.
        # Corresponds to the JSON property `brightness`
        # @return [Float]
        attr_accessor :brightness
      
        # Control black and white contrast of the video. Enter a value between -1 and 1,
        # where -1 is minimum contrast and 1 is maximum contrast. 0 is no change. The
        # default is 0.
        # Corresponds to the JSON property `contrast`
        # @return [Float]
        attr_accessor :contrast
      
        # Control color saturation of the video. Enter a value between -1 and 1, where -
        # 1 is fully desaturated and 1 is maximum saturation. 0 is no change. The
        # default is 0.
        # Corresponds to the JSON property `saturation`
        # @return [Float]
        attr_accessor :saturation
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @brightness = args[:brightness] if args.key?(:brightness)
          @contrast = args[:contrast] if args.key?(:contrast)
          @saturation = args[:saturation] if args.key?(:saturation)
        end
      end
      
      # Video cropping configuration.
      class Crop
        include Google::Apis::Core::Hashable
      
        # The number of pixels to crop from the bottom. The default is 0.
        # Corresponds to the JSON property `bottomPixels`
        # @return [Fixnum]
        attr_accessor :bottom_pixels
      
        # The number of pixels to crop from the left. The default is 0.
        # Corresponds to the JSON property `leftPixels`
        # @return [Fixnum]
        attr_accessor :left_pixels
      
        # The number of pixels to crop from the right. The default is 0.
        # Corresponds to the JSON property `rightPixels`
        # @return [Fixnum]
        attr_accessor :right_pixels
      
        # The number of pixels to crop from the top. The default is 0.
        # Corresponds to the JSON property `topPixels`
        # @return [Fixnum]
        attr_accessor :top_pixels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @bottom_pixels = args[:bottom_pixels] if args.key?(:bottom_pixels)
          @left_pixels = args[:left_pixels] if args.key?(:left_pixels)
          @right_pixels = args[:right_pixels] if args.key?(:right_pixels)
          @top_pixels = args[:top_pixels] if args.key?(:top_pixels)
        end
      end
      
      # Deblock preprocessing configuration.
      class Deblock
        include Google::Apis::Core::Hashable
      
        # Enable deblocker. The default is `false`.
        # Corresponds to the JSON property `enabled`
        # @return [Boolean]
        attr_accessor :enabled
        alias_method :enabled?, :enabled
      
        # Set strength of the deblocker. Enter a value between 0 and 1. The higher the
        # value, the stronger the block removal. 0 is no deblocking. The default is 0.
        # Corresponds to the JSON property `strength`
        # @return [Float]
        attr_accessor :strength
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @enabled = args[:enabled] if args.key?(:enabled)
          @strength = args[:strength] if args.key?(:strength)
        end
      end
      
      # Denoise preprocessing configuration.
      class Denoise
        include Google::Apis::Core::Hashable
      
        # Set strength of the denoise. Enter a value between 0 and 1. The higher the
        # value, the smoother the image. 0 is no denoising. The default is 0.
        # Corresponds to the JSON property `strength`
        # @return [Float]
        attr_accessor :strength
      
        # Set the denoiser mode. The default is `"standard"`. Supported denoiser modes: -
        # 'standard' - 'grain'
        # Corresponds to the JSON property `tune`
        # @return [String]
        attr_accessor :tune
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @strength = args[:strength] if args.key?(:strength)
          @tune = args[:tune] if args.key?(:tune)
        end
      end
      
      # Edit atom.
      class EditAtom
        include Google::Apis::Core::Hashable
      
        # End time in seconds for the atom, relative to the input file timeline. When `
        # end_time_offset` is not specified, the `inputs` are used until the end of the
        # atom.
        # Corresponds to the JSON property `endTimeOffset`
        # @return [String]
        attr_accessor :end_time_offset
      
        # List of `Input.key`s identifying files that should be used in this atom. The
        # listed `inputs` must have the same timeline.
        # Corresponds to the JSON property `inputs`
        # @return [Array<String>]
        attr_accessor :inputs
      
        # A unique key for this atom. Must be specified when using advanced mapping.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Start time in seconds for the atom, relative to the input file timeline. The
        # default is `0s`.
        # Corresponds to the JSON property `startTimeOffset`
        # @return [String]
        attr_accessor :start_time_offset
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @end_time_offset = args[:end_time_offset] if args.key?(:end_time_offset)
          @inputs = args[:inputs] if args.key?(:inputs)
          @key = args[:key] if args.key?(:key)
          @start_time_offset = args[:start_time_offset] if args.key?(:start_time_offset)
        end
      end
      
      # Encoding of an input file such as an audio, video, or text track. Elementary
      # streams must be packaged before mapping and sharing between different output
      # formats.
      class ElementaryStream
        include Google::Apis::Core::Hashable
      
        # Audio stream resource.
        # Corresponds to the JSON property `audioStream`
        # @return [Google::Apis::TranscoderV1beta1::AudioStream]
        attr_accessor :audio_stream
      
        # A unique key for this elementary stream.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Encoding of a text stream. For example, closed captions or subtitles.
        # Corresponds to the JSON property `textStream`
        # @return [Google::Apis::TranscoderV1beta1::TextStream]
        attr_accessor :text_stream
      
        # Video stream resource.
        # Corresponds to the JSON property `videoStream`
        # @return [Google::Apis::TranscoderV1beta1::VideoStream]
        attr_accessor :video_stream
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_stream = args[:audio_stream] if args.key?(:audio_stream)
          @key = args[:key] if args.key?(:key)
          @text_stream = args[:text_stream] if args.key?(:text_stream)
          @video_stream = args[:video_stream] if args.key?(:video_stream)
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
      
      # Encryption settings.
      class Encryption
        include Google::Apis::Core::Hashable
      
        # Configuration for AES-128 encryption.
        # Corresponds to the JSON property `aes128`
        # @return [Google::Apis::TranscoderV1beta1::Aes128Encryption]
        attr_accessor :aes128
      
        # Required. 128 bit Initialization Vector (IV) represented as lowercase
        # hexadecimal digits.
        # Corresponds to the JSON property `iv`
        # @return [String]
        attr_accessor :iv
      
        # Required. 128 bit encryption key represented as lowercase hexadecimal digits.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Configuration for MPEG Common Encryption (MPEG-CENC).
        # Corresponds to the JSON property `mpegCenc`
        # @return [Google::Apis::TranscoderV1beta1::MpegCommonEncryption]
        attr_accessor :mpeg_cenc
      
        # Configuration for SAMPLE-AES encryption.
        # Corresponds to the JSON property `sampleAes`
        # @return [Google::Apis::TranscoderV1beta1::SampleAesEncryption]
        attr_accessor :sample_aes
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @aes128 = args[:aes128] if args.key?(:aes128)
          @iv = args[:iv] if args.key?(:iv)
          @key = args[:key] if args.key?(:key)
          @mpeg_cenc = args[:mpeg_cenc] if args.key?(:mpeg_cenc)
          @sample_aes = args[:sample_aes] if args.key?(:sample_aes)
        end
      end
      
      # Additional information about the reasons for the failure.
      class FailureDetail
        include Google::Apis::Core::Hashable
      
        # A description of the failure.
        # Corresponds to the JSON property `description`
        # @return [String]
        attr_accessor :description
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @description = args[:description] if args.key?(:description)
        end
      end
      
      # Overlaid jpeg image.
      class Image
        include Google::Apis::Core::Hashable
      
        # Target image opacity. Valid values: `1` (solid, default), `0` (transparent).
        # Corresponds to the JSON property `alpha`
        # @return [Float]
        attr_accessor :alpha
      
        # 2D normalized coordinates. Default: ``0.0, 0.0``
        # Corresponds to the JSON property `resolution`
        # @return [Google::Apis::TranscoderV1beta1::NormalizedCoordinate]
        attr_accessor :resolution
      
        # Required. URI of the image in Cloud Storage. For example, `gs://bucket/inputs/
        # image.jpeg`.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @alpha = args[:alpha] if args.key?(:alpha)
          @resolution = args[:resolution] if args.key?(:resolution)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Input asset.
      class Input
        include Google::Apis::Core::Hashable
      
        # A unique key for this input. Must be specified when using advanced mapping and
        # edit lists.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Preprocessing configurations.
        # Corresponds to the JSON property `preprocessingConfig`
        # @return [Google::Apis::TranscoderV1beta1::PreprocessingConfig]
        attr_accessor :preprocessing_config
      
        # URI of the media. It must be stored in Cloud Storage. Example `gs://bucket/
        # inputs/file.mp4`. If empty the value will be populated from `Job.input_uri`.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @preprocessing_config = args[:preprocessing_config] if args.key?(:preprocessing_config)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Transcoding job resource.
      class Job
        include Google::Apis::Core::Hashable
      
        # Job configuration
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::TranscoderV1beta1::JobConfig]
        attr_accessor :config
      
        # Output only. The time the job was created.
        # Corresponds to the JSON property `createTime`
        # @return [String]
        attr_accessor :create_time
      
        # Output only. The time the transcoding finished.
        # Corresponds to the JSON property `endTime`
        # @return [String]
        attr_accessor :end_time
      
        # Output only. List of failure details. This property may contain additional
        # information about the failure when `failure_reason` is present. *Note*: This
        # feature is not yet available.
        # Corresponds to the JSON property `failureDetails`
        # @return [Array<Google::Apis::TranscoderV1beta1::FailureDetail>]
        attr_accessor :failure_details
      
        # Output only. A description of the reason for the failure. This property is
        # always present when `state` is `FAILED`.
        # Corresponds to the JSON property `failureReason`
        # @return [String]
        attr_accessor :failure_reason
      
        # Input only. Specify the `input_uri` to populate empty `uri` fields in each
        # element of `Job.config.inputs` or `JobTemplate.config.inputs` when using
        # template. URI of the media. It must be stored in Cloud Storage. For example, `
        # gs://bucket/inputs/file.mp4`.
        # Corresponds to the JSON property `inputUri`
        # @return [String]
        attr_accessor :input_uri
      
        # The resource name of the job. Format: `projects/`project`/locations/`location`/
        # jobs/`job``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The origin URI.
        # Corresponds to the JSON property `originUri`
        # @return [Google::Apis::TranscoderV1beta1::OriginUri]
        attr_accessor :origin_uri
      
        # Input only. Specify the `output_uri` to populate an empty `Job.config.output.
        # uri` or `JobTemplate.config.output.uri` when using template. URI for the
        # output file(s). For example, `gs://my-bucket/outputs/`.
        # Corresponds to the JSON property `outputUri`
        # @return [String]
        attr_accessor :output_uri
      
        # Specify the priority of the job. Enter a value between 0 and 100, where 0 is
        # the lowest priority and 100 is the highest priority. The default is 0.
        # Corresponds to the JSON property `priority`
        # @return [Fixnum]
        attr_accessor :priority
      
        # Estimated fractional progress for each step, from `0` to `1`.
        # Corresponds to the JSON property `progress`
        # @return [Google::Apis::TranscoderV1beta1::Progress]
        attr_accessor :progress
      
        # Output only. The time the transcoding started.
        # Corresponds to the JSON property `startTime`
        # @return [String]
        attr_accessor :start_time
      
        # Output only. The current state of the job.
        # Corresponds to the JSON property `state`
        # @return [String]
        attr_accessor :state
      
        # Input only. Specify the `template_id` to use for populating `Job.config`. The
        # default is `preset/web-hd`. Preset Transcoder templates: - `preset/`preset_id``
        # - User defined JobTemplate: ``job_template_id``
        # Corresponds to the JSON property `templateId`
        # @return [String]
        attr_accessor :template_id
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @create_time = args[:create_time] if args.key?(:create_time)
          @end_time = args[:end_time] if args.key?(:end_time)
          @failure_details = args[:failure_details] if args.key?(:failure_details)
          @failure_reason = args[:failure_reason] if args.key?(:failure_reason)
          @input_uri = args[:input_uri] if args.key?(:input_uri)
          @name = args[:name] if args.key?(:name)
          @origin_uri = args[:origin_uri] if args.key?(:origin_uri)
          @output_uri = args[:output_uri] if args.key?(:output_uri)
          @priority = args[:priority] if args.key?(:priority)
          @progress = args[:progress] if args.key?(:progress)
          @start_time = args[:start_time] if args.key?(:start_time)
          @state = args[:state] if args.key?(:state)
          @template_id = args[:template_id] if args.key?(:template_id)
        end
      end
      
      # Job configuration
      class JobConfig
        include Google::Apis::Core::Hashable
      
        # List of ad breaks. Specifies where to insert ad break tags in the output
        # manifests.
        # Corresponds to the JSON property `adBreaks`
        # @return [Array<Google::Apis::TranscoderV1beta1::AdBreak>]
        attr_accessor :ad_breaks
      
        # List of `Edit atom`s. Defines the ultimate timeline of the resulting file or
        # manifest.
        # Corresponds to the JSON property `editList`
        # @return [Array<Google::Apis::TranscoderV1beta1::EditAtom>]
        attr_accessor :edit_list
      
        # List of elementary streams.
        # Corresponds to the JSON property `elementaryStreams`
        # @return [Array<Google::Apis::TranscoderV1beta1::ElementaryStream>]
        attr_accessor :elementary_streams
      
        # List of input assets stored in Cloud Storage.
        # Corresponds to the JSON property `inputs`
        # @return [Array<Google::Apis::TranscoderV1beta1::Input>]
        attr_accessor :inputs
      
        # List of output manifests.
        # Corresponds to the JSON property `manifests`
        # @return [Array<Google::Apis::TranscoderV1beta1::Manifest>]
        attr_accessor :manifests
      
        # List of multiplexing settings for output streams.
        # Corresponds to the JSON property `muxStreams`
        # @return [Array<Google::Apis::TranscoderV1beta1::MuxStream>]
        attr_accessor :mux_streams
      
        # Location of output file(s) in a Cloud Storage bucket.
        # Corresponds to the JSON property `output`
        # @return [Google::Apis::TranscoderV1beta1::Output]
        attr_accessor :output
      
        # List of overlays on the output video, in descending Z-order.
        # Corresponds to the JSON property `overlays`
        # @return [Array<Google::Apis::TranscoderV1beta1::Overlay>]
        attr_accessor :overlays
      
        # A Pub/Sub destination.
        # Corresponds to the JSON property `pubsubDestination`
        # @return [Google::Apis::TranscoderV1beta1::PubsubDestination]
        attr_accessor :pubsub_destination
      
        # List of output sprite sheets.
        # Corresponds to the JSON property `spriteSheets`
        # @return [Array<Google::Apis::TranscoderV1beta1::SpriteSheet>]
        attr_accessor :sprite_sheets
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ad_breaks = args[:ad_breaks] if args.key?(:ad_breaks)
          @edit_list = args[:edit_list] if args.key?(:edit_list)
          @elementary_streams = args[:elementary_streams] if args.key?(:elementary_streams)
          @inputs = args[:inputs] if args.key?(:inputs)
          @manifests = args[:manifests] if args.key?(:manifests)
          @mux_streams = args[:mux_streams] if args.key?(:mux_streams)
          @output = args[:output] if args.key?(:output)
          @overlays = args[:overlays] if args.key?(:overlays)
          @pubsub_destination = args[:pubsub_destination] if args.key?(:pubsub_destination)
          @sprite_sheets = args[:sprite_sheets] if args.key?(:sprite_sheets)
        end
      end
      
      # Transcoding job template resource.
      class JobTemplate
        include Google::Apis::Core::Hashable
      
        # Job configuration
        # Corresponds to the JSON property `config`
        # @return [Google::Apis::TranscoderV1beta1::JobConfig]
        attr_accessor :config
      
        # The resource name of the job template. Format: `projects/`project`/locations/`
        # location`/jobTemplates/`job_template``
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @config = args[:config] if args.key?(:config)
          @name = args[:name] if args.key?(:name)
        end
      end
      
      # Response message for `TranscoderService.ListJobTemplates`.
      class ListJobTemplatesResponse
        include Google::Apis::Core::Hashable
      
        # List of job templates in the specified region.
        # Corresponds to the JSON property `jobTemplates`
        # @return [Array<Google::Apis::TranscoderV1beta1::JobTemplate>]
        attr_accessor :job_templates
      
        # The pagination token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @job_templates = args[:job_templates] if args.key?(:job_templates)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Response message for `TranscoderService.ListJobs`.
      class ListJobsResponse
        include Google::Apis::Core::Hashable
      
        # List of jobs in the specified region.
        # Corresponds to the JSON property `jobs`
        # @return [Array<Google::Apis::TranscoderV1beta1::Job>]
        attr_accessor :jobs
      
        # The pagination token.
        # Corresponds to the JSON property `nextPageToken`
        # @return [String]
        attr_accessor :next_page_token
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @jobs = args[:jobs] if args.key?(:jobs)
          @next_page_token = args[:next_page_token] if args.key?(:next_page_token)
        end
      end
      
      # Manifest configuration.
      class Manifest
        include Google::Apis::Core::Hashable
      
        # The name of the generated file. The default is `"manifest"` with the extension
        # suffix corresponding to the `Manifest.type`.
        # Corresponds to the JSON property `fileName`
        # @return [String]
        attr_accessor :file_name
      
        # Required. List of user given `MuxStream.key`s that should appear in this
        # manifest. When `Manifest.type` is `HLS`, a media manifest with name `MuxStream.
        # key` and `.m3u8` extension is generated for each element of the `Manifest.
        # mux_streams`.
        # Corresponds to the JSON property `muxStreams`
        # @return [Array<String>]
        attr_accessor :mux_streams
      
        # Required. Type of the manifest, can be "HLS" or "DASH".
        # Corresponds to the JSON property `type`
        # @return [String]
        attr_accessor :type
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @file_name = args[:file_name] if args.key?(:file_name)
          @mux_streams = args[:mux_streams] if args.key?(:mux_streams)
          @type = args[:type] if args.key?(:type)
        end
      end
      
      # Configuration for MPEG Common Encryption (MPEG-CENC).
      class MpegCommonEncryption
        include Google::Apis::Core::Hashable
      
        # Required. 128 bit Key ID represented as lowercase hexadecimal digits for use
        # with common encryption.
        # Corresponds to the JSON property `keyId`
        # @return [String]
        attr_accessor :key_id
      
        # Required. Specify the encryption scheme. Supported encryption schemes: - 'cenc'
        # - 'cbcs'
        # Corresponds to the JSON property `scheme`
        # @return [String]
        attr_accessor :scheme
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_id = args[:key_id] if args.key?(:key_id)
          @scheme = args[:scheme] if args.key?(:scheme)
        end
      end
      
      # Multiplexing settings for output stream.
      class MuxStream
        include Google::Apis::Core::Hashable
      
        # The container format. The default is `"mp4"` Supported container formats: - '
        # ts' - 'fmp4'- the corresponding file extension is `".m4s"` - 'mp4' - 'vtt'
        # Corresponds to the JSON property `container`
        # @return [String]
        attr_accessor :container
      
        # List of `ElementaryStream.key`s multiplexed in this stream.
        # Corresponds to the JSON property `elementaryStreams`
        # @return [Array<String>]
        attr_accessor :elementary_streams
      
        # Encryption settings.
        # Corresponds to the JSON property `encryption`
        # @return [Google::Apis::TranscoderV1beta1::Encryption]
        attr_accessor :encryption
      
        # The name of the generated file. The default is `MuxStream.key` with the
        # extension suffix corresponding to the `MuxStream.container`. Individual
        # segments also have an incremental 10-digit zero-padded suffix starting from 0
        # before the extension, such as `"mux_stream0000000123.ts"`.
        # Corresponds to the JSON property `fileName`
        # @return [String]
        attr_accessor :file_name
      
        # A unique key for this multiplexed stream. HLS media manifests will be named `
        # MuxStream.key` with the `".m3u8"` extension suffix.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Segment settings for `"ts"`, `"fmp4"` and `"vtt"`.
        # Corresponds to the JSON property `segmentSettings`
        # @return [Google::Apis::TranscoderV1beta1::SegmentSettings]
        attr_accessor :segment_settings
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @container = args[:container] if args.key?(:container)
          @elementary_streams = args[:elementary_streams] if args.key?(:elementary_streams)
          @encryption = args[:encryption] if args.key?(:encryption)
          @file_name = args[:file_name] if args.key?(:file_name)
          @key = args[:key] if args.key?(:key)
          @segment_settings = args[:segment_settings] if args.key?(:segment_settings)
        end
      end
      
      # 2D normalized coordinates. Default: ``0.0, 0.0``
      class NormalizedCoordinate
        include Google::Apis::Core::Hashable
      
        # Normalized x coordinate.
        # Corresponds to the JSON property `x`
        # @return [Float]
        attr_accessor :x
      
        # Normalized y coordinate.
        # Corresponds to the JSON property `y`
        # @return [Float]
        attr_accessor :y
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @x = args[:x] if args.key?(:x)
          @y = args[:y] if args.key?(:y)
        end
      end
      
      # The origin URI.
      class OriginUri
        include Google::Apis::Core::Hashable
      
        # Dash manifest URI. If multiple Dash manifests are created, only the first one
        # is listed.
        # Corresponds to the JSON property `dash`
        # @return [String]
        attr_accessor :dash
      
        # HLS manifest URI per https://tools.ietf.org/html/rfc8216#section-4.3.4. If
        # multiple HLS manifests are created, only the first one is listed.
        # Corresponds to the JSON property `hls`
        # @return [String]
        attr_accessor :hls
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @dash = args[:dash] if args.key?(:dash)
          @hls = args[:hls] if args.key?(:hls)
        end
      end
      
      # Location of output file(s) in a Cloud Storage bucket.
      class Output
        include Google::Apis::Core::Hashable
      
        # URI for the output file(s). For example, `gs://my-bucket/outputs/`. If empty
        # the value is populated from `Job.output_uri`.
        # Corresponds to the JSON property `uri`
        # @return [String]
        attr_accessor :uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @uri = args[:uri] if args.key?(:uri)
        end
      end
      
      # Overlay configuration.
      class Overlay
        include Google::Apis::Core::Hashable
      
        # List of Animations. The list should be chronological, without any time overlap.
        # Corresponds to the JSON property `animations`
        # @return [Array<Google::Apis::TranscoderV1beta1::Animation>]
        attr_accessor :animations
      
        # Overlaid jpeg image.
        # Corresponds to the JSON property `image`
        # @return [Google::Apis::TranscoderV1beta1::Image]
        attr_accessor :image
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @animations = args[:animations] if args.key?(:animations)
          @image = args[:image] if args.key?(:image)
        end
      end
      
      # Preprocessing configurations.
      class PreprocessingConfig
        include Google::Apis::Core::Hashable
      
        # Audio preprocessing configuration.
        # Corresponds to the JSON property `audio`
        # @return [Google::Apis::TranscoderV1beta1::Audio]
        attr_accessor :audio
      
        # Color preprocessing configuration.
        # Corresponds to the JSON property `color`
        # @return [Google::Apis::TranscoderV1beta1::Color]
        attr_accessor :color
      
        # Video cropping configuration.
        # Corresponds to the JSON property `crop`
        # @return [Google::Apis::TranscoderV1beta1::Crop]
        attr_accessor :crop
      
        # Deblock preprocessing configuration.
        # Corresponds to the JSON property `deblock`
        # @return [Google::Apis::TranscoderV1beta1::Deblock]
        attr_accessor :deblock
      
        # Denoise preprocessing configuration.
        # Corresponds to the JSON property `denoise`
        # @return [Google::Apis::TranscoderV1beta1::Denoise]
        attr_accessor :denoise
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio = args[:audio] if args.key?(:audio)
          @color = args[:color] if args.key?(:color)
          @crop = args[:crop] if args.key?(:crop)
          @deblock = args[:deblock] if args.key?(:deblock)
          @denoise = args[:denoise] if args.key?(:denoise)
        end
      end
      
      # Estimated fractional progress for each step, from `0` to `1`.
      class Progress
        include Google::Apis::Core::Hashable
      
        # Estimated fractional progress for `analyzing` step.
        # Corresponds to the JSON property `analyzed`
        # @return [Float]
        attr_accessor :analyzed
      
        # Estimated fractional progress for `encoding` step.
        # Corresponds to the JSON property `encoded`
        # @return [Float]
        attr_accessor :encoded
      
        # Estimated fractional progress for `notifying` step.
        # Corresponds to the JSON property `notified`
        # @return [Float]
        attr_accessor :notified
      
        # Estimated fractional progress for `uploading` step.
        # Corresponds to the JSON property `uploaded`
        # @return [Float]
        attr_accessor :uploaded
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @analyzed = args[:analyzed] if args.key?(:analyzed)
          @encoded = args[:encoded] if args.key?(:encoded)
          @notified = args[:notified] if args.key?(:notified)
          @uploaded = args[:uploaded] if args.key?(:uploaded)
        end
      end
      
      # A Pub/Sub destination.
      class PubsubDestination
        include Google::Apis::Core::Hashable
      
        # The name of the Pub/Sub topic to publish job completion notification to. For
        # example: `projects/`project`/topics/`topic``.
        # Corresponds to the JSON property `topic`
        # @return [String]
        attr_accessor :topic
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @topic = args[:topic] if args.key?(:topic)
        end
      end
      
      # Configuration for SAMPLE-AES encryption.
      class SampleAesEncryption
        include Google::Apis::Core::Hashable
      
        # Required. URI of the key delivery service. This URI is inserted into the M3U8
        # header.
        # Corresponds to the JSON property `keyUri`
        # @return [String]
        attr_accessor :key_uri
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key_uri = args[:key_uri] if args.key?(:key_uri)
        end
      end
      
      # Segment settings for `"ts"`, `"fmp4"` and `"vtt"`.
      class SegmentSettings
        include Google::Apis::Core::Hashable
      
        # Required. Create an individual segment file. The default is `false`.
        # Corresponds to the JSON property `individualSegments`
        # @return [Boolean]
        attr_accessor :individual_segments
        alias_method :individual_segments?, :individual_segments
      
        # Duration of the segments in seconds. The default is `"6.0s"`.
        # Corresponds to the JSON property `segmentDuration`
        # @return [String]
        attr_accessor :segment_duration
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @individual_segments = args[:individual_segments] if args.key?(:individual_segments)
          @segment_duration = args[:segment_duration] if args.key?(:segment_duration)
        end
      end
      
      # Sprite sheet configuration.
      class SpriteSheet
        include Google::Apis::Core::Hashable
      
        # The maximum number of sprites per row in a sprite sheet. The default is 0,
        # which indicates no maximum limit.
        # Corresponds to the JSON property `columnCount`
        # @return [Fixnum]
        attr_accessor :column_count
      
        # End time in seconds, relative to the output file timeline. When `
        # end_time_offset` is not specified, the sprites are generated until the end of
        # the output file.
        # Corresponds to the JSON property `endTimeOffset`
        # @return [String]
        attr_accessor :end_time_offset
      
        # Required. File name prefix for the generated sprite sheets. Each sprite sheet
        # has an incremental 10-digit zero-padded suffix starting from 0 before the
        # extension, such as `"sprite_sheet0000000123.jpeg"`.
        # Corresponds to the JSON property `filePrefix`
        # @return [String]
        attr_accessor :file_prefix
      
        # Format type. The default is `"jpeg"`. Supported formats: - 'jpeg'
        # Corresponds to the JSON property `format`
        # @return [String]
        attr_accessor :format
      
        # Starting from `0s`, create sprites at regular intervals. Specify the interval
        # value in seconds.
        # Corresponds to the JSON property `interval`
        # @return [String]
        attr_accessor :interval
      
        # The maximum number of rows per sprite sheet. When the sprite sheet is full, a
        # new sprite sheet is created. The default is 0, which indicates no maximum
        # limit.
        # Corresponds to the JSON property `rowCount`
        # @return [Fixnum]
        attr_accessor :row_count
      
        # Required. The height of sprite in pixels. Must be an even integer.
        # Corresponds to the JSON property `spriteHeightPixels`
        # @return [Fixnum]
        attr_accessor :sprite_height_pixels
      
        # Required. The width of sprite in pixels. Must be an even integer.
        # Corresponds to the JSON property `spriteWidthPixels`
        # @return [Fixnum]
        attr_accessor :sprite_width_pixels
      
        # Start time in seconds, relative to the output file timeline. Determines the
        # first sprite to pick. The default is `0s`.
        # Corresponds to the JSON property `startTimeOffset`
        # @return [String]
        attr_accessor :start_time_offset
      
        # Total number of sprites. Create the specified number of sprites distributed
        # evenly across the timeline of the output media. The default is 100.
        # Corresponds to the JSON property `totalCount`
        # @return [Fixnum]
        attr_accessor :total_count
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @column_count = args[:column_count] if args.key?(:column_count)
          @end_time_offset = args[:end_time_offset] if args.key?(:end_time_offset)
          @file_prefix = args[:file_prefix] if args.key?(:file_prefix)
          @format = args[:format] if args.key?(:format)
          @interval = args[:interval] if args.key?(:interval)
          @row_count = args[:row_count] if args.key?(:row_count)
          @sprite_height_pixels = args[:sprite_height_pixels] if args.key?(:sprite_height_pixels)
          @sprite_width_pixels = args[:sprite_width_pixels] if args.key?(:sprite_width_pixels)
          @start_time_offset = args[:start_time_offset] if args.key?(:start_time_offset)
          @total_count = args[:total_count] if args.key?(:total_count)
        end
      end
      
      # The mapping for the `Job.edit_list` atoms with text `EditAtom.inputs`.
      class TextAtom
        include Google::Apis::Core::Hashable
      
        # List of `Job.inputs` that should be embedded in this atom. Only one input is
        # supported.
        # Corresponds to the JSON property `inputs`
        # @return [Array<Google::Apis::TranscoderV1beta1::TextInput>]
        attr_accessor :inputs
      
        # Required. The `EditAtom.key` that references atom with text inputs in the `Job.
        # edit_list`.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @inputs = args[:inputs] if args.key?(:inputs)
          @key = args[:key] if args.key?(:key)
        end
      end
      
      # Identifies which input file and track should be used.
      class TextInput
        include Google::Apis::Core::Hashable
      
        # Required. The `Input.key` that identifies the input file.
        # Corresponds to the JSON property `key`
        # @return [String]
        attr_accessor :key
      
        # Required. The zero-based index of the track in the input file.
        # Corresponds to the JSON property `track`
        # @return [Fixnum]
        attr_accessor :track
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @key = args[:key] if args.key?(:key)
          @track = args[:track] if args.key?(:track)
        end
      end
      
      # Encoding of a text stream. For example, closed captions or subtitles.
      class TextStream
        include Google::Apis::Core::Hashable
      
        # The codec for this text stream. The default is `"webvtt"`. Supported text
        # codecs: - 'srt' - 'ttml' - 'cea608' - 'cea708' - 'webvtt'
        # Corresponds to the JSON property `codec`
        # @return [String]
        attr_accessor :codec
      
        # Required. The BCP-47 language code, such as `"en-US"` or `"sr-Latn"`. For more
        # information, see https://www.unicode.org/reports/tr35/#
        # Unicode_locale_identifier.
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The mapping for the `Job.edit_list` atoms with text `EditAtom.inputs`.
        # Corresponds to the JSON property `mapping`
        # @return [Array<Google::Apis::TranscoderV1beta1::TextAtom>]
        attr_accessor :mapping
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @codec = args[:codec] if args.key?(:codec)
          @language_code = args[:language_code] if args.key?(:language_code)
          @mapping = args[:mapping] if args.key?(:mapping)
        end
      end
      
      # Video stream resource.
      class VideoStream
        include Google::Apis::Core::Hashable
      
        # Specifies whether an open Group of Pictures (GOP) structure should be allowed
        # or not. The default is `false`.
        # Corresponds to the JSON property `allowOpenGop`
        # @return [Boolean]
        attr_accessor :allow_open_gop
        alias_method :allow_open_gop?, :allow_open_gop
      
        # Specify the intensity of the adaptive quantizer (AQ). Must be between 0 and 1,
        # where 0 disables the quantizer and 1 maximizes the quantizer. A higher value
        # equals a lower bitrate but smoother image. The default is 0.
        # Corresponds to the JSON property `aqStrength`
        # @return [Float]
        attr_accessor :aq_strength
      
        # The number of consecutive B-frames. Must be greater than or equal to zero.
        # Must be less than `VideoStream.gop_frame_count` if set. The default is 0.
        # Corresponds to the JSON property `bFrameCount`
        # @return [Fixnum]
        attr_accessor :b_frame_count
      
        # Allow B-pyramid for reference frame selection. This may not be supported on
        # all decoders. The default is `false`.
        # Corresponds to the JSON property `bPyramid`
        # @return [Boolean]
        attr_accessor :b_pyramid
        alias_method :b_pyramid?, :b_pyramid
      
        # Required. The video bitrate in bits per second. Must be between 1 and 1,000,
        # 000,000.
        # Corresponds to the JSON property `bitrateBps`
        # @return [Fixnum]
        attr_accessor :bitrate_bps
      
        # Codec type. The following codecs are supported: * `h264` (default) * `h265` * `
        # vp9`
        # Corresponds to the JSON property `codec`
        # @return [String]
        attr_accessor :codec
      
        # Target CRF level. Must be between 10 and 36, where 10 is the highest quality
        # and 36 is the most efficient compression. The default is 21.
        # Corresponds to the JSON property `crfLevel`
        # @return [Fixnum]
        attr_accessor :crf_level
      
        # Use two-pass encoding strategy to achieve better video quality. `VideoStream.
        # rate_control_mode` must be `"vbr"`. The default is `false`.
        # Corresponds to the JSON property `enableTwoPass`
        # @return [Boolean]
        attr_accessor :enable_two_pass
        alias_method :enable_two_pass?, :enable_two_pass
      
        # The entropy coder to use. The default is `"cabac"`. Supported entropy coders: -
        # 'cavlc' - 'cabac'
        # Corresponds to the JSON property `entropyCoder`
        # @return [String]
        attr_accessor :entropy_coder
      
        # Required. The target video frame rate in frames per second (FPS). Must be less
        # than or equal to 120. Will default to the input frame rate if larger than the
        # input frame rate. The API will generate an output FPS that is divisible by the
        # input FPS, and smaller or equal to the target FPS. The following table shows
        # the computed video FPS given the target FPS (in parenthesis) and input FPS (in
        # the first column): | | (30) | (60) | (25) | (50) | |--------|--------|--------|
        # ------|------| | 240 | Fail | Fail | Fail | Fail | | 120 | 30 | 60 | 20 | 30 |
        # | 100 | 25 | 50 | 20 | 30 | | 50 | 25 | 50 | 20 | 30 | | 60 | 30 | 60 | 20 |
        # 30 | | 59.94 | 29.97 | 59.94 | 20 | 30 | | 48 | 24 | 48 | 20 | 30 | | 30 | 30 |
        # 30 | 20 | 30 | | 25 | 25 | 25 | 20 | 30 | | 24 | 24 | 24 | 20 | 30 | | 23.976
        # | 23.976 | 23.976 | 20 | 30 | | 15 | 15 | 15 | 20 | 30 | | 12 | 12 | 12 | 20 |
        # 30 | | 10 | 10 | 10 | 20 | 30 |
        # Corresponds to the JSON property `frameRate`
        # @return [Float]
        attr_accessor :frame_rate
      
        # Select the GOP size based on the specified duration. The default is `"3s"`.
        # Corresponds to the JSON property `gopDuration`
        # @return [String]
        attr_accessor :gop_duration
      
        # Select the GOP size based on the specified frame count. Must be greater than
        # zero.
        # Corresponds to the JSON property `gopFrameCount`
        # @return [Fixnum]
        attr_accessor :gop_frame_count
      
        # The height of the video in pixels. Must be an even integer. When not specified,
        # the height is adjusted to match the specified width and input aspect ratio.
        # If both are omitted, the input height is used.
        # Corresponds to the JSON property `heightPixels`
        # @return [Fixnum]
        attr_accessor :height_pixels
      
        # Pixel format to use. The default is `"yuv420p"`. Supported pixel formats: - '
        # yuv420p' pixel format. - 'yuv422p' pixel format. - 'yuv444p' pixel format. - '
        # yuv420p10' 10-bit HDR pixel format. - 'yuv422p10' 10-bit HDR pixel format. - '
        # yuv444p10' 10-bit HDR pixel format. - 'yuv420p12' 12-bit HDR pixel format. - '
        # yuv422p12' 12-bit HDR pixel format. - 'yuv444p12' 12-bit HDR pixel format.
        # Corresponds to the JSON property `pixelFormat`
        # @return [String]
        attr_accessor :pixel_format
      
        # Enforces the specified codec preset. The default is `veryfast`. The available
        # options are FFmpeg-compatible. Note that certain values for this field may
        # cause the transcoder to override other fields you set in the `VideoStream`
        # message.
        # Corresponds to the JSON property `preset`
        # @return [String]
        attr_accessor :preset
      
        # Enforces the specified codec profile. The following profiles are supported: * `
        # baseline` * `main` * `high` (default) The available options are FFmpeg-
        # compatible. Note that certain values for this field may cause the transcoder
        # to override other fields you set in the `VideoStream` message.
        # Corresponds to the JSON property `profile`
        # @return [String]
        attr_accessor :profile
      
        # Specify the `rate_control_mode`. The default is `"vbr"`. Supported rate
        # control modes: - 'vbr' - variable bitrate - 'crf' - constant rate factor
        # Corresponds to the JSON property `rateControlMode`
        # @return [String]
        attr_accessor :rate_control_mode
      
        # Enforces the specified codec tune. The available options are FFmpeg-compatible.
        # Note that certain values for this field may cause the transcoder to override
        # other fields you set in the `VideoStream` message.
        # Corresponds to the JSON property `tune`
        # @return [String]
        attr_accessor :tune
      
        # Initial fullness of the Video Buffering Verifier (VBV) buffer in bits. Must be
        # greater than zero. The default is equal to 90% of `VideoStream.vbv_size_bits`.
        # Corresponds to the JSON property `vbvFullnessBits`
        # @return [Fixnum]
        attr_accessor :vbv_fullness_bits
      
        # Size of the Video Buffering Verifier (VBV) buffer in bits. Must be greater
        # than zero. The default is equal to `VideoStream.bitrate_bps`.
        # Corresponds to the JSON property `vbvSizeBits`
        # @return [Fixnum]
        attr_accessor :vbv_size_bits
      
        # The width of the video in pixels. Must be an even integer. When not specified,
        # the width is adjusted to match the specified height and input aspect ratio. If
        # both are omitted, the input width is used.
        # Corresponds to the JSON property `widthPixels`
        # @return [Fixnum]
        attr_accessor :width_pixels
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @allow_open_gop = args[:allow_open_gop] if args.key?(:allow_open_gop)
          @aq_strength = args[:aq_strength] if args.key?(:aq_strength)
          @b_frame_count = args[:b_frame_count] if args.key?(:b_frame_count)
          @b_pyramid = args[:b_pyramid] if args.key?(:b_pyramid)
          @bitrate_bps = args[:bitrate_bps] if args.key?(:bitrate_bps)
          @codec = args[:codec] if args.key?(:codec)
          @crf_level = args[:crf_level] if args.key?(:crf_level)
          @enable_two_pass = args[:enable_two_pass] if args.key?(:enable_two_pass)
          @entropy_coder = args[:entropy_coder] if args.key?(:entropy_coder)
          @frame_rate = args[:frame_rate] if args.key?(:frame_rate)
          @gop_duration = args[:gop_duration] if args.key?(:gop_duration)
          @gop_frame_count = args[:gop_frame_count] if args.key?(:gop_frame_count)
          @height_pixels = args[:height_pixels] if args.key?(:height_pixels)
          @pixel_format = args[:pixel_format] if args.key?(:pixel_format)
          @preset = args[:preset] if args.key?(:preset)
          @profile = args[:profile] if args.key?(:profile)
          @rate_control_mode = args[:rate_control_mode] if args.key?(:rate_control_mode)
          @tune = args[:tune] if args.key?(:tune)
          @vbv_fullness_bits = args[:vbv_fullness_bits] if args.key?(:vbv_fullness_bits)
          @vbv_size_bits = args[:vbv_size_bits] if args.key?(:vbv_size_bits)
          @width_pixels = args[:width_pixels] if args.key?(:width_pixels)
        end
      end
    end
  end
end
