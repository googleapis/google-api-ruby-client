# Buzz Ruby Sample
This is a simple starter project written in Ruby which provides a minimal
example of Buzz integration within a Sinatra web application.

Once you've run the starter project and played with the features it provides,
this starter project provides a great place to start your experimentation into
the API.

## Prerequisites
Please make sure that all of these are installed before you try to run the
sample.

- Ruby 1.8.7+
- Ruby Gems 1.3.7+
- Are you on a Mac? If so, be sure you have XCode 3.2+
- A few gems (run 'sudo gem install <gem name>' to install)
    - sinatra
    - httpadapter
    - extlib
    - dm-sqlite-adapter
    - google-api-ruby-client

## Setup Authentication

This API uses OAuth 2.0. Learn more about Google APIs and OAuth 2.0 here:
http://code.google.com/apis/accounts/docs/OAuth2.html

Or, if you'd like to dive right in, follow these steps.
 - Visit https://code.google.com/apis/console/ to register your application.
 - From the "Project Home" screen, activate access to "Buzz API".
 - Click on "API Access" in the left column
 - Click the button labeled "Create an OAuth2 client ID"
 - Give your application a name and click "Next"
 - Select "Web Application" as the "Application type"
 - Under "Your Site or Hostname" select "http://" as the protocol and enter
   "localhost" for the domain name
 - click "Create client ID"

Edit the buzz.rb file and enter the values for the following properties that 
you retrieved from the API Console:

 - `oauth_client_id`
 - `oauth_client_secret`

Or, include them in the command line as the first two arguments.

## Running the Sample

I'm assuming you've checked out the code and are reading this from a local
directory. If not check out the code to a local directory.

1. Start up the embedded Sinatra web server

        $ ruby buzz.rb

2. Open your web browser and see your activities! Go to `http://localhost:4567/`

3. Be inspired and start hacking an amazing new web app!
