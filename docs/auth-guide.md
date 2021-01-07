# Authentication for Simple REST Clients

This document describes how authentication, authorization, and accounting are accomplished. For all API calls, your application needs to be authenticated. When an API accesses a user's private data, your application must also be authorized by the user to access the data. For example, accessing a public Google+ post would not require user authorization, but accessing a user's private calendar would. Also, for quota and billing purposes, all API calls involve accounting. This document summarizes the protocols used by Google APIs and provides links to more information.

> **Note:** this is a "general" document, and not specific to this particular service client. In particular, you may find that the examples in this document are for a different client. All simple REST clients follow the same usage patterns, and you should be able to adapt the provided examples to the client you are using.

## Access types

It is important to understand the basics of how API authentication and authorization are handled. All API calls must use either simple or authorized access (defined below). Many API methods require authorized access, but some can use either. For API methods that can use either, some will behave differently, depending on whether you use simple or authorized access. See the API's method documentation to determine the appropriate access type.

### Simple API access using API keys

For API calls that do not access any private user data, your application may use an **API key**, authenticating as an application belonging to your Google API Console project. Every simple access call your application makes must include this key. This is needed to measure project usage for accounting purposes.

### Authorized API access using OAuth 2.0

For API calls that access private user data, the user must grant your application access. This also implies that both your application, and the user granting access, must be authenticated. All of this is accomplished with **OAuth 2.0** and libraries written for it.

## Using API keys

When calling APIs that do not access private user data, you can use simple API keys. These keys are used to authenticate your application for accounting purposes. The Google Developers Console documentation also describes [API keys](https://developers.google.com/console/help/using-keys).

> Note: If you do need to access private user data, you must use OAuth 2.0 authentication.

To use API keys, set the `key` attribute on service objects. For example, here is how to use API keys to authenticate for the translate V2 service.

```ruby
require 'google/apis/translate_v2'

translate = Google::Apis::TranslateV2::TranslateService.new
translate.key = 'YOUR_API_KEY_HERE'
result = translate.list_translations('Hello world!', 'es', source: 'en')
puts result.translations.first.translated_text
```

All calls made using that service object will include your API key.

> **Warning:** Keep your API key private. If someone obtains your key, they could use it to consume your quota or incur charges against your API Console project.

## Using OAuth 2.0

This section describes OAuth 2.0, when to use it, how to acquire client IDs and client secrets, and generally how to use OAuth 2.0 with the Google API Client Library for Ruby.

### About OAuth 2.0

OAuth 2.0 is the authorization protocol used by Google APIs. It is summarized on the Authentication page of this library's documentation, and there are other good references as well:

- [The OAuth 2.0 Authorization Protocol](https://tools.ietf.org/html/rfc6749)
- [Using OAuth 2.0 to Access Google APIs](https://developers.google.com/identity/protocols/OAuth2)

The [Signet](https://github.com/googleapis/signet) library is included with the Google API Client Library for Ruby. It handles all steps of the OAuth 2.0 protocol required for making API calls. It is available as a separate gem if you only need an OAuth 2.0 library.

### OAuth 2.0 Concepts

**Scope:** Each API defines one or more scopes that declare a set of operations permitted. For example, an API might have read-only and read-write scopes. When your application requests access to user data, the request must include one or more scopes. The user needs to approve the scope of access your application is requesting.

**Refresh and access tokens:** When a user grants your application access, the OAuth 2.0 authorization server provides your application with refresh and access tokens. These tokens are only valid for the scope requested. Your application uses access tokens to authorize API calls. Access tokens expire, but refresh tokens do not. Your application can use a refresh token to acquire a new access token.

**Client ID and client secret:** These strings uniquely identify your application and are used to acquire tokens. They are created for your project on the [API Console](https://console.developers.google.com/). There are three types of client IDs:

*   [Web application](https://developers.google.com/accounts/docs/OAuth2WebServer) client IDs
*   [Installed application](https://developers.google.com/accounts/docs/OAuth2InstalledApp) client IDs
*   [Service Account](https://developers.google.com/accounts/docs/OAuth2ServiceAccount) client IDs

### Acquiring client IDs and secrets

To find your project's client ID and client secret, do the following:

*   Select an existing OAuth 2.0 credential or open the Credentials page.
*   If you haven't done so already, create your project's OAuth 2.0 credentials by clicking Create credentials > OAuth client ID, and providing the information needed to create the credentials.
*   Look for the Client ID in the OAuth 2.0 client IDs section. For details, click the client ID.

There are different types of client IDs, so be sure to get the correct type for your application:

*   [Web application](https://developers.google.com/accounts/docs/OAuth2WebServer) client IDs
*   [Installed application](https://developers.google.com/accounts/docs/OAuth2InstalledApp) client IDs
*   [Service Account](https://developers.google.com/accounts/docs/OAuth2ServiceAccount) client IDs

> **Warning**: Keep your client secret private. If someone obtains your client secret, they could use it to consume your quota, incur charges against your Google APIs Console project, and request access to user data.

#### Client Secrets files

The Google APIs Client Library for Ruby uses the `client_secrets.json` file format for storing the `client_id`, `client_secret`, and other OAuth 2.0 parameters.

See [Creating authorization credentials](https://developers.google.com/identity/protocols/OAuth2WebServer#creatingcred) for how to obtain a `client_secrets.json` file.

The `client_secrets.json` file format is a [JSON](http://www.json.org/) formatted file containing the client ID, client secret, and other OAuth 2.0 parameters. Here is an example client_secrets.json file for a web application:

```json
{
  "web": {
    "client_id": "asdfjasdljfasdkjf",
    "client_secret": "1912308409123890",
    "redirect_uris": ["https://www.example.com/oauth2callback"],
    "auth_uri": "https://accounts.google.com/o/oauth2/auth",
    "token_uri": "https://accounts.google.com/o/oauth2/token"
  }
}
```

Here is an example client_secrets.json file for an installed application:

```json
{
  "installed": {
    "client_id": "837647042410-75ifg...usercontent.com",
    "client_secret":"asdlkfjaskd",
    "redirect_uris": ["http://localhost", "urn:ietf:wg:oauth:2.0:oob"],
    "auth_uri": "https://accounts.google.com/o/oauth2/auth",
    "token_uri": "https://accounts.google.com/o/oauth2/token"
  }
}
```

The format defines one of two client ID types:

- `web`: Web application.
- `installed`: Installed application.

The `web` and `installed` sub-objects have the following mandatory members:

- `client_id` (string): The client ID.
- `client_secret` (string): The client secret.
- `redirect_uris` (list of strings): A list of valid redirection endpoint URIs. This list should match the list entered for the client ID on the [API Access pane](https://code.google.com/apis/console#:access) of the Google APIs Console.
- `auth_uri` (string): The authorization server endpoint URI.
- `token_uri` (string): The token server endpoint URI.

All of the above members are mandatory. The following optional parameters may appear:

- `client_email` (string) The service account email associated with the client.
- `auth_provider_x509_cert_url` (string) The URL of the public x509 certificate, used to verify the signature on JWTs, such as ID tokens, signed by the authentication provider.
- `client_x509_cert_url` (string) The URL of the public x509 certificate, used to verify JWTs signed by the client.

The following shows how you can use a client_secrets.json file and the Google::APIClient::ClientSecrets class to create a new authorization object:

```ruby
require 'google/api_client/client_secrets'

CLIENT_SECRETS = Google::APIClient::ClientSecrets.load
authorization = CLIENT_SECRETS.to_authorization

# You can then use this with an API client, e.g.:
client.authorization = authorization
```

### Flows

There are three main OAuth 2.0 flows in the Google API Client Library for Ruby: web server, installed application and service account.

#### Web server

We start by retrieving the client ID and client secret from a preconfigured client_secrets.json file:

```ruby
client_secrets = Google::APIClient::ClientSecrets.load
```

For web-based applications, we then redirect the user to an authorization page:

```ruby
# Request authorization
redirect user_credentials.authorization_uri.to_s, 303
```

The user completes the steps on her browser, and control gets returned to the application via the callback URL:

```ruby
get '/oauth2callback' do
  # Exchange token
  user_credentials.code = params[:code] if params[:code]
  user_credentials.fetch_access_token!
  redirect to('/')
end
```

user_credentials now has everything needed to make authenticated requests:

```ruby
events = calendar.list_events('primary', options: { authorization: user_credentials })
```

Below is the full sample we've been looking at.

```ruby
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

For more detailed information, see the [Web Application Flow Documentation](oauth-web.md).

#### Installed application

We start by retrieving the client ID and client secret from a preconfigured client_secrets.json file:

```ruby
client_secrets = Google::APIClient::ClientSecrets.load
```

For installed applications, we can use the Google::APIClient::InstalledAppFlow helper class to handle most of the setup:

```ruby
flow = Google::APIClient::InstalledAppFlow.new(
    :client_id => client_secrets.client_id,
    :client_secret => client_secrets.client_secret,
    :scope => ['https://www.googleapis.com/auth/adsense.readonly']
)
```

The user completes the steps on her browser, which is opened automatically, and the authorization code is fed into the application automatically, so all it takes is:

```ruby
adsense.authorization = flow.authorize(storage)
```

The client now has everything needed to make an authenticated request:

```ruby
  report = adsense.generate_report(start_date: '2011-01-01', end_date: '2011-08-31',
                                   metric: %w(PAGE_VIEWS AD_REQUESTS AD_REQUESTS_COVERAGE
                                              CLICKS AD_REQUESTS_CTR COST_PER_CLICK
                                              AD_REQUESTS_RPM EARNINGS),
                                   dimension: %w(DATE),
                                   sort: %w(+DATE))
```

Below is the full sample we've been looking at.

```ruby
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

For more detailed information, see the [Installed Application Flow Documentation](oauth-installed.md).

### Service accounts

For server-to-server interactions, like those between a web application and Google Cloud Storage, Prediction, or BigQuery APIs, you can use service accounts.

```rb
require 'googleauth'
require 'google/apis/compute_v1'

compute = Google::Apis::ComputeV1::ComputeService.new

# Get the environment configured authorization
scopes =  ['https://www.googleapis.com/auth/cloud-platform', 'https://www.googleapis.com/auth/compute']
compute.authorization = Google::Auth.get_application_default(scopes)
```

For more detailed information, see the [Server Application Flow Documentation](oauth-server.md).

## Using environment variables

The [GoogleAuth Library for Ruby](https://github.com/google/google-auth-library-ruby) also supports authorization via environment variables if you do not want to check in developer credentials or private keys. Simply set the following variables for your application:

```sh
GOOGLE_ACCOUNT_TYPE="YOUR ACCOUNT TYPE" # ie. 'service'
GOOGLE_CLIENT_EMAIL="YOUR GOOGLE DEVELOPER EMAIL"
GOOGLE_PRIVATE_KEY="YOUR GOOGLE DEVELOPER API KEY"
```
