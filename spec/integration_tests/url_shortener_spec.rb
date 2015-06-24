require 'spec_helper'
require 'google/apis/urlshortener_v1'
require 'googleauth'

Urlshortener = Google::Apis::UrlshortenerV1

RSpec.describe Google::Apis::UrlshortenerV1, :if => run_integration_tests? do

  before(:context) do
    WebMock.allow_net_connect!
    @shortener = Urlshortener::UrlshortenerService.new
    @shortener.authorization = Google::Auth.get_application_default([Urlshortener::AUTH_URLSHORTENER])
  end

  it 'should shorten URLs in a batch' do
    @urls = []
    callback = lambda { |url, err| @urls << url unless url.nil? }
    @shortener.batch do |shortener|
      shortener.insert_url(Urlshortener::Url.new(long_url: 'https://example.com/foo'), &callback)
      shortener.insert_url(Urlshortener::Url.new(long_url: 'https://example.com/bar'), &callback)
      shortener.insert_url(Urlshortener::Url.new(long_url: 'https://example.com/baz'), &callback)
    end
    puts @urls.inspect
    expect(@urls.length).to eq 3
  end

  after(:context) do
    WebMock.disable_net_connect!
  end

end
