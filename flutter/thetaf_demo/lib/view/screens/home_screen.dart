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
          ],
        ),
      ),
      body: ThetaWindow(
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Column(
            children: [
              const ResponseWindow(
                flex: 5,
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    StateButton(),
                    InfoButton(),
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
