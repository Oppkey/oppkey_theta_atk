import 'package:flutter/material.dart';
import 'package:thetaf/thetaf.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Oppkey thetaf demo'),
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
              /// example of changing response window style
              const ResponseWindow(
                backgroundColor: Colors.blueGrey,
                textColor: Color(0xfff5f5f5),
                fontSize: 24.0,
                flex: 5,
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    StateButton(
                      // this is an example of changing the buttonStyle
                      // it is better to change the theme for all the
                      // buttons when possible
                      // this is just to show what is possible.
                      // it is not a best practice to do this inline
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all<TextStyle>(
                            const TextStyle(fontSize: 40)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.lightGreen),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                    InfoButton(
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all<TextStyle>(
                            const TextStyle(fontSize: 40)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [Z1GetOptionsButton(), Sc2GetOptionsButton()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
