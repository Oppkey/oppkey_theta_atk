/// root window for all thetaf widgets
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/response_notifier.dart';

class ThetaWindow extends StatelessWidget {
  final Widget child;
  const ThetaWindow({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [ChangeNotifierProvider(create: (_) => ResponseNotifier())],
        child: child);
  }
}
