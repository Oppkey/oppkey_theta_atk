import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta/theta.dart';
import 'package:thetaf/src/model/video_notifier.dart';

class GetLivePreviewButton extends StatelessWidget {
  final ButtonStyle? style;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip clipBehavior;

  const GetLivePreviewButton({
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
          context.read<VideoNotifier>().setVideoRunning(true);
          try {
            context.read<VideoNotifier>().controller.close;
          } catch (error) {
            print('controller already closed');
            print(error);
          }
          context.read<VideoNotifier>().setController(StreamController());
          Preview.getLivePreview(
              frames: -1,
              controller: Provider.of<VideoNotifier>(context, listen: false)
                  .controller);
        },
        child: const Text('Preview'));
  }
}
