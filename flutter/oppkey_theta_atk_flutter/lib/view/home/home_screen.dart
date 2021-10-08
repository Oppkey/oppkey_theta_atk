import 'package:flutter/material.dart';

import 'home_buttons.dart';
import 'home_response.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Oppkey THETA ATK Demo'),
        backgroundColor: Colors.lightGreen,
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                  style: TextButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    Navigator.pushNamed(context, '/file');
                  },
                  child: const Text('files')),
            ],
          ),
          const SizedBox(
            width: 100,
          ),
        ],
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const HomeResponse(flex: 8),
          const HomeButtons(flex: 1),
        ],
      ),
    );
  }
}
