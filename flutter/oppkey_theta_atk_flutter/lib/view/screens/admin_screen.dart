import 'package:flutter/material.dart';
import 'package:thetaf/thetaf.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin'),
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
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                      'The following options delete data and can not be undone. Use with caution.'),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    // color: Colors.pink,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DeleteAllFilesButton(
                          label: 'DELETE EVERYTHING',
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
                  const Text('The following options are useful for testing.'),
                  const SizedBox(
                    height: 10,
                  ),
                  //This row is for controlling power off settings.
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        EnablePowerOffButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.lightGreen),
                          ),
                        ),
                        DisablePowerOffButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.lightGreen),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DisableSleepDelayButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.lightGreen),
                        ),
                      ),
                      EnableSleepDelayButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.lightGreen),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(
                    height: 30,
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
