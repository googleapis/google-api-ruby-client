# Using OAuth 2.0 for Web Server Applications

This document explains how web server applications use the Google API Client Library for Ruby to implement OAuth 2.0 authorization to access Google APIs. OAuth 2.0 allows users to share specific data with an application while keeping their usernames, passwords, and other information private. For example, an application can use OAuth 2.0 to obtain permission from users to store files in their Google Drives.

This OAuth 2.0 flow is specifically for user authorization. It is designed for applications that can store confidential information and maintain state. A properly authorized web server application can access an API while the user interacts with the application or after the user has left the application.

Web server applications frequently also use [service accounts](service-accounts.md) to authorize API requests, particularly when calling Cloud APIs to access project-based data rather than user-specific data. Web server applications can use service accounts in conjunction with user authorization.

## Prerequisites

### Enable APIs for your project

Any application that calls Google APIs needs to enable those APIs in the API Console. To enable the appropriate APIs for your project:

1. Open the [Library](https://console.developers.google.com/apis/library) page in the API Console.
1. Select the project associated with your application. Create a project if you do not have one already.
1. Use the **Library** page to find each API that your application will use. Click on each API and enable it for your project.

### Create authorization credentials

Any application that uses OAuth 2.0 to access Google APIs must have authorization credentials that identify the application to Google's OAuth 2.0 server. The following steps explain how to create credentials for your project. Your applications can then use the credentials to access APIs that you have enabled for that project.

<ol>
  <li>Open the <a href="https://console.developers.google.com/apis/credentials">Credentials page</a> in the API Console.</li>

  <li>Click <b>Create credentials &gt; OAuth client ID</b>.</li>
  <li>Complete the form. Set the application type to <code>Web
      application</code>. Applications that use languages and frameworks
      like PHP, Java, Python, Ruby, and .NET must specify authorized
      <b>redirect URIs</b>. The redirect URIs are the endpoints to which the
      OAuth 2.0 server can send responses.<br><br>
      For testing, you can specify URIs that refer to the local machine,
      such as <code>http://localhost:8080</code>. With that in mind, please
      note that all of the examples in this document use
      <code>http://localhost:8080</code> as the redirect URI.
      <br><br>
      We recommend that you <a href="#protectauthcode">design your app's auth
      endpoints</a> so that your application does not expose authorization
      codes to other resources on the page.</li>
</ol>

After creating your credentials, download the **client_secret.json** file from the API Console. Securely store the file in a location that only your application can access.

> **Important:** Do not store the **client_secret.json** file in a publicly-accessible location. In addition, if you share the source code to your application—for example, on GitHub—store the **client_secret.json** file outside of your source tree to avoid inadvertently sharing your client credentials.

### Identify access scopes

Scopes enable your application to only request access to the resources that it needs while also enabling users to control the amount of access that they grant to your application. Thus, there may be an inverse relationship between the number of scopes requested and the likelihood of obtaining user consent.

Before you start implementing OAuth 2.0 authorization, we recommend that you identify the scopes that your app will need permission to access.

We also recommend that your application request access to authorization scopes via an incremental authorization process, in which your application requests access to user data in context. This best practice helps users to more easily understand why your application needs the access it is requesting.

The [OAuth 2.0 API Scopes document](https://developers.google.com/identity/protocols/googlescopes) contains a full list of scopes that you might use to access Google APIs.

## Obtaining OAuth 2.0 access tokens

The following steps show how your application interacts with Google's OAuth 2.0 server to obtain a user's consent to perform an API request on the user's behalf. Your application must have that consent before it can execute a Google API request that requires user authorization.

### Step 1: Configure the client object

Your first step is to configure the client object, which your application uses to obtain user authorization and to make authorized API requests.

The client object identifies the scopes that your application is requesting permission to access. These values inform the consent screen that Google displays to the user. The Choosing access scopes section provides information about how to determine which scopes your application should request permission to access.

Use the client_secrets.json file that you created to configure a client object in your application. When you configure a client object, you specify the scopes your application needs to access, along with the URL to your application's auth endpoint, which will handle the response from the OAuth 2.0 server.

For example, to request read-only, offline access to a user's Google Drive:

```rb
require 'google/apis/drive_v2'
require 'google/api_client/client_secrets'

client_secrets = Google::APIClient::ClientSecrets.load
auth_client = client_secrets.to_authorization
auth_client.update!(
  :scope => 'https://www.googleapis.com/auth/drive.metadata.readonly',
  :redirect_uri => 'http://www.example.com/oauth2callback',
  :additional_parameters => {
    "access_type" => "offline",         # offline access
    "include_granted_scopes" => "true"  # incremental auth
  }
)
```

Your application uses the client object to perform OAuth 2.0 operations, such as generating authorization request URLs and applying access tokens to HTTP requests.

### Step 2: Redirect to Google's OAuth 2.0 server

When your application needs to access a user's data, redirect the user to Google's OAuth 2.0 server.

1. Generate a URL to request access from Google's OAuth 2.0 server:

```rb
auth_uri = auth_client.authorization_uri.to_s
```

2. Redirect the user to auth_uri.

Google's OAuth 2.0 server authenticates the user and obtains consent from the user for your application to access the requested scopes. The response is sent back to your application using the redirect URL you specified.

### Step 3: Google prompts user for consent

In this step, the user decides whether to grant your application the requested access. At this stage, Google displays a consent window that shows the name of your application and the Google API services that it is requesting permission to access with the user's authorization credentials. The user can then consent or refuse to grant access to your application.

Your application doesn't need to do anything at this stage as it waits for the response from Google's OAuth 2.0 server indicating whether the access was granted. That response is explained in the following step.

### Step 4: Handle the OAuth 2.0 server response

The OAuth 2.0 server responds to your application's access request by using the URL specified in the request.

If the user approves the access request, then the response contains an authorization code. If the user does not approve the request, the response contains an error message. The authorization code or error message that is returned to the web server appears on the query string, as shown below:

An error response:

```
https://oauth2.example.com/auth?error=access_denied
```

An authorization code response:

```
https://oauth2.example.com/auth?code=4/P7q7W91a-oMsCeLvIaQm6bTrgtp7
```

> Important: If your response endpoint renders an HTML page, any resources on that page will be able to see the authorization code in the URL. Scripts can read the URL directly, and the URL in the Referer HTTP header may be sent to any or all resources on the page.
>
> Carefully consider whether you want to send authorization credentials to all resources on that page (especially third-party scripts such as social plugins and analytics). To avoid this issue, we recommend that the server first handle the request, then redirect to another URL that doesn't include the response parameters.

**Sample OAuth 2.0 server response**

You can test this flow by clicking on the following sample URL, which requests read-only access to view metadata for files in your Google Drive:

```
https://accounts.google.com/o/oauth2/v2/auth?
 scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fdrive.metadata.readonly&
 access_type=offline&
 include_granted_scopes=true&
 state=state_parameter_passthrough_value&
 redirect_uri=http%3A%2F%2Foauth2.example.com%2Fcallback&
 response_type=code&
 client_id=client_id
```

After completing the OAuth 2.0 flow, you should be redirected to http://localhost/oauth2callback, which will likely yield a 404 NOT FOUND error unless your local machine serves a file at that address. The next step provides more detail about the information returned in the URI when the user is redirected back to your application.

### Step 5: Exchange authorization code for refresh and access tokens

After the web server receives the authorization code, it can exchange the authorization code for an access token.

To exchange an authorization code for an access token, use the fetch_access_token! method:

```rb
auth_client.code = auth_code
auth_client.fetch_access_token!
```

## Calling Google APIs

Use the auth_client object to call Google APIs by completing the following steps:

1. Build a service object for the API that you want to call. For example, to call version 2 of the Drive API:
`drive = Google::Apis::DriveV2::DriveService.new`
2. Set the credentials on the service:
`drive.authorization = auth_client`
3. Make requests to the API service using the interface provided by the service object. For example, to list the files in the authenticated user's Google Drive:
`files = drive.list_files`

Alternately, authorization can be provided on a per-method basis by supplying the options parameter to a method:

`files = drive.list_files(options: { authorization: auth_client })`

## Complete example

The following example prints a JSON-formatted list of files in a user's Google Drive after the user authenticates and gives consent for the application to access the user's Drive files.

This example uses the Sinatra framework.

```rb
require 'google/apis/drive_v2'
require 'google/api_client/client_secrets'
require 'json'
require 'sinatra'

enable :sessions
set :session_secret, 'setme'

get '/' do
  unless session.has_key?(:credentials)
    redirect to('/oauth2callback')
  end
  client_opts = JSON.parse(session[:credentials])
  auth_client = Signet::OAuth2::Client.new(client_opts)
  drive = Google::Apis::DriveV2::DriveService.new
  files = drive.list_files(options: { authorization: auth_client })
  "<pre>#{JSON.pretty_generate(files.to_h)}</pre>"
end

get '/oauth2callback' do
  client_secrets = Google::APIClient::ClientSecrets.load
  auth_client = client_secrets.to_authorization
  auth_client.update!(
    :scope => 'https://www.googleapis.com/auth/drive.metadata.readonly',
    :redirect_uri => url('/oauth2callback'))
  if request['code'] == nil
    auth_uri = auth_client.authorization_uri.to_s
    redirect to(auth_uri)
  else
    auth_client.code = request['code']
    auth_client.fetch_access_token!
    auth_client.client_secret = nil
    session[:credentials] = auth_client.to_json
    redirect to('/')
  end
end
```

## Incremental authorization

In the OAuth 2.0 protocol, your app requests authorization to access resources, which are identified by scopes. It is considered a best user-experience practice to request authorization for resources at the time you need them. To enable that practice, Google's authorization server supports incremental authorization. This feature lets you request scopes as they are needed and, if the user grants permission, add those scopes to your existing access token for that user.

For example, an app that lets people sample music tracks and create mixes might need very few resources at sign-in time, perhaps nothing more than the name of the person signing in. However, saving a completed mix would require access to their Google Drive. Most people would find it natural if they only were asked for access to their Google Drive at the time the app actually needed it.

In this case, at sign-in time the app might request the profile scope to perform basic sign-in, and then later request the https://www.googleapis.com/auth/drive.file scope at the time of the first request to save a mix.

To implement incremental authorization, you complete the normal flow for requesting an access token but make sure that the authorization request includes previously granted scopes. This approach allows your app to avoid having to manage multiple access tokens.

The following rules apply to an access token obtained from an incremental authorization:

The token can be used to access resources corresponding to any of the scopes rolled into the new, combined authorization.
When you use the refresh token for the combined authorization to obtain an access token, the access token represents the combined authorization and can be used for any of its scopes.
The combined authorization includes all scopes that the user granted to the API project even if the grants were requested from different clients. For example, if a user granted access to one scope using an application's desktop client and then granted another scope to the same application via a mobile client, the combined authorization would include both scopes.
If you revoke a token that represents a combined authorization, access to all of that authorization's scopes on behalf of the associated user are revoked simultaneously.
The example for configuring the client object demonstrates how to ensure authorization requests follow this best practice. The code snippet below also shows the code that you need to add to use incremental authorization.

```rb
auth_client.update!(
  :additional_parameters => {"include_granted_scopes" => "true"}
)
```

## Refreshing an access token (offline access)

Access tokens periodically expire. You can refresh an access token without prompting the user for permission (including when the user is not present) if you requested offline access to the scopes associated with the token.

If you use a Google API Client Library, the client object refreshes the access token as needed as long as you configure that object for offline access.

Requesting offline access is a requirement for any application that needs to access a Google API when the user is not present. For example, an app that performs backup services or executes actions at predetermined times needs to be able to refresh its access token when the user is not present. The default style of access is called online.

Server-side web applications, installed applications, and devices all obtain refresh tokens during the authorization process. Refresh tokens are not typically used in client-side (JavaScript) web applications.

If your application needs offline access to a Google API, set the API client's access type to offline:

```rb
auth_client.update!(
  :additional_parameters => {"access_type" => "offline"}
)
```

After a user grants offline access to the requested scopes, you can continue to use the API client to access Google APIs on the user's behalf when the user is offline. The client object will refresh the access token as needed.

## Revoking a token

In some cases a user may wish to revoke access given to an application. A user can revoke access by visiting Account Settings. It is also possible for an application to programmatically revoke the access given to it. Programmatic revocation is important in instances where a user unsubscribes or removes an application. In other words, part of the removal process can include an API request to ensure the permissions granted to the application are removed.

To programmatically revoke a token, make an HTTP request to the oauth2.revoke endpoint:

```rb
uri = URI('https://accounts.google.com/o/oauth2/revoke')
params = { :token => auth_client.access_token }
uri.query = URI.encode_www_form(params)
response = Net::HTTP.get(uri)
```

The token can be an access token or a refresh token. If the token is an access token and it has a corresponding refresh token, the refresh token will also be revoked.

If the revocation is successfully processed, then the status code of the response is 200. For error conditions, a status code 400 is returned along with an error code.

> Note: Following a successful revocation response, it might take some time before the revocation has full effect.

