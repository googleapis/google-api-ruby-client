# Monolithic Client for Google APIs (DEPRECATED)

This library includes REST clients for all public [Discovery]((https://developers.google.com/discovery))-based Google APIs as of December 2020.

This library is **deprecated** and will likely not be updated further. Instead, please install the gem corresponding to the specific service you want to use. For example, to use the Google Drive V3 client, install the `google-apis-drive_v3` gem. To use the code generator, install the `google-apis-generator` gem.

## FAQ

### Why is this gem deprecated?

The `google-api-client` gem is a 75 megabyte installation including client classes for more than 300 services. Although the library is designed so that only the classes being used are loaded into memory, it still takes a nontrivial amount of space on disk (and in deployments), and can take a while to install. Additionally, the class reference documentation is so large that rubydoc.info often fails to build it.

Because few applications would use more than one or two of the included clients at a time, it was decided to release a separate gem for each client.

### How do I find the service-specific gem to use instead?

The service-specific gems are all named according to the pattern: `google-apis-<servicename>_<serviceversion>`. For example, `google-apis-drive_v3` or `google-apis-billingbudgets_v1beta1`. If you already have code that uses a client class, it's very straightforward: Look for the `require 'google/apis/servicenameandversion'` statement in your code, and replace slashes with dashes in the path, and you'll have the gem name.

### Are the service-specific gems drop-in compatible?

Yes, the client code has been copied as-is into the separate clients. The common code has been extracted as-is into a separate gem `google-apis-core` which is a dependency. So all existing usage should remain the same. You can simply replace `google-api-client` with the appropriate individual client libraries in your Gemfile, and your existing code should work as before (just with a much smaller dependency).

### I still need to use the code generator. What should I do?

The code generator has been extracted into the `google-apis-generator` gem, and you should use that gem from now on to build custom clients for private, partner, and early-access APIs. Note that the generator has been modified to build an entire client gem as opposed to just client classes (although you can simply copy the relevant Ruby files into your own code if you do not want a separate gem.)

### This library is a dependency of a library I use. What should I do?

Some third-party libraries take a dependency on `google-api-client` to communicate with Google APIs. These libraries should be updated to depend instead on the individual service gems they need. Please contact the library maintainer.

### A documentation page or tutorial is directing me to install this library. Should I?

You should instead install the individual gems corresponding to the specific service and service version. (For example, to use the Google Drive V3 client, install the `google-apis-drive_v3` gem.)

Please contact the owners of the documentation or tutorial that is referencing the old `google-api-client` gem and ask them to update their content. For documentation on the developers.google.com or cloud.google.com sites, look for a "Send Feedback" button toward the upper right of the page.

### Can I still use google-api-client anyway?

We will not delete this gem, _but_ it will likely not be updated any further. So it will not reflect any future updates to the API surface, and if you report issues, we will direct you to use the appropriate service-specific gem instead.

### Where is the documentation?

Reference documentation is now available separately for each service-specific gem. Reference documentation for common classes (such as `RequestOptions`) is connected to the common gem `google-apis-core`.

Basic usage documentation is provided with each service-specific gem. Some more detailed documentation including how to implement OAuth flows, is available in the [docs directory of the repo](https://github.com/googleapis/google-api-ruby-client/tree/main/docs).
