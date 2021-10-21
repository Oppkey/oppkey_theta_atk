import 'package:flutter/material.dart';
import 'package:thetaf_demo/view/screens/camera_screen.dart';
import 'package:thetaf_demo/view/screens/camera_z1_screen.dart';
import 'package:thetaf_demo/view/screens/file_screen.dart';
import 'package:thetaf_demo/view/screens/use_screen.dart';
import 'view/screens/camera_sc2_screen.dart';
import 'view/screens/home_screen.dart';

void main() {
  runApp(
    const MainApp(),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oppkey thetaf demo',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/file': (context) => const FileScreen(),
        '/camera': (context) => const CameraScreen(),
        '/use': (context) => const UseScreen(),
        '/cameraz1': (context) => const CameraZ1Screen(),
        '/camerasc2': (context) => const CameraSC2Screen(),
      },
    );
  }
}
