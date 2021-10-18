# SC2 thumbnail problem

## Problem Description

In testing the THETA WebAPI, we found that getting a listing of thumbnails using the command listFiles works for Z1 and V, but does not for the SC2. The command will show a default list of 10 and can be set to show any number for totalEntries. This does not work for the SC2. Only 1 thumbnail is displayed. 

The command is found here in the RICOH API documentation: [https://api.ricoh/docs/theta-web-api-v2.1/commands/camera.list_files/](https://api.ricoh/docs/theta-web-api-v2.1/commands/camera.list_files/)

## Workaround

There is a workaround. It is possible to loop through the list of files on the camera to manage the thumbnails.

The sequence of actions is:
1. Create http client object
2. Open http connection to camera
3. Grab each thumbnail individually, once per loop 
4. Add bytes of thumbnail into array each time through the loop
5. Close http connection
6. Return array

Example code snippet:

```dart
try {
    // loop through list of urls
    for (var i = 0; i < urls.length; i++) {
        var response =
        await client.get('${urls[i]}?type=thumb', headers: headers);
        print(response.statusCode);
        print('loading file ${i + 1}');
        thumbs.add(response.bodyBytes);
    }
```

## Test Environment

* "firmwareVersion": "01.64"

## Test Procedure

* Run opptheta with the following commands
* Use `info` to confirm firmware version `dart opptheta.dart info`
* Use `listFiles` to see a listing of images on the camera. It will show 10 total. The listing "_thumbSize" will show that thumbnails exist, but it will not show any data. Even though the output shows 10 entries, at the end of the output, it will show totalEntries, indicating how many pictures are on the SC2. `dart opptheta.dart listFiles`
* Add ` --maxThumbSize=640` to show thumbnails. It will only show binary data on the command line. (Add  --maxThumbSize=0 if you want to explicitly exclude thumbnail data.) `dart opptheta.dart listFiles --maxThumbSize=640`

## More Information

* If you'd like a detailed description with code examples, please go to [https://theta360.guide/special/sc2/](https://theta360.guide/special/sc2/) and by entering your email address, you will have access to a wide range of SC2 articles and videos. Under the list of Articles, grab "Getting thumbnails from the RICOH THETA SC2" (PDF).
