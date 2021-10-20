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
      '_autoBracket',
      '_bitrate',
      '_bluetoothPower',
      'captureInterval',
      'captureMode',
      'captureNumber',
      'clientVersion',
      '_colorTemperature',
      'dateTimeZone',
      'exposureCompensation',
      'exposureDelay',
      'fileFormat',
    ]
  });
  return response.toString();
}
