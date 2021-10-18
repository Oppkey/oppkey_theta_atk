import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thetaf/src/model/response_notifier.dart';

class ResponseWindow extends StatelessWidget {
  final int flex;
  const ResponseWindow({
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
                child: SelectableText(
                    context.watch<ResponseNotifier>().responseText))));
  }
}
