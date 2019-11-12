# Performance Tips

This document covers techniques you can use to improve the performance of your application. The documentation for the specific API you are using should have a similar page with more detail on some of these topics. For example, see the Performance Tips page for the Google Drive API.

## Partial response (fields parameter)

By default, the server sends back the full representation of a resource after processing requests. For better performance, you can ask the server to send only the fields you really need and get a partial response instead.

To request a partial response, add the standard fields parameter to any API method. The value of this parameter specifies the fields you want returned. You can use this parameter with any request that returns response data.

In the following code snippet, the list_stamps method of a fictitious Stamps API is called. The cents parameter is defined by the API to only return stamps with the given value. The value of the fields parameter is set to 'count,items/name'code>. The response will only contain stamps whose value is 5 cents, and the data returned will only include the number of stamps found along with the stamp names:

`response = service.list_stamps(cents: 5, fields: 'count,items/name')`

Note how commas are used to delimit the desired fields, and slashes are used to indicate fields that are contained in parent fields. There are other formatting options for the fields parameter, and you should see the "Performance Tips" page in the documentation for the API you are using.

## Partial update (patch)

If the API you are calling supports patch, you can avoid sending unnecessary data when modifying resources. For these APIs, you can call the patch() method and supply the arguments you wish to modify for the resource. If supported, the API's reference will have documentation for the patch() method.

For more information about patch semantics, see the "Performance Tips" page in the documentation for the API you are using.

## Batch

If you are sending many small requests you may benefit from batching, which allows those requests to be bundled into a single HTTP request.
