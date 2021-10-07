import 'package:flutter/material.dart';
import 'package:oppkey_theta_atk_flutter/models/response_notifier.dart';
import 'package:oppkey_theta_atk_flutter/models/video_notifier.dart';
import 'package:oppkey_theta_atk_flutter/view/main_buttons.dart';
import 'package:oppkey_theta_atk_flutter/view/main_window.dart';
import 'package:provider/provider.dart';

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
      home: Scaffold(
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const MainWindow(),
            const MainButtons(),
          ],
        ),
      ),
    );
  }
}
