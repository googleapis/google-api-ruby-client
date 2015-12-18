require 'spec_helper'
require 'google/apis/pubsub_v1'
require 'googleauth'

Pubsub = Google::Apis::PubsubV1

RSpec.describe Google::Apis::PubsubV1, :if => run_integration_tests? do

  before(:context) do
    WebMock.allow_net_connect!
    project = ENV['GOOGLE_PROJECT_ID']
    @topic_name = "projects/#{project}/topics/test"
    @subscription_name = "projects/#{project}/subscriptions/test"

    @pubsub = Pubsub::PubsubService.new
    @pubsub.authorization = Google::Auth.get_application_default([Pubsub::AUTH_PUBSUB])
    @pubsub.create_topic(@topic_name)
    @pubsub.create_subscription(@subscription_name, Pubsub::Subscription.new(topic: @topic_name))
  end

  it 'should publish & receive messages' do
    # Publish messages
    request = Pubsub::PublishRequest.new(messages: [])
    request.messages << Pubsub::Message.new(attributes: { "language" => "en" }, data: 'Hello')
    request.messages << Pubsub::Message.new(attributes: { "language" => "en" }, data: 'World')
    @pubsub.publish_topic(@topic_name, request)

    # Pull messages
    response = @pubsub.pull_subscription(@subscription_name, Pubsub::PullRequest.new(max_messages: 5))
    response.received_messages.each do |received_message|
      data = received_message.message.data
      puts "Received #{data}"
    end

    # Acknowledge receipt
    ack_ids = response.received_messages.map{ |msg| msg.ack_id }
    @pubsub.acknowledge_subscription(@subscription_name, Pubsub::AcknowledgeRequest.new(ack_ids: ack_ids))

    expect(response.received_messages.length).to eq 2
  end

  after(:context) do
    @pubsub.delete_subscription(@subscription_name)
    @pubsub.delete_topic(@topic_name)
    WebMock.disable_net_connect!
  end

end
