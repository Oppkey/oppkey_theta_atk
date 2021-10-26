import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thetaf/thetaf.dart';
import 'package:oppkey_theta_atk_flutter/model/video_notifier.dart';
import 'package:oppkey_theta_atk_flutter/view/request/get_live_preview_button.dart';
import 'package:oppkey_theta_atk_flutter/view/request/stop_preview_button.dart';

class PreviewScreen extends StatelessWidget {
  const PreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('live preview')),
      body: Column(
        children: [
          Expanded(
              flex: 8,
              child: LivePreview(context.watch<VideoNotifier>().controller)),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                GetLivePreviewButton(),
                StopPreviewButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
