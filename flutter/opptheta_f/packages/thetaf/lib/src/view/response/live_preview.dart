import 'dart:async';
import 'dart:typed_data';
import 'package:flutter/material.dart';

/// {@category Response}
/// {@category Z1}
/// Shows live preview motion jpeg from the RICOH THETA camera
/// Live preview is a stream and is managed by a [StreamController].
/// You must pass the StreamController.
///
/// See this video
/// for instructions. https://youtu.be/GrexxLqt2ak
///
/// See this code example https://github.com/codetricity/theta_preview_tutorial_2/blob/main/lib/main.dart
///
/// As of version 0.3.0, this does not work with the rest of the package.
/// It will only work as a standalone demo
///
/// Official RICOH API Reference -
/// https://api.ricoh/docs/theta-web-api-v2.1/commands/camera.get_live_preview/
///
class LivePreview extends StatefulWidget {
  const LivePreview(this.controller, {Key? key}) : super(key: key);
  final StreamController controller;

  @override
  _LivePreviewState createState() => _LivePreviewState();
}

class _LivePreviewState extends State<LivePreview> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: widget.controller.stream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          var imageData = Uint8List.fromList(snapshot.data);
          return Image.memory(
            imageData,
            gaplessPlayback: true,
          );
        } else {
          return Container();
        }
      },
    );
  }
}
