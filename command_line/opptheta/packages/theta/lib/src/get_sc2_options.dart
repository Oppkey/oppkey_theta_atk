import '../theta.dart';

Future<String> getSc2Options() async {
  var response = await command('getOptions', parameters: {
    'optionNames': [
      "iso",
      "isoSupport",
      "captureMode",
      'offDelay',
      'exposureProgram',
      'sleepDelay',
    ]
  });
  return response.toString();
}