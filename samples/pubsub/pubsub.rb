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

require 'googleauth'
require 'google/apis/pubsub_v1beta2'
require 'base64'

Pubsub = Google::Apis::PubsubV1beta2

pubsub = Pubsub::PubsubService.new
pubsub.authorization = Google::Auth.get_application_default([Pubsub::AUTH_PUBSUB])

project = ARGV[0] || 'YOUR_PROJECT_NAME'

topic = "projects/#{project}/topics/foo"
subscription = "projects/#{project}/subscriptions/bar"

begin
  # Create topic
  pubsub.create_project_topic(topic)
rescue Google::Apis::ClientError => e
  # Probably didn't clean up after ourselves...
end
begin
  pubsub.create_project_subscription(subscription, Pubsub::Subscription.new(topic: topic))
rescue Google::Apis::ClientError => e
  # Probably didn't clean up after ourselves...
end

# Publish messages
request = Pubsub::PublishRequest.new(messages: [])
request.messages << Pubsub::Message.new(attributes: { "language" => "en" }, data: Base64.urlsafe_encode64('Hello'))
request.messages << Pubsub::Message.new(attributes: { "language" => "en" }, data: Base64.urlsafe_encode64('World'))
pubsub.publish(topic, request)

# Pull messages
response = pubsub.pull(subscription, Pubsub::PullRequest.new(max_messages: 5))
response.received_messages.each do |received_message|
  data = Base64.urlsafe_decode64(received_message.message.data)
  puts "Received #{data}"
end

# Acknowledge receipt
ack_ids = response.received_messages.map{ |msg| msg.ack_id }
pubsub.acknowledge(subscription, Pubsub::AcknowledgeRequest.new(ack_ids: ack_ids))

# Delete the subscription & topic
pubsub.delete_project_subscription(subscription)
pubsub.delete_project_topic(topic)

