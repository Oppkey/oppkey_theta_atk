import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thetaf/src/model/window_notifier.dart';
import 'model/response_notifier.dart';

/// root window for all thetaf widgets
/// all other widgets must be wrapped inside a ThetaWindow
/// widget.
/// import 'package:thetaf/thetaf.dart';
///```
///...
///return MaterialApp(
///    home: Scaffold(
///        body: ThetaWindow(
///            child: Column(
/// ```
class ThetaWindow extends StatelessWidget {
  final Widget child;
  const ThetaWindow({required this.child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => ResponseNotifier()),
      ChangeNotifierProvider(create: (_) => WindowNotifier()),
    ], child: child);
  }
}
