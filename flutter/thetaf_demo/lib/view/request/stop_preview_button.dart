import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thetaf_demo/model/video_notifier.dart';
import 'package:theta/theta.dart';

class StopPreviewButton extends StatelessWidget {
  const StopPreviewButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {
          context.read<VideoNotifier>().setVideoRunning(false);
          Preview.stopPreview();
        },
        child: const Text('stop preview'));
  }
}
