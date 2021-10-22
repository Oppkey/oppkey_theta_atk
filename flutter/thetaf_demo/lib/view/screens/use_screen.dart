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
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    TakePictureButton(),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [SetModeImageButton(), SetModeVideoButton()],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  children: const [
                    ShowThumbButton(),
                    HideThumbButton(
                      label: 'log',
                    )
                  ],
                ),
              )
            ],
          ),
        )));
  }
}
