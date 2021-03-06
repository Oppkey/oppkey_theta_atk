import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:theta/theta.dart';
import 'package:thetaf/src/model/response_notifier.dart';
import 'package:thetaf/src/model/window_notifier.dart';

/// use with [ThumbWindow] to take a picture and then display the thumbnails.
/// [ThumbWindow] combines a [ResponseWindow] with a window that will display
/// the thumbnails that are on the camera.  This function will first wait
/// for the current picture to be processed and then will get the
/// last 5 thumbs, including the thumb for the picture you just took.
/// It will display the status of the current image processing after the
/// shutter is triggered as text messages, then pull the thumb bytes down from the
/// camera and then send the
/// list of 5 thumbs to [ThumbWindow]
Future<void> takePictureThumb(BuildContext context) async {
  Stopwatch stopwatch = Stopwatch();
  stopwatch.start();
  var response = await command('takePicture');
  String responseText = response;
  responseText = responseText +
      '\ncompleted command in ${stopwatch.elapsedMilliseconds} milliseconds '
          '\n Camera still needs to process image and is unavailable for commands ';

  // set screen to text
  Provider.of<WindowNotifier>(context, listen: false).setShowThumbWindow(false);

  Provider.of<ResponseNotifier>(context, listen: false)
      .setResponseText(responseText);
  Map<String, dynamic> responseMap = jsonDecode(response);
  String id = responseMap['id'];

  while (await commandStatus(id) != 'done') {
    await commandStatus(id);
    await Future.delayed(const Duration(milliseconds: 200));
    responseText = responseText +
        '\nCamera processing image. Elapsed time: ${stopwatch.elapsedMilliseconds} milliseconds';
    Provider.of<ResponseNotifier>(context, listen: false)
        .setResponseText(responseText);
  }
  responseText = responseText + '\nCamera is ready for next command';
  String url = await getLastImageUrl();
  // print(url);
  responseText += '\nFile is available at\n$url';
  Provider.of<ResponseNotifier>(context, listen: false)
      .setResponseText(responseText);
  stopwatch.stop();
  List<String> thumbData = await sc2ThumbGetBytes();
  Provider.of<WindowNotifier>(context, listen: false).setThumbData(thumbData);

  Provider.of<WindowNotifier>(context, listen: false).setShowThumbWindow(true);
}
