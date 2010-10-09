#!/usr/bin/env ruby

# INSTALL
#   sudo gem install sinatra liquid
# RUN
#   ruby examples/sinatra/buzz_api.rb

root_dir = File.expand_path("../../..", __FILE__)
lib_dir = File.expand_path("./lib", root_dir)

$LOAD_PATH.unshift(lib_dir)
$LOAD_PATH.uniq!

require 'rubygems'
begin
  require 'sinatra'
  require 'liquid'
  require 'signet/oauth_1/client'
  require 'google/api_client'
rescue LoadError
  STDERR.puts "Missing dependencies."
  STDERR.puts "sudo gem install sinatra liquid signet google-api-client"
  exit(1)
end

CSS = <<-CSS
/* http://meyerweb.com/eric/tools/css/reset/ */
/* v1.0 | 20080212 */

html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, font, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td {
  margin: 0;
  padding: 0;
  border: 0;
  outline: 0;
  font-size: 100%;
  vertical-align: baseline;
  background: transparent;
}
body {
  line-height: 1;
}
ol, ul {
  list-style: none;
}
blockquote, q {
  quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
  content: '';
  content: none;
}

/* remember to define focus styles! */
:focus {
  outline: 0;
}

/* remember to highlight inserts somehow! */
ins {
  text-decoration: none;
}
del {
  text-decoration: line-through;
}

/* tables still need 'cellspacing="0"' in the markup */
table {
  border-collapse: collapse;
  border-spacing: 0;
}

/* End Reset */

body {
  color: #555555;
  background-color: #ffffff;
  font-family: 'Helvetica', 'Arial', sans-serif;
  font-size: 18px;
  line-height: 27px;
  padding: 27px 72px;
}
p {
  margin-bottom: 27px;
}
h1 {
  font-style: normal;
  font-variant: normal;
  font-weight: normal;
  font-family: 'Helvetica', 'Arial', sans-serif;
  font-size: 36px;
  line-height: 54px;
  margin-bottom: 0px;
}
h2 {
  font-style: normal;
  font-variant: normal;
  font-weight: normal;
  font-family: 'Monaco', 'Andale Mono', 'Consolas', 'Inconsolata', 'Courier New', monospace;
  font-size: 14px;
  line-height: 27px;
  margin-top: 0px;
  margin-bottom: 54px;
  letter-spacing: 0.1em;
  text-transform: none;
  text-shadow: rgba(204, 204, 204, 0.75) 0px 1px 0px;
}
#output h3 {
  font-style: normal;
  font-variant: normal;
  font-weight: bold;
  font-size: 18px;
  line-height: 27px;
  margin: 27px 0px;
}
#output h3:first-child {
  margin-top: 0px;
}
ul, ol, dl {
  margin-bottom: 27px;
}
li {
  margin: 0px 0px;
}
form {
  float: left;
  display: block;
}
form label, form input, form textarea {
  font-family: 'Monaco', 'Andale Mono', 'Consolas', 'Inconsolata', 'Courier New', monospace;
  display: block;
}
form label {
  margin-bottom: 5px;
}
form input {
  width: 300px;
  font-size: 14px;
  padding: 5px;
}
form textarea {
  height: 150px;
  min-height: 150px;
  width: 300px;
  min-width: 300px;
  max-width: 300px;
}
#output {
  font-family: 'Monaco', 'Andale Mono', 'Consolas', 'Inconsolata', 'Courier New', monospace;
  display: inline-block;
  margin-left: 27px;
  padding: 27px;
  border: 1px dotted #555555;
  width: 1120px;
  max-width: 100%;
  min-height: 600px;
}
#output pre {
  overflow: auto;
}
a {
  color: #000000;
  text-decoration: none;
  border-bottom: 1px dotted rgba(112, 56, 56, 0.0);
}
a:hover {
  -webkit-transition: all 0.3s linear;
  color: #703838;
  border-bottom: 1px dotted rgba(112, 56, 56, 1.0);
}
p a {
  border-bottom: 1px dotted rgba(0, 0, 0, 1.0);
}
h1, h2 {
  color: #000000;
}
h3, h4, h5, h6 {
  color: #333333;
}
.block {
  display: block;
}
button {
  margin-bottom: 72px;
  padding: 7px 11px;
  font-size: 14px;
}
CSS

JAVASCRIPT = <<-JAVASCRIPT
  var uriTimeout = null;
  $(document).ready(function () {
    $('#output').hide();
    var rpcName = $('#rpc-name').text().trim();
    var serviceId = $('#service-id').text().trim();
    var getParameters = function() {
      var parameters = {};
      var fields = $('.parameter').parents('li');
      for (var i = 0; i < fields.length; i++) {
        var input = $(fields[i]).find('input');
        var label = $(fields[i]).find('label');
        if (input.val() && input.val() != "") {
          parameters[label.text()] = input.val();
        }
      }
      return parameters;
    }
    var updateOutput = function (event) {
      var request = $('#request').text().trim();
      var response = $('#response').text().trim();
      if (request != '' || response != '') {
        $('#output').show();
      } else {
        $('#output').hide();        
      }
    }
    var handleUri = function (event) {
      updateOutput(event);
      if (uriTimeout) {
        clearTimeout(uriTimeout);
      }
      uriTimeout = setTimeout(function () {
        $.ajax({
          "url": "/template/" + serviceId + "/" + rpcName + "/",
          "data": getParameters(),
          "dataType": "text",
          "ifModified": true,
          "success": function (data, textStatus, xhr) {
            updateOutput(event);
            if (textStatus == 'success') {
              $('#uri-template').html(data);
              if (uriTimeout) {
                clearTimeout(uriTimeout);
              }
            }
          }
        });
      }, 350);
    }
    var getResponse = function (event) {
      $.ajax({
        "url": "/response/" + serviceId + "/" + rpcName + "/",
        "type": "POST",
        "data": getParameters(),
        "dataType": "html",
        "ifModified": true,
        "success": function (data, textStatus, xhr) {
          if (textStatus == 'success') {
            $('#response').text(data);
          }
          updateOutput(event);
        }
      });
    }
    var getRequest = function (event) {
      $.ajax({
        "url": "/request/" + serviceId + "/" + rpcName + "/",
        "type": "GET",
        "data": getParameters(),
        "dataType": "html",
        "ifModified": true,
        "success": function (data, textStatus, xhr) {
          if (textStatus == 'success') {
            $('#request').text(data);
            updateOutput(event);
            getResponse(event);
          }
        }
      });
    }
    var transmit = function (event) {
      $('#request').html('');
      $('#response').html('');
      handleUri(event);
      updateOutput(event);
      getRequest(event);
    }
    $('form').submit(function (event) { event.preventDefault(); });
    $('button').click(transmit);
    $('.parameter').keyup(handleUri);
    $('.parameter').blur(handleUri);
  });
JAVASCRIPT

def client
  @client ||= Google::APIClient.new(
    :service => 'buzz',
    :authorization => Signet::OAuth1::Client.new(
      :temporary_credential_uri =>
        'https://www.google.com/accounts/OAuthGetRequestToken',
      :authorization_uri =>
        'https://www.google.com/buzz/api/auth/OAuthAuthorizeToken',
      :token_credential_uri =>
        'https://www.google.com/accounts/OAuthGetAccessToken',
      :client_credential_key => 'anonymous',
      :client_credential_secret => 'anonymous'
    )
  )
end

def service(service_name, service_version)
  unless service_version
    service_version = client.latest_service(service_name).version
  end
  client.discovered_service(service_name, service_version)
end

get '/template/:service/:method/' do
  service_name, service_version = params[:service].split("-", 2)
  method = service(service_name, service_version).to_h[params[:method].to_s]
  parameters = method.parameters.inject({}) do |accu, parameter|
    accu[parameter] = params[parameter.to_sym] if params[parameter.to_sym]
    accu
  end
  uri = Addressable::URI.parse(
    method.uri_template.partial_expand(parameters).pattern
  )
  template_variables = method.uri_template.variables
  query_parameters = method.normalize_parameters(parameters).reject do |k, v|
    template_variables.include?(k)
  end
  if query_parameters.size > 0
    uri.query_values = (uri.query_values || {}).merge(query_parameters)
  end
  # Normalization is necessary because of undesirable percent-escaping
  # during URI template expansion
  return uri.normalize.to_s.gsub('%7B', '{').gsub('%7D', '}')
end

get '/request/:service/:method/' do
  service_name, service_version = params[:service].split("-", 2)
  method = service(service_name, service_version).to_h[params[:method].to_s]
  parameters = method.parameters.inject({}) do |accu, parameter|
    accu[parameter] = params[parameter.to_sym] if params[parameter.to_sym]
    accu
  end
  body = ''
  request = client.generate_request(
    method, parameters.merge("pp" => "1"), body, [], {:signed => false}
  )
  method, uri, headers, body = request
  merged_body = StringIO.new
  body.each do |chunk|
    merged_body << chunk
  end
  merged_body.rewind
  <<-REQUEST.strip
