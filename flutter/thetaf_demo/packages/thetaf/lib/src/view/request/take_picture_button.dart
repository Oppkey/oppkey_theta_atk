import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta/theta.dart';
import 'package:thetaf/src/command/take_picture_ready.dart';
import 'package:thetaf/src/model/response_notifier.dart';

class TakePictureButton extends StatelessWidget {
  final ButtonStyle? style;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip clipBehavior;

  const TakePictureButton({
    Key? key,
    this.style,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        onPressed: () => takePictureReady(context),
        child: const Text('take picture'));
  }
}