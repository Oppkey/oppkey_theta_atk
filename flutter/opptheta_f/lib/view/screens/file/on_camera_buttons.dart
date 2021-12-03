import 'package:flutter/material.dart';
import 'package:thetaf/thetaf.dart';

class OnCameraButtons extends StatelessWidget {
  const OnCameraButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'On Camera: ',
          style: TextStyle(color: Colors.white),
        ),
        List5FilesButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
        ),
        List5VideosButton(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
        ),
      ],
    );
  }
}
