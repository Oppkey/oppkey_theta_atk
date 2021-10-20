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
      '_filter',
      '_function',
      '_gain',
      'gpsInfo',
      '_imageStitching',
      'iso',
      'isoAutoHighLimit',
      '_language',
      '_latestEnabledExposureDelayTime',
      '_maxRecordableTime',
      '_microphone',
      '_microphoneChannel',
      '_networkType',
      'offDelay',
      'previewFormat',
      'remainingPictures',
    ]
  });
  return response.toString();
}
