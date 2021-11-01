import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:oppkey_theta_atk_flutter/model/video_notifier.dart';
import 'package:oppkey_theta_atk_flutter/view/screens/camera_screen.dart';
import 'package:oppkey_theta_atk_flutter/view/screens/camera_z1_screen.dart';
import 'package:oppkey_theta_atk_flutter/view/screens/file/file_screen.dart';
import 'package:oppkey_theta_atk_flutter/view/screens/preview_screen.dart';
import 'package:oppkey_theta_atk_flutter/view/screens/use_screen.dart';
import 'view/screens/camera_sc2_screen.dart';
import 'view/screens/home_screen.dart';
import 'view/screens/admin_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => VideoNotifier()),
    ],
    child: const MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Oppkey thetaf demo',
      theme: ThemeData(
          primarySwatch: Colors.grey,
          appBarTheme: const AppBarTheme(
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 20))),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/file': (context) => const FileScreen(),
        '/camera': (context) => const CameraScreen(),
        '/use': (context) => const UseScreen(),
        '/cameraz1': (context) => const CameraZ1Screen(),
        '/camerasc2': (context) => const CameraSC2Screen(),
        '/preview': (context) => const PreviewScreen(),
        '/admin': (context) => const AdminScreen(),
      },
    );
  }
}