#{method} #{uri} HTTP/1.1

#{(headers.map { |k,v| "#{k}: #{v}" }).join('\n')}

#{merged_body.string}
REQUEST
end

post '/response/:service/:method/' do
  require 'rack/utils'
  service_name, service_version = params[:service].split("-", 2)
  method = service(service_name, service_version).to_h[params[:method].to_s]
  parameters = method.parameters.inject({}) do |accu, parameter|
    accu[parameter] = params[parameter.to_sym] if params[parameter.to_sym]
    accu
  end
  body = ''
  response = client.execute(
    method, parameters.merge("pp" => "1"), body, [], {:signed => false}
  )
  status, headers, body = response
  status_message = Rack::Utils::HTTP_STATUS_CODES[status.to_i]
  merged_body = StringIO.new
  body.each do |chunk|
    merged_body << chunk
  end
  merged_body.rewind
  <<-RESPONSE.strip
#{status} #{status_message}

#{(headers.map { |k,v| "#{k}: #{v}" }).join("\n")}

#{merged_body.string}
RESPONSE
end

get '/explore/:service/' do
  service_name, service_version = params[:service].split("-", 2)
  service_version = service(service_name, service_version).version
  variables = {
    "css" => CSS,
    "service_name" => service_name,
    "service_version" => service_version,
    "methods" => service(service_name, service_version).to_h.keys.sort
  }
  Liquid::Template.parse(<<-HTML).render(variables)
<!DOCTYPE html>
<html>
  <head>
    <title>{{service_name}}</title>
    <style type="text/css">
      {{css}}
    </style>
  </head>
  <body>
    <h1>{{service_name}}</h1>
    <ul>
      {% for method in methods %}
        <li>
          <a href="/explore/{{service_name}}-{{service_version}}/{{method}}/">
            {{method}}
          </a>
        </li>
      {% endfor %}
    </ul>
  </body>
</html>
  HTML
end

get '/explore/:service/:method/' do
  service_name, service_version = params[:service].split("-", 2)
  service_version = service(service_name, service_version).version
  method = service(service_name, service_version).to_h[params[:method].to_s]
  variables = {
    "css" => CSS,
    "javascript" => JAVASCRIPT,
    "http_method" => (method.description['httpMethod'] || 'GET'),
    "service_name" => service_name,
    "service_version" => service_version,
    "method" => params[:method].to_s,
    "required_parameters" =>
      method.required_parameters,
    "optional_parameters" =>
      method.optional_parameters.sort,
    "template" => method.uri_template.pattern
  }
  Liquid::Template.parse(<<-HTML).render(variables)
<!DOCTYPE html>
<html>
  <head>
    <title>{{service_name}} - {{method}}</title>
    <style type="text/css">
      {{css}}
    </style>
    <script
      src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"
      type="text/javascript">
    </script>
    <script type="text/javascript">
      {{javascript}}
    </script>
  </head>
  <body>
    <h3 id="service-id">
      <a href="/explore/{{service_name}}-{{service_version}}/">
        {{service_name}}-{{service_version}}
      </a>
    </h3>
    <h1 id="rpc-name">{{method}}</h1>
    <h2>{{http_method}} <span id="uri-template">{{template}}</span></h2>
    <form>
      <ul>
        {% for parameter in required_parameters %}
          <li>
            <label for="param-{{parameter}}">{{parameter}}</label>
            <input id="param-{{parameter}}" name="param-{{parameter}}"
              class="parameter" type="text" />
          </li>
        {% endfor %}
        {% for parameter in optional_parameters %}
          <li>
            <label for="param-{{parameter}}">{{parameter}}</label>
            <input id="param-{{parameter}}" name="param-{{parameter}}"
              class="parameter" type="text" />
          </li>
        {% endfor %}
        {% if http_method != 'GET' %}
        <li>
          <label for="http-body">body</label>
          <textarea id="http-body" name="http-body"></textarea>
        </li>
        {% endif %}
      </ul>
      <button>Transmit</button>
    </form>
    <div id="output">
      <h3>Request</h3>
      <pre id="request"></pre>
      <h3>Response</h3>
      <pre id="response"></pre>
    </div>
  </body>
</html>
  HTML
end

get '/favicon.ico' do
  require 'httpadapter'
  HTTPAdapter.transmit(
    ['GET', 'http://www.google.com/favicon.ico', [], ['']],
    HTTPAdapter::NetHTTPRequestAdapter
  )
end
