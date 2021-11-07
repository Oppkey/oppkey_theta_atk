import 'dart:async';
import 'package:flutter/material.dart';
import 'package:oppkey_theta_atk_flutter/model/response_notifier.dart';
import 'package:oppkey_theta_atk_flutter/model/video_notifier.dart';
import 'package:provider/provider.dart';
import 'package:theta/theta.dart';

class HomeButtons extends StatelessWidget {
  final int flex;
  final bool row;
  const HomeButtons({
    required this.flex,
    this.row = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var buttons = [
      OutlinedButton(
        onPressed: () async {
          var response = await ThetaBase.get('info');
          context.read<ResponseNotifier>().setResponseText(response);
        },
        child: const Text('info'),
      ),
      OutlinedButton(
        onPressed: () {
          context.read<VideoNotifier>().setVideoRunning(true);
          try {
            context.read<VideoNotifier>().controller.close;
          } catch (error) {
            // print('controller already closed');
            // print(error);
          }
          context.read<VideoNotifier>().setController(StreamController());
          bool sc2Experiment = context.read<VideoNotifier>().sc2Experiment;
          sc2Experiment
              ? Sc2Preview.getLivePreview(
                  frames: -1,
                  frameDelay: 250,
                  controller: Provider.of<VideoNotifier>(context, listen: false)
                      .controller)
              : Preview.getLivePreview(
                  frames: -1,
                  controller: Provider.of<VideoNotifier>(context, listen: false)
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
    ];
    return Expanded(
      flex: flex,
      child: row
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: buttons,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: buttons,
            ),
    );
  }
}
