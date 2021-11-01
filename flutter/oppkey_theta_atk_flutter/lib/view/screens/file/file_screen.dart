import 'package:flutter/material.dart';
import 'package:thetaf/thetaf.dart';

import 'on_camera_buttons.dart';

class FileScreen extends StatelessWidget {
  const FileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera and device files'),
      ),
      body: ThetaWindow(
        child: Column(
          children: [
            const ResponseWindow(flex: 5),
            Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Container(
                      color: Colors.blueGrey,
                      child: const OnCameraButtons(),
                    ),
                    Row(
                      children: [DownloadButton()],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
