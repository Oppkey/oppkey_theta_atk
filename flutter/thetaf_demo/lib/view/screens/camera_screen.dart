import 'package:flutter/material.dart';
import 'package:thetaf/thetaf.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Camera Screen')),
        body: ThetaWindow(
            child: Column(
          children: [
            const ResponseWindow(flex: 5),
            Padding(
              padding: const EdgeInsets.all(60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  InfoButton(),
                  ResetButton(),
                  DisableSleepDelayButton(),
                ],
              ),
            ),
          ],
        )));
  }
}
