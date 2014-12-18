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
        _logger = case
                    when app.respond_to?(:logger)        then app.logger
                    when app.config.respond_to?(:logger) then app.config.logger
                    else                                      Rails.logger
                  end
                  
        Google::APIClient.logger = _logger
      end
    end
  end
end
