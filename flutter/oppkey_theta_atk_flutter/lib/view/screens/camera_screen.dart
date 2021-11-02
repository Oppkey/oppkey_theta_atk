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
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                        'You can set exposureCompensation. Here are 5 example settings.'),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SetExposureCompensationneg2Button(
                            label: '-2',
                            style: ButtonStyle(
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                const TextStyle(fontSize: 16),
                              ),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.lightGreen),
                            ),
                          ),
                          SetExposureCompensationneg1Button(
                            label: '-1',
                            style: ButtonStyle(
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                const TextStyle(fontSize: 16),
                              ),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.lightGreen),
                            ),
                          ),
                          SetExposureCompensation0Button(
                            label: '0',
                            style: ButtonStyle(
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                const TextStyle(fontSize: 16),
                              ),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.lightGreen),
                            ),
                          ),
                          SetExposureCompensation1Button(
                            label: '1',
                            style: ButtonStyle(
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                const TextStyle(fontSize: 16),
                              ),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.lightGreen),
                            ),
                          ),
                          SetExposureCompensation2Button(
                            label: '2',
                            style: ButtonStyle(
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                const TextStyle(fontSize: 16),
                              ),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.lightGreen),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                        'You can set _filter to control images settings.'),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SetFilterOffButton(
                            label: 'OFF',
                            style: ButtonStyle(
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                const TextStyle(fontSize: 16),
                              ),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.lightBlue),
                            ),
                          ),
                          SetFilterHdrButton(
                            label: 'HDR',
                            style: ButtonStyle(
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                const TextStyle(fontSize: 16),
                              ),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.lightBlue),
                            ),
                          ),
                          SetFilterDrcompButton(
                            label: 'DR Comp',
                            style: ButtonStyle(
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                const TextStyle(fontSize: 16),
                              ),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.lightBlue),
                            ),
                          ),
                          SetFilterNoiseReductionButton(
                            label: 'Noise Reduction',
                            style: ButtonStyle(
                              textStyle: MaterialStateProperty.all<TextStyle>(
                                const TextStyle(fontSize: 16),
                              ),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.lightBlue),
                            ),
                          ),
                        ],
                      ),
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
