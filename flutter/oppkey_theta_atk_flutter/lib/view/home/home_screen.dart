import 'package:flutter/material.dart';
import 'package:oppkey_theta_atk_flutter/model/layout_notifier.dart';
import 'package:oppkey_theta_atk_flutter/model/video_notifier.dart';
import 'package:theta/theta.dart';

import 'home_buttons.dart';
import 'home_response.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Oppkey THETA ATK Demo'),
        backgroundColor: Colors.lightGreen,
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                style: TextButton.styleFrom(primary: Colors.white),
                onPressed: () {
                  Navigator.pushNamed(context, '/file');
                },
                child: const Text('files'),
              ),
              TextButton(
                  onPressed: () {
                    context.read<VideoNotifier>().setVideoRunning(false);
                    Preview.stopPreview();
                    Provider.of<LayoutNotifier>(context, listen: false)
                        .toggleLandscape();
                  },
                  child: Text(context.watch<LayoutNotifier>().landscape
                      ? 'portait'
                      : 'landscape'))
            ],
          ),
          const SizedBox(
            width: 100,
          ),
        ],
      ),
      body: context.watch<LayoutNotifier>().landscape
          ? Row(
              children: [
                HomeButtons(
                  flex: 1,
                  row: false,
                ),
                const HomeResponse(flex: 8),
              ],
            )
          : Column(
              children: [
                const HomeResponse(flex: 8),
                HomeButtons(flex: 1),
              ],
            ),
    );
  }
}
