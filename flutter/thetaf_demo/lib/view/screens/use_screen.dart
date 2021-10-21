import 'package:flutter/material.dart';
import 'package:thetaf/thetaf.dart';

class UseScreen extends StatelessWidget {
  const UseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Camera Usage')),
        body: ThetaWindow(
            child: Column(
          children: [
            const ThumbWindow(flex: 5),
            Padding(
              padding: const EdgeInsets.all(60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  TakePictureButton(),
                  ExposureProgramButton(),
                ],
              ),
            ),
          ],
        )));
  }
}
