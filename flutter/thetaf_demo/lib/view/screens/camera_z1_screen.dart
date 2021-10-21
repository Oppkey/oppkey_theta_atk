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
          child: Column(
        children: [
          const ResponseWindow(flex: 8),
          Row(
            children: const [InfoButton()],
          )
        ],
      )),
    );
  }
}
