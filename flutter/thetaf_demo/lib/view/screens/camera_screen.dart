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
              const ResponseWindow(flex: 5),
              // This row contains basic camera information commands
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  InfoButton(),
                  SetModeImageButton(),
                  SetModeVideoButton(),
                  StartVideoCaptureButton(),
                  StopVideoCaptureButton(),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              //This row is for controlling sleep settings.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  DisableSleepDelayButton(),
                  EnableSleepDelayButton(),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              //This rows is for controlling power off settings.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  EnablePowerOffButton(),
                  DisablePowerOffButton(),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              //This row contains commands that heavily change camera data or settings.
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  DeleteAllFilesButton(),
                  DeleteAllImagesButton(),
                  DeleteAllVideosButton(),
                  ResetButton(),
                ],
              ),
              const SizedBox(
                height: 30,
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
        )));
  }
}
