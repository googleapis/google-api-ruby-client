## Media Upload

For APIs that support file uploads, two additional keyword parameters are available on the method. The parameter upload_source specifies the content to upload while content_type indicates the MIME type. The upload source may be either a file name, IO, or StringIO instance.

For example, to upload a file named 'mymovie.m4v' to Google Drive:

```rb
require 'google/apis/drive_v2'

drive = Google::Apis::DriveV2:DriveService.new
drive.authorization = ...
drive.insert_file({title: 'My Favorite Movie'}, upload_source: 'mymovie.m4v',
                  content_type: 'video/mp4')
```

## Resumable media

For large media files, you can use resumable media uploads to send files, which allows files to be uploaded in smaller chunks. This is especially useful if you are transferring large files, and the likelihood of a network interruption or some other transmission failure is high. It can also reduce your bandwidth usage in the event of network failures because you don't have to restart large file uploads from the beginning.

To use resumable uploads, enable retries by setting the retry count to any value greater than 0. The client will automatically resume the upload in the event of an error, up to the configured number of retries.:

```rb
drive.insert_file(file_metadata, upload_source: 'mymovie.m4v',
                  content_type: 'video/mp4', options: { retries: 3 } )
```
