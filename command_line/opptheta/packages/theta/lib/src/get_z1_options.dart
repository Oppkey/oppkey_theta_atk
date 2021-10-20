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
      '_bitrate',
      '_bluetoothPower',
      '_bluetoothRole',
      'captureInterval',
      'captureMode',
      'captureNumber',
      'clientVersion',
      '_colorTemperature',
      '_compositeShootingOutputInterval',
      '_compositeShootingTime',
      'exposureCompensation',
      'exposureDelay',
      'fileFormat',
    ]
  });
  return response.toString();
}
