import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:thetaf/src/model/video_notifier.dart';
import 'package:provider/provider.dart';

class LivePreview extends StatefulWidget {
  const LivePreview({Key? key}) : super(key: key);
  // final StreamController controller;

  @override
  _LivePreviewState createState() => _LivePreviewState();
}

class _LivePreviewState extends State<LivePreview> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream:
          Provider.of<VideoNotifier>(context, listen: false).controller.stream,
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
