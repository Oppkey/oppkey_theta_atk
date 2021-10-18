import 'package:flutter/cupertino.dart';
import 'package:theta/theta.dart' as theta;
import 'package:provider/provider.dart';
import 'package:thetaf/src/model/response_notifier.dart';

Future<void> z1GetOptions(BuildContext context) async {
  var response = await theta.command('getOptions', parameters: {
    'optionNames': [
      "iso",
      "isoSupport",
      "captureMode",
      'offDelay',
      'exposureProgram',
      'sleepDelay',
      'videoStitching'
    ]
  });
  Provider.of<ResponseNotifier>(context, listen: false)
      .setResponseText(response);
}
