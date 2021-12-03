import 'package:flutter/material.dart';
import 'package:thetaf/thetaf.dart';

class UseScreen extends StatelessWidget {
  const UseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Camera Usage')),
        body: ThetaWindow(
            child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const ThumbWindow(flex: 8),
              Expanded(
                flex: 8,
                child: ListView(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      TakePictureButton(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      SetModeImageButton(),
                      SetModeVideoButton()
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      ShowThumbButton(),
                      HideThumbButton(
                        label: 'log',
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      StartVideoCaptureButton(),
                      StopVideoCaptureButton(
                        label: 'stop capture',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      StartCaptureButton(
                        label: 'Interval Capture',
                        mode: 'interval',
                      ),
                      StartCaptureButton(
                          label: 'time shift', mode: 'timeShift'),
                    ],
                  )
                ]),
              ),
            ],
          ),
        )));
  }
}
