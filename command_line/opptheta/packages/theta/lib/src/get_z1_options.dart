import '../theta.dart';

Future<String> getZ1Options() async {
  var response = await command('getOptions', parameters: {
    'optionNames': [
      "iso",
      "isoSupport",
      "captureMode",
      'offDelay',
      'exposureProgram',
      'sleepDelay',
      'videoStitching',
      'dateTimeZone',
      'aperture',
      '_authentication',
      '_autoBracket',
    ]
  });
  return response.toString();
}
