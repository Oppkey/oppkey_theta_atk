import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta/theta.dart';
import 'package:thetaf/src/model/response_notifier.dart';

class DownloadVideoButton extends StatelessWidget {
  final ButtonStyle? style;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip clipBehavior;

  const DownloadVideoButton({
    Key? key,
    this.style,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        onPressed: () async {
          var response = await command('listFiles', parameters: {
            'fileType': 'video',
            'entryCount': 1,
            'maxThumbSize': 0,
          });
          var responseMap = jsonDecode(response);
          String fileUrl = responseMap['results']['entries'][0]['fileUrl'];
          String filename = responseMap['results']['entries'][0]['name'];
          int fileSize = responseMap['results']['entries'][0]['size'];
          String responseText = 'video file name: $filename\n'
              'file url: $fileUrl\n'
              'file size: $fileSize\n';
          Provider.of<ResponseNotifier>(context, listen: false)
              .setResponseText(responseText);
        },
        child: const Text('Download Video'));
  }
}
