import 'package:flutter/material.dart';
import 'package:thetaf/thetaf.dart';

class FileScreen extends StatelessWidget {
  const FileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ThetaWindow(
        child: Column(
          children: [
            const ResponseWindow(flex: 5),
            Expanded(
                flex: 5,
                child: Column(
                  children: [
                    Container(
                      color: Colors.blueGrey,
                      child: Row(
                        children: [
                          const Text('On Camera: '),
                          List5FilesButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                          ),
                          const List5VideosButton(),
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
