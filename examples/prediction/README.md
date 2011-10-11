APIs Console Project Setup
--------------------------
If you have not yet, you must set your APIs Console project to enable Prediction
API and Google Storage. Go to APIs Console https://code.google.com/apis/console/
and select the project you want to use. Next, go to Services, and enable both
Prediction API and Google Storage. You may also need to enable Billing (Billing)
in the left menu.


Data Setup
----------
Before you can run the prediction sample prediction.rb, you must load some csv
formatted data into Google Storage. 

1 - You must first create the bucket you want to use. This can be done 
with the gsutil function or via the web UI (Storage Access) in the Google 
APIs Console. i.e. 

    $ gsutil mb gs://BUCKET

OR

Go to APIs Console -> Storage Access (on left) and the Google Storage Manager,
and create your bucket there.

2 - We now load the data you want to use to Google Storage. We have supplied a
basic language identification dataset in the sample for testing.

    $ chmod 744 setup.sh
    $ ./setup.sh BUCKET/OBJECT
Note you need gsutil in your path for this to work.

If you have your own dataset, you can do this manually as well.

    $ gsutil cp your_dataset.csv gs://BUCKET/your_dataset.csv


In the script, you must then modify the datafile string. This must correspond with the
bucket/object of your dataset (if you are using your own dataset). We have
provided a setup.sh which will upload some basic sample data. The section is
near the bottom of the script, under 'FILL IN DATAFILE'

API Setup
---------
We need to allow the application to use your API access. Go to APIs Console
https://code.google.com/apis/console, and select the project you want, go to API
Access, and create an OAuth2 client if you have not yet already. You should
generate a client ID and secret. 

This example will run through the server-side example, where the application
gets authorization ahead of time, which is the normal use case for Prediction
API. You can also set it up so the user can grant access.

First, run the google-api script to generate access and refresh tokens. Ex.

    $ cd google-api-ruby-client
    $ google-api oauth-2-login --scope=https://www.googleapis.com/auth/prediction --client-id=NUMBER.apps.googleusercontent.com --client-secret=CLIENT_SECRET

Fill in your client-id and client-secret from the API Access page. You will
probably have to set a redirect URI in your client ID
(ex. http://localhost:12736/). You can do this by hitting 'Edit settings' in the
API Access / Client ID section, and adding it to Authorized Redirect URIs. Not
that this has to be exactly the same URI, http://localhost:12736 and
http://localhost:12736/ are not the same in this case.

This should pop up a browser window, where you grant access. This will then
generate a ~/.google-api.yaml file. You have two options here, you can either
copy the the information directly in your code, or you can store this as a file
and load it in the sample as a yaml. In this example we do the latter. NOTE: if
you are loading it as a yaml, ensure you rename/move the file, as the
~/.google-api.yaml file can get overwritten. The script will work as is if you
move the .google-api.yaml file to the sample directory.


Usage
-----
At this, point, you should have 
 - Enabled your APIs Console account
 - Created a storage bucket, if required
 - Uploaded some data to Google Storage
 - Modified the script to point the 'datafile' variable to the BUCKET/OBJECT name
 - Modified the script to put your credentials in, either in the code or by
   loading the generated .yaml file
 
We can now run the service! 

    $ ruby prediction.rb

This should start a service on `http://localhost:4567`. When you hit the service,
your ruby logs should show the Prediction API calls, and print the prediction
output in the debug. 

This sample currently does not cover some newer features of Prediction API such
as streaming training, hosted models or class weights. If there are any
questions or suggestions to improve the script please email us at
prediction-api-discuss@googlegroups.com.
