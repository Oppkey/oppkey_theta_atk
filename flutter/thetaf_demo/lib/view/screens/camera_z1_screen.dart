import 'package:flutter/material.dart';
import 'package:thetaf/thetaf.dart';

class CameraZ1Screen extends StatelessWidget {
  const CameraZ1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Z1 Specific Options'),
      ),
      body: ThetaWindow(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // showing example of adding color to the
            // base ResponseWindow
            const ResponseWindow(
                backgroundColor: Colors.blueGrey,
                textColor: Color(0xfff5f5f5),
                fontSize: 24.0,
                flex: 8),
            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  InfoButton(),
                  ExposureProgramButton(),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
