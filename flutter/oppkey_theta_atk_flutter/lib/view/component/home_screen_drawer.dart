import 'package:flutter/material.dart';

class HomeScreenDrawer extends StatelessWidget {
  const HomeScreenDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
              title: const Text('Camera Settings'),
              onTap: () {
                Navigator.pushNamed(context, '/camera');
              }),
          ListTile(
              title: const Text('Z1 Specific Settings'),
              onTap: () {
                Navigator.pushNamed(context, '/cameraz1');
              }),
          ListTile(
              title: const Text('SC2 Specific Settings'),
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
          ListTile(
              title: const Text('File'),
              onTap: () {
                Navigator.pushNamed(context, '/file');
              }),
        ],
      ),
    );
  }
}
