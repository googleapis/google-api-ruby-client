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

require 'tempfile'
require 'googleauth'
require 'google/apis/translate_v2'

Google::Apis.logger.level = Logger::DEBUG

Translate = Google::Apis::TranslateV2

translate = Translate::TranslateService.new
translate.key = ARGV[0] || 'YOUR_API_KEY'

result = translate.list_translations(source: 'en', target: 'es', q: 'Hello world!')
puts result.translations.first.translated_text

