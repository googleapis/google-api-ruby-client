require 'rails/railtie'
require 'google/api_client/logging'

module Google
  class APIClient
    
    ##
    # Optional support class for Rails. Currently replaces the built-in logger
    # with Rails' application log.
    #
    class Railtie < Rails::Railtie
      initializer 'google-api-client' do |app|
        logger = app.config.logger || Rails.logger
        Google::APIClient.logger = logger unless logger.nil?
      end
    end
  end
end
