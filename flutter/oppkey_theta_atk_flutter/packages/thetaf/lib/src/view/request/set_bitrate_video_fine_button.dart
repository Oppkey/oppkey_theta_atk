import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta/theta.dart';
import 'package:thetaf/src/model/response_notifier.dart';

/// {@category Z1}
/// You can set _bitrate to Fine or Normal (shooting mode must be set to video),
/// or to Auto (shooting mode must be set to image or live streaming.
class SetBitrateVideoFineButton extends StatelessWidget {
  final ButtonStyle? style;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip clipBehavior;
  final String label;

  const SetBitrateVideoFineButton({
    Key? key,
    this.style,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
    this.label = 'Fine',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        onPressed: () async {
          var response = await setOption(name: '_bitrate', value: 'Fine');
          // set title for response. Edit the line below
          // for each option
          response = 'attempting to set option for _bitrate\n'
                  '-------------------\n' +
              response;

          // delay 250ms before sending the camera another command
          await Future.delayed(const Duration(milliseconds: 250));
          // send command to check the option you just set
          var responseCheck = await await command('getOptions', parameters: {
            'optionNames': ['_bitrate']
          });
          // combine the two strings
          response += '\nCheck the information below to verify option was set\n'
              'We are using getOptions to pull the new value from the camera\n'
              '\n$responseCheck';

          Provider.of<ResponseNotifier>(context, listen: false)
              .setResponseText(response);
        },
        child: Text(label));
  }
}
