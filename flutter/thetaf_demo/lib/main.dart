import 'package:flutter/material.dart';
import 'package:thetaf/thetaf.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ThetaWindow(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Column(
              children: [
                const ResponseWindow(
                  flex: 5,
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      StateButton(),
                      InfoButton(),
                      TakePictureButton()
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: const [GetOptionsButton()],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
