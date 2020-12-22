# OAuth 2.0

This document describes OAuth 2.0, when to use it, how to acquire client IDs and client secrets, and generally how to use OAuth 2.0 with the Google API Client Library for Ruby.

## About OAuth 2.0

OAuth 2.0 is the authorization protocol used by Google APIs. It is summarized on the Authentication page of this library's documentation, and there are other good references as well:

- [The OAuth 2.0 Authorization Protocol](https://tools.ietf.org/html/rfc6749)
- [Using OAuth 2.0 to Access Google APIs](https://developers.google.com/identity/protocols/OAuth2)

## Acquiring client IDs and secrets

To find your project's client ID and client secret, do the following:

Select an existing OAuth 2.0 credential or open the Credentials page.
If you haven't done so already, create your project's OAuth 2.0 credentials by clicking Create credentials > OAuth client ID, and providing the information needed to create the credentials.
Look for the Client ID in the OAuth 2.0 client IDs section. For details, click the client ID.
There are different types of client IDs, so be sure to get the correct type for your application:

*   Web application client IDs
*   Installed application client IDs
*   [Service Account](https://developers.google.com/accounts/docs/OAuth2ServiceAccount) client IDs

**Warning**: Keep your client secret private. If someone obtains your client secret, they could use it to consume your quota, incur charges against your Google APIs Console project, and request access to user data.

## The Signet library

The [Signet](https://github.com/googleapis/signet) library is included with the Google API Client Library for Ruby. It handles all steps of the OAuth 2.0 protocol required for making API calls. It is available as a separate gem if you only need an OAuth 2.0 library.

## Flows

There are three main OAuth 2.0 flows in the Google API Client Library for Ruby: web server, installed application and service account.

## Web server

We start by retrieving the client ID and client secret from a preconfigured client_secrets.json file:

```rb
client_secrets = Google::APIClient::ClientSecrets.load
```
For web-based applications, we then redirect the user to an authorization page:

```rb
# Request authorization
redirect user_credentials.authorization_uri.to_s, 303
```

The user completes the steps on her browser, and control gets returned to the application via the callback URL:

```rb
get '/oauth2callback' do
  # Exchange token
  user_credentials.code = params[:code] if params[:code]
  user_credentials.fetch_access_token!
  redirect to('/')
end
```

user_credentials now has everything needed to make authenticated requests:

```rb
events = calendar.list_events('primary', options: { authorization: user_credentials })
```

Below is the full sample we've been looking at.

```rb
require 'google/apis/calendar_v3'
require 'google/api_client/client_secrets'
require 'sinatra'
require 'logger'

enable :sessions

def logger; settings.logger end

def calendar; settings.calendar; end

def user_credentials
  # Build a per-request oauth credential based on token stored in session
  # which allows us to use a shared API client.
  @authorization ||= (
    auth = settings.authorization.dup
    auth.redirect_uri = to('/oauth2callback')
    auth.update_token!(session)
    auth
  )
end

configure do
  log_file = File.open('calendar.log', 'a+')
  log_file.sync = true
  logger = Logger.new(log_file)
  logger.level = Logger::DEBUG

  Google::Apis::ClientOptions.default.application_name = 'Ruby Calendar sample'
  Google::Apis::ClientOptions.default.application_version = '1.0.0'
  calendar_api = Google::Apis::CalendarV3::CalendarService.new

  client_secrets = Google::APIClient::ClientSecrets.load
  authorization = client_secrets.to_authorization
  authorization.scope = 'https://www.googleapis.com/auth/calendar'

  set :authorization, authorization
  set :logger, logger
  set :calendar, calendar_api
end

before do
  # Ensure user has authorized the app
  unless user_credentials.access_token || request.path_info =~ /^\/oauth2/
    redirect to('/oauth2authorize')
  end
end

after do
  # Serialize the access/refresh token to the session and credential store.
  session[:access_token] = user_credentials.access_token
  session[:refresh_token] = user_credentials.refresh_token
  session[:expires_in] = user_credentials.expires_in
  session[:issued_at] = user_credentials.issued_at
end

get '/oauth2authorize' do
  # Request authorization
  redirect user_credentials.authorization_uri.to_s, 303
end

get '/oauth2callback' do
  # Exchange token
  user_credentials.code = params[:code] if params[:code]
  user_credentials.fetch_access_token!
  redirect to('/')
end

get '/' do
  # Fetch list of events on the user's default calandar
  events = calendar.list_events('primary', options: { authorization: user_credentials })
  [200, {'Content-Type' => 'application/json'}, events.to_h.to_json]
end
```

### Installed application

We start by retrieving the client ID and client secret from a preconfigured client_secrets.json file:

```rb
client_secrets = Google::APIClient::ClientSecrets.load
```

For installed applications, we can use the Google::APIClient::InstalledAppFlow helper class to handle most of the setup:

```rb
flow = Google::APIClient::InstalledAppFlow.new(
    :client_id => client_secrets.client_id,
    :client_secret => client_secrets.client_secret,
    :scope => ['https://www.googleapis.com/auth/adsense.readonly']
)
```

The user completes the steps on her browser, which is opened automatically, and the authorization code is fed into the application automatically, so all it takes is:

```rb
adsense.authorization = flow.authorize(storage)
```

The client now has everything needed to make an authenticated request:

```rb
  report = adsense.generate_report(start_date: '2011-01-01', end_date: '2011-08-31',
                                   metric: %w(PAGE_VIEWS AD_REQUESTS AD_REQUESTS_COVERAGE
                                              CLICKS AD_REQUESTS_CTR COST_PER_CLICK
                                              AD_REQUESTS_RPM EARNINGS),
                                   dimension: %w(DATE),
                                   sort: %w(+DATE))
```

Below is the full sample we've been looking at.

```rb
# AdSense Management API command-line sample.
require 'google/apis/adsense_v1_4'
require 'google/api_client/client_secrets'
require 'google/api_client/auth/installed_app'
require 'google/api_client/auth/storage'
require 'google/api_client/auth/storages/file_store'
require 'logger'
require 'json'

CREDENTIAL_STORE_FILE = "#{$0}-oauth2.json"

# Handles authentication and loading of the API.
def setup
  log_file = File.open('adsense.log', 'a+')
  log_file.sync = true
  logger = Logger.new(log_file)
  logger.level = Logger::DEBUG

  adsense = Google::Apis::AdsenseV1_4::AdSenseService.new

  # Stores auth credentials in a file, so they survive multiple runs
  # of the application. This avoids prompting the user for authorization every
  # time the access token expires, by remembering the refresh token.
  # Note: FileStorage is not suitable for multi-user applications.
  storage = Google::APIClient::Storage.new(
    Google::APIClient::FileStore.new(CREDENTIAL_STORE_FILE))
  adsense.authorization = storage.authorize
  if storage.authorization.nil?
    client_secrets = Google::APIClient::ClientSecrets.load
    # The InstalledAppFlow is a helper class to handle the OAuth 2.0 installed
    # application flow, which ties in with Stroage to store credentials
    # between runs.
    flow = Google::APIClient::InstalledAppFlow.new(
      :client_id => client_secrets.client_id,
      :client_secret => client_secrets.client_secret,
      :scope => ['https://www.googleapis.com/auth/adsense.readonly']
    )
    adsense.authorization = flow.authorize(storage)
  end
  return adsense
end

# Generates a report for the default account.
def generate_report(adsense)
  report = adsense.generate_report(start_date: '2011-01-01', end_date: '2011-08-31',
                                   metric: %w(PAGE_VIEWS AD_REQUESTS AD_REQUESTS_COVERAGE
                                              CLICKS AD_REQUESTS_CTR COST_PER_CLICK
                                              AD_REQUESTS_RPM EARNINGS),
                                   dimension: %w(DATE),
                                   sort: %w(+DATE))

  # Display headers.
  report.headers.each do |header|
    print '%25s' % header.name
  end
  puts

  # Display results.
  report.rows.each do |row|
    row.each do |column|
      print '%25s' % column
    end
    puts
  end
end


if __FILE__ == $0
  adsense = setup()
  generate_report(adsense)
end
```

## Service accounts

For server-to-server interactions, like those between a web application and Google Cloud Storage, Prediction, or BigQuery APIs, you can use service accounts.

```rb
require 'googleauth'
require 'google/apis/compute_v1'

compute = Google::Apis::ComputeV1::ComputeService.new

# Get the environment configured authorization
scopes =  ['https://www.googleapis.com/auth/cloud-platform', 'https://www.googleapis.com/auth/compute']
compute.authorization = Google::Auth.get_application_default(scopes)
```
