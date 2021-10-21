import 'package:flutter/material.dart';
import 'package:thetaf/thetaf.dart';

class ChangeThisNameScreen extends StatelessWidget {
  const ChangeThisNameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title of Screen Here'),
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
