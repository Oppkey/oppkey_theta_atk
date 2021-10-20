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
                    TakePictureButton()
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
