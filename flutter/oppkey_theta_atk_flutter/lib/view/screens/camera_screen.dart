import 'package:flutter/material.dart';
import 'package:thetaf/thetaf.dart';

class CameraScreen extends StatelessWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Camera Settings'),
          backgroundColor: Colors.teal,
        ),
        body: ThetaWindow(
            child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const ResponseWindow(flex: 4),
              Expanded(
                flex: 6,
                child: ListView(
                  children: [
                    //This row is for controlling sleep settings.
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        DisableSleepDelayButton(),
                        EnableSleepDelayButton(),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //This rows is for controlling power off settings.
                    Container(
                      color: Colors.pink,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          EnablePowerOffButton(),
                          DisablePowerOffButton(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //This row contains commands that heavily change camera data or settings.
                    Container(
                      color: Colors.pink,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DeleteAllFilesButton(
                            style: ButtonStyle(
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                const TextStyle(fontSize: 16),
                              ),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.red),
                            ),
                          ),
                          ResetButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.red),
                            ),
                          ),
                          // const DeleteAllImagesButton(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
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
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        EnableVideoStitchingButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.teal),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DisableVideoStitchingButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        EnableVideoStitchingButton(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SetExposureCompensationneg2Button(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SetExposureCompensationneg1Button(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SetExposureCompensation0Button(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SetExposureCompensation1Button(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SetExposureCompensation2Button(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SetFilterOffButton(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SetFilterHdrButton(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SetFilterDrcompButton(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        SetFilterNoiseReductionButton(),
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
