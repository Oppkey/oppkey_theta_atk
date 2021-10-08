import 'dart:async';

import 'package:flutter/material.dart';
import 'package:oppkey_theta_atk_flutter/models/response_notifier.dart';
import 'package:oppkey_theta_atk_flutter/models/video_notifier.dart';
import 'package:provider/src/provider.dart';
import 'package:theta/theta.dart';

class MainButtons extends StatelessWidget {
  const MainButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            OutlinedButton(
              onPressed: () async {
                var response = await ThetaBase.get('info');
                context.read<ResponseNotifier>().setResponseText(response);
                print(response);
              },
              child: const Text('info'),
            ),
            OutlinedButton(
              onPressed: () {
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
                    controller:
                        Provider.of<VideoNotifier>(context, listen: false)
                            .controller);
              },
              child: const Text('stream'),
            ),
            OutlinedButton(
                onPressed: () {
                  context.read<VideoNotifier>().setVideoRunning(false);
                  Preview.stopPreview();
                },
                child: const Text('stop video'))
          ],
        ));
  }
}
