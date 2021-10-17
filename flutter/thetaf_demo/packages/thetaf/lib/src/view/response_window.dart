import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:thetaf/src/model/response_notifier.dart';

class HomeResponse extends StatelessWidget {
  final int flex;
  const HomeResponse({
    required this.flex,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex,
        child: Text(context.watch<ResponseNotifier>().responseText));
  }
}
