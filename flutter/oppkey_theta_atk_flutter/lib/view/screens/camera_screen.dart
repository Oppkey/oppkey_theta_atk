import 'package:flutter/material.dart';
import 'package:thetaf/thetaf.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Camera Screen')),
        body: ThetaWindow(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const ResponseWindow(flex: 4),
              // This row contains basic camera information commands
              Expanded(
                flex: 6,
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SetModeImageButton(),
                        SetModeVideoButton(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        StartVideoCaptureButton(),
                        StopVideoCaptureButton(),
                      ],
                    ),

                    //This row is for controlling sleep settings.
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        DisableSleepDelayButton(),
                        EnableSleepDelayButton(),
                      ],
                    ),
                    //This rows is for controlling power off settings.
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        EnablePowerOffButton(),
                        DisablePowerOffButton(),
                      ],
                    ),

                    //This row contains commands that heavily change camera data or settings.
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DeleteAllFilesButton(
                          style: ButtonStyle(
                            textStyle: MaterialStateProperty.all<TextStyle>(
                              const TextStyle(fontSize: 16),
                            ),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                          ),
                        ),
                        ResetButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                          ),
                        ),
                        // const DeleteAllImagesButton(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DeleteAllVideosButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                          ),
                        ),
                      ],
                    ),

                    //This row is for getting information on files in the camera.
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        List5FilesButton(),
                        List5VideosButton(),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )));
  }
}
