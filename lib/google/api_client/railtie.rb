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
        Google::APIClient.logger = app.logger
      end
    end
  end
end
