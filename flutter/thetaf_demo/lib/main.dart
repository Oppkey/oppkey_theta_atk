import 'package:flutter/material.dart';
import 'package:thetaf/thetaf.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ThetaWindow(
          child: Column(
            children: [
              Container(
                color: Colors.grey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
