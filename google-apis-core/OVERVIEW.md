# Generator for Google REST Clients

This library implements the code generator used by legacy REST clients for
Google APIs. It automatically generates client gems given discovery documents.
Google-managed clients for publicly-available APIs are maintained using this
tool, and users may also use it to generate clients for private or early-access
APIs.

## Usage

To generate from a local discovery file:

    $ generate-api gen <outdir> --file=<path>

A URL can also be specified:

    $ generate-api gen <outdir> --url=<url>

## License

This library is licensed under Apache 2.0. Full license text is available in the {file:LICENSE.md LICENSE}.

## Support

Please [report bugs at the project on Github](https://github.com/google/google-api-ruby-client/issues). Don't hesitate to [ask questions](http://stackoverflow.com/questions/tagged/google-api-ruby-client) about the client or APIs on [StackOverflow](http://stackoverflow.com).
