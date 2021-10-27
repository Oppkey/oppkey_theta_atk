import 'package:flutter/material.dart';
import 'package:thetaf/thetaf.dart';
import 'dart:ui';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = window.physicalSize.width;
    var height = window.physicalSize.height;
    bool mobile = width < 1200;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Oppkey thetaf demo - Inspect Camera'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
                title: const Text('file'),
                onTap: () {
                  Navigator.pushNamed(context, '/file');
                }),
            ListTile(
                title: const Text('Camera Settings'),
                onTap: () {
                  Navigator.pushNamed(context, '/camera');
                }),
            ListTile(
                title: const Text('Z1 Settings'),
                onTap: () {
                  Navigator.pushNamed(context, '/cameraz1');
                }),
            ListTile(
                title: const Text('SC2 Settings'),
                onTap: () {
                  Navigator.pushNamed(context, '/camerasc2');
                }),
            ListTile(
                title: const Text('Camera Use'),
                onTap: () {
                  Navigator.pushNamed(context, '/use');
                }),
            ListTile(
                title: const Text('Preview'),
                onTap: () {
                  Navigator.pushNamed(context, '/preview');
                }),
          ],
        ),
      ),
      body: ThetaWindow(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              /// example of using syntax highlighting
              const ThetaSyntaxWindow(
                // fontSize: 22,
                flex: 5,
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    StateButton(
                      fontSize: 40,
                      backgroundColor: Colors.lightGreen,
                      textColor: Colors.white,
                    ),
                    InfoButton(
                      fontSize: 40,
                      backgroundColor: Color(0xffFFB74D),
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Z1GetOptionsButton(
                      fontSize: 40,
                      backgroundColor: Color(0xFF9575CD),
                      textColor: Colors.white,
                    ),
                    !mobile
                        ? const Sc2GetOptionsButton(
                            backgroundColor: Color(0xffA1887F),
                            textColor: Colors.white,
                            fontSize: 40,
                          )
                        : Container(),
                  ],
                ),
              ),
              mobile
                  ? const Expanded(
                      flex: 1,
                      child: Sc2GetOptionsButton(
                        backgroundColor: Color(0xffA1887F),
                        textColor: Colors.white,
                        fontSize: 40,
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}