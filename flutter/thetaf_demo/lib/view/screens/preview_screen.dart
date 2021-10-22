import 'package:flutter/material.dart';
import 'package:thetaf/thetaf.dart';

class PreviewScreen extends StatelessWidget {
  const PreviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('live preview')),
      body: ThetaWindow(
        child: Column(
          children: const [LivePreview()],
        ),
      ),
    );
  }
}
