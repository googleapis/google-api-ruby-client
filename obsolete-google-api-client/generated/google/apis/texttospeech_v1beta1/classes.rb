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
    module TexttospeechV1beta1
      
      # Description of audio data to be synthesized.
      class AudioConfig
        include Google::Apis::Core::Hashable
      
        # Required. The format of the audio byte stream.
        # Corresponds to the JSON property `audioEncoding`
        # @return [String]
        attr_accessor :audio_encoding
      
        # Optional. Input only. An identifier which selects 'audio effects' profiles
        # that are applied on (post synthesized) text to speech. Effects are applied on
        # top of each other in the order they are given. See [audio profiles](https://
        # cloud.google.com/text-to-speech/docs/audio-profiles) for current supported
        # profile ids.
        # Corresponds to the JSON property `effectsProfileId`
        # @return [Array<String>]
        attr_accessor :effects_profile_id
      
        # Optional. Input only. Speaking pitch, in the range [-20.0, 20.0]. 20 means
        # increase 20 semitones from the original pitch. -20 means decrease 20 semitones
        # from the original pitch.
        # Corresponds to the JSON property `pitch`
        # @return [Float]
        attr_accessor :pitch
      
        # Optional. The synthesis sample rate (in hertz) for this audio. When this is
        # specified in SynthesizeSpeechRequest, if this is different from the voice's
        # natural sample rate, then the synthesizer will honor this request by
        # converting to the desired sample rate (which might result in worse audio
        # quality), unless the specified sample rate is not supported for the encoding
        # chosen, in which case it will fail the request and return google.rpc.Code.
        # INVALID_ARGUMENT.
        # Corresponds to the JSON property `sampleRateHertz`
        # @return [Fixnum]
        attr_accessor :sample_rate_hertz
      
        # Optional. Input only. Speaking rate/speed, in the range [0.25, 4.0]. 1.0 is
        # the normal native speed supported by the specific voice. 2.0 is twice as fast,
        # and 0.5 is half as fast. If unset(0.0), defaults to the native 1.0 speed. Any
        # other values < 0.25 or > 4.0 will return an error.
        # Corresponds to the JSON property `speakingRate`
        # @return [Float]
        attr_accessor :speaking_rate
      
        # Optional. Input only. Volume gain (in dB) of the normal native volume
        # supported by the specific voice, in the range [-96.0, 16.0]. If unset, or set
        # to a value of 0.0 (dB), will play at normal native signal amplitude. A value
        # of -6.0 (dB) will play at approximately half the amplitude of the normal
        # native signal amplitude. A value of +6.0 (dB) will play at approximately twice
        # the amplitude of the normal native signal amplitude. Strongly recommend not to
        # exceed +10 (dB) as there's usually no effective increase in loudness for any
        # value greater than that.
        # Corresponds to the JSON property `volumeGainDb`
        # @return [Float]
        attr_accessor :volume_gain_db
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_encoding = args[:audio_encoding] if args.key?(:audio_encoding)
          @effects_profile_id = args[:effects_profile_id] if args.key?(:effects_profile_id)
          @pitch = args[:pitch] if args.key?(:pitch)
          @sample_rate_hertz = args[:sample_rate_hertz] if args.key?(:sample_rate_hertz)
          @speaking_rate = args[:speaking_rate] if args.key?(:speaking_rate)
          @volume_gain_db = args[:volume_gain_db] if args.key?(:volume_gain_db)
        end
      end
      
      # The message returned to the client by the `ListVoices` method.
      class ListVoicesResponse
        include Google::Apis::Core::Hashable
      
        # The list of voices.
        # Corresponds to the JSON property `voices`
        # @return [Array<Google::Apis::TexttospeechV1beta1::Voice>]
        attr_accessor :voices
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @voices = args[:voices] if args.key?(:voices)
        end
      end
      
      # Contains text input to be synthesized. Either `text` or `ssml` must be
      # supplied. Supplying both or neither returns google.rpc.Code.INVALID_ARGUMENT.
      # The input size is limited to 5000 characters.
      class SynthesisInput
        include Google::Apis::Core::Hashable
      
        # The SSML document to be synthesized. The SSML document must be valid and well-
        # formed. Otherwise the RPC will fail and return google.rpc.Code.
        # INVALID_ARGUMENT. For more information, see [SSML](https://cloud.google.com/
        # text-to-speech/docs/ssml).
        # Corresponds to the JSON property `ssml`
        # @return [String]
        attr_accessor :ssml
      
        # The raw text to be synthesized.
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @ssml = args[:ssml] if args.key?(:ssml)
          @text = args[:text] if args.key?(:text)
        end
      end
      
      # The top-level message sent by the client for the `SynthesizeSpeech` method.
      class SynthesizeSpeechRequest
        include Google::Apis::Core::Hashable
      
        # Description of audio data to be synthesized.
        # Corresponds to the JSON property `audioConfig`
        # @return [Google::Apis::TexttospeechV1beta1::AudioConfig]
        attr_accessor :audio_config
      
        # Whether and what timepoints are returned in the response.
        # Corresponds to the JSON property `enableTimePointing`
        # @return [Array<String>]
        attr_accessor :enable_time_pointing
      
        # Contains text input to be synthesized. Either `text` or `ssml` must be
        # supplied. Supplying both or neither returns google.rpc.Code.INVALID_ARGUMENT.
        # The input size is limited to 5000 characters.
        # Corresponds to the JSON property `input`
        # @return [Google::Apis::TexttospeechV1beta1::SynthesisInput]
        attr_accessor :input
      
        # Description of which voice to use for a synthesis request.
        # Corresponds to the JSON property `voice`
        # @return [Google::Apis::TexttospeechV1beta1::VoiceSelectionParams]
        attr_accessor :voice
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_config = args[:audio_config] if args.key?(:audio_config)
          @enable_time_pointing = args[:enable_time_pointing] if args.key?(:enable_time_pointing)
          @input = args[:input] if args.key?(:input)
          @voice = args[:voice] if args.key?(:voice)
        end
      end
      
      # The message returned to the client by the `SynthesizeSpeech` method.
      class SynthesizeSpeechResponse
        include Google::Apis::Core::Hashable
      
        # Description of audio data to be synthesized.
        # Corresponds to the JSON property `audioConfig`
        # @return [Google::Apis::TexttospeechV1beta1::AudioConfig]
        attr_accessor :audio_config
      
        # The audio data bytes encoded as specified in the request, including the header
        # for encodings that are wrapped in containers (e.g. MP3, OGG_OPUS). For
        # LINEAR16 audio, we include the WAV header. Note: as with all bytes fields,
        # protobuffers use a pure binary representation, whereas JSON representations
        # use base64.
        # Corresponds to the JSON property `audioContent`
        # NOTE: Values are automatically base64 encoded/decoded in the client library.
        # @return [String]
        attr_accessor :audio_content
      
        # A link between a position in the original request input and a corresponding
        # time in the output audio. It's only supported via of SSML input.
        # Corresponds to the JSON property `timepoints`
        # @return [Array<Google::Apis::TexttospeechV1beta1::Timepoint>]
        attr_accessor :timepoints
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @audio_config = args[:audio_config] if args.key?(:audio_config)
          @audio_content = args[:audio_content] if args.key?(:audio_content)
          @timepoints = args[:timepoints] if args.key?(:timepoints)
        end
      end
      
      # This contains a mapping between a certain point in the input text and a
      # corresponding time in the output audio.
      class Timepoint
        include Google::Apis::Core::Hashable
      
        # Timepoint name as received from the client within tag.
        # Corresponds to the JSON property `markName`
        # @return [String]
        attr_accessor :mark_name
      
        # Time offset in seconds from the start of the synthesized audio.
        # Corresponds to the JSON property `timeSeconds`
        # @return [Float]
        attr_accessor :time_seconds
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @mark_name = args[:mark_name] if args.key?(:mark_name)
          @time_seconds = args[:time_seconds] if args.key?(:time_seconds)
        end
      end
      
      # Description of a voice supported by the TTS service.
      class Voice
        include Google::Apis::Core::Hashable
      
        # The languages that this voice supports, expressed as [BCP-47](https://www.rfc-
        # editor.org/rfc/bcp/bcp47.txt) language tags (e.g. "en-US", "es-419", "cmn-tw").
        # Corresponds to the JSON property `languageCodes`
        # @return [Array<String>]
        attr_accessor :language_codes
      
        # The name of this voice. Each distinct voice has a unique name.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The natural sample rate (in hertz) for this voice.
        # Corresponds to the JSON property `naturalSampleRateHertz`
        # @return [Fixnum]
        attr_accessor :natural_sample_rate_hertz
      
        # The gender of this voice.
        # Corresponds to the JSON property `ssmlGender`
        # @return [String]
        attr_accessor :ssml_gender
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_codes = args[:language_codes] if args.key?(:language_codes)
          @name = args[:name] if args.key?(:name)
          @natural_sample_rate_hertz = args[:natural_sample_rate_hertz] if args.key?(:natural_sample_rate_hertz)
          @ssml_gender = args[:ssml_gender] if args.key?(:ssml_gender)
        end
      end
      
      # Description of which voice to use for a synthesis request.
      class VoiceSelectionParams
        include Google::Apis::Core::Hashable
      
        # Required. The language (and potentially also the region) of the voice
        # expressed as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) language
        # tag, e.g. "en-US". This should not include a script tag (e.g. use "cmn-cn"
        # rather than "cmn-Hant-cn"), because the script will be inferred from the input
        # provided in the SynthesisInput. The TTS service will use this parameter to
        # help choose an appropriate voice. Note that the TTS service may choose a voice
        # with a slightly different language code than the one selected; it may
        # substitute a different region (e.g. using en-US rather than en-CA if there isn'
        # t a Canadian voice available), or even a different language, e.g. using "nb" (
        # Norwegian Bokmal) instead of "no" (Norwegian)".
        # Corresponds to the JSON property `languageCode`
        # @return [String]
        attr_accessor :language_code
      
        # The name of the voice. If not set, the service will choose a voice based on
        # the other parameters such as language_code and gender.
        # Corresponds to the JSON property `name`
        # @return [String]
        attr_accessor :name
      
        # The preferred gender of the voice. If not set, the service will choose a voice
        # based on the other parameters such as language_code and name. Note that this
        # is only a preference, not requirement; if a voice of the appropriate gender is
        # not available, the synthesizer should substitute a voice with a different
        # gender rather than failing the request.
        # Corresponds to the JSON property `ssmlGender`
        # @return [String]
        attr_accessor :ssml_gender
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @language_code = args[:language_code] if args.key?(:language_code)
          @name = args[:name] if args.key?(:name)
          @ssml_gender = args[:ssml_gender] if args.key?(:ssml_gender)
        end
      end
    end
  end
end
