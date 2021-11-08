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
          Expanded(
            flex: 8,
            child: ListView(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                    'For SC2, you can set _preset for face, nightView, lensbylensExposure. For SC2B, you can set room.'),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    EnablePresetFaceButton(
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          const TextStyle(fontSize: 16),
                        ),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.lightGreen),
                      ),
                    ),
                    EnablePresetNightviewButton(
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          const TextStyle(fontSize: 16),
                        ),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.lightGreen),
                      ),
                    ),
                    EnablePresetLensbylensexposureButton(
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          const TextStyle(fontSize: 16),
                        ),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.lightGreen),
                      ),
                    ),
                    EnablePresetRoomButton(
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          const TextStyle(fontSize: 16),
                        ),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.lightGreen),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
