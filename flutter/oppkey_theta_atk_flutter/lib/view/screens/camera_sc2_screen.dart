import 'package:flutter/material.dart';
import 'package:thetaf/thetaf.dart';

class CameraSC2Screen extends StatelessWidget {
  const CameraSC2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SC2 Specific Options'),
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
