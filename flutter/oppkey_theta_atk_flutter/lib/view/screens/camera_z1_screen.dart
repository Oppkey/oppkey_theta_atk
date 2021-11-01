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
            const SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 8,
              child: ListView(
                children: [
                  const Text(
                      'To set aperture, exposureProgram must be set to Manual or Aperture Priority'),
                  Row(
                    children: const [
                      ExposureProgramButton(),
                    ],
                  ),
                  Container(
                    color: Colors.blueAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SetAperture0Button(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blueGrey),
                          ),
                        ),
                        SetAperture2dot1Button(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blueGrey),
                          ),
                        ),
                        SetAperture3dot5Button(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blueGrey),
                          ),
                        ),
                        SetAperture5dot6Button(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blueGrey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      'You can enable or disable video stitching on the Z1. If disabled, the video is recorded in dual fisheye (two hemispheres).'),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.blueAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        EnableVideoStitchingButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blueGrey),
                          ),
                        ),
                        DisableVideoStitchingButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blueGrey),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      'You can set the _filter option which controls the image processing filter. The Handheld HDR value, good for reducing a small about of shakiness in an image, can only be used with the Z1. Make sure mode is set to image.'),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.blueAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SetFilterHhhdrButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blueGrey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
