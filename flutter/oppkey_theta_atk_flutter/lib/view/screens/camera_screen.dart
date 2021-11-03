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
