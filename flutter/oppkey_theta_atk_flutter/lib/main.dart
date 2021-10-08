import 'package:flutter/material.dart';
import 'package:oppkey_theta_atk_flutter/models/response_notifier.dart';
import 'package:oppkey_theta_atk_flutter/models/video_notifier.dart';
import 'package:oppkey_theta_atk_flutter/view/file/file_screen.dart';
import 'package:provider/provider.dart';

import 'view/home/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ResponseNotifier()),
        ChangeNotifierProvider(create: (_) => VideoNotifier()),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomeScreen(),
        '/file': (context) => const FileScreen(),
      },
      initialRoute: '/',
      theme: ThemeData(primaryColor: Colors.lightGreen),
    );
  }
}
