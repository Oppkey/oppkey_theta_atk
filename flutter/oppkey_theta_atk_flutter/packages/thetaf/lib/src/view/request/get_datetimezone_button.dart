import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theta/theta.dart';
import 'package:thetaf/src/model/response_notifier.dart';

/// Gets current Date and Time zone.
/// Format is Date: YYYY:MM:DD  Time: hh:mm:ss  and Time Zone +(-)hh:mm
/// Date is Year:Month:day. Hours are displayed in 24 hour time.
/// Example: 2021:11:13 20:30:22-08:00
class GetDateTimeZoneButton extends StatelessWidget {
  final ButtonStyle? style;
  final FocusNode? focusNode;
  final bool autofocus;
  final Clip clipBehavior;
  final String label;

  const GetDateTimeZoneButton({
    Key? key,
    this.style,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior = Clip.none,
    this.label = 'Date/Time Zone',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: style,
        focusNode: focusNode,
        autofocus: autofocus,
        clipBehavior: clipBehavior,
        onPressed: () async {
          var response = await command('getOptions', parameters: {
            'optionNames': ['dateTimeZone']
          });
          // set title for response. Edit the line below
          // for each option
          response = 'attempting to get option for dateTimeZone\n'
                  '-------------------\n' +
              response;

          // delay 250ms before sending the camera another command
          await Future.delayed(const Duration(milliseconds: 250));
          // send command to check the option you just set
          var responseCheck = await command('getOptions', parameters: {
            'optionNames': ['dateTimeZone']
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