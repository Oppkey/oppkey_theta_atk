import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thetaf/src/model/response_notifier.dart';
import 'package:thetaf/src/model/window_notifier.dart';

class ThumbWindow extends StatelessWidget {
  final int flex;
  const ThumbWindow({
    required this.flex,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex,
        child: SingleChildScrollView(
            child: SizedBox(
          width: double.infinity,
          child: !context.watch<WindowNotifier>().showThumbWindow
              ? SelectableText(context.watch<ResponseNotifier>().responseText)
              : const Text('show thumb here'),
        )));
  }
}
