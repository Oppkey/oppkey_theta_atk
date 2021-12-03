import '../theta.dart';

/// Be aware that options not supported by Z1 will cause this program to crash.
/// For a list of available APIs: https://api.ricoh/docs/theta-web-api-v2.1/
/// For additional help or if you notice errors in the API documentation,
/// please use https://www.theta360.guide
/// 6 can't be used with Z1
///
/// * _bluetoothClassicEnable
/// * _HDMIreso - only S and SC
/// * _password
/// * _shootingMethod - Can be acquired and set only when in the Still image shooting mode and _function is the My Settings shooting function.
/// * _username
/// * _wlanChannel

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
      'remainingSpace',
      'remainingVideoSeconds',
      'shutterSpeed',
      '_shutterVolume',
      '_timeShift',
      '_topBottomCorrection',
      'totalSpace',
      'videoStitching',
      '_visibilityReduction',
      'whiteBalance',
      '_wlanFrequency',
    ]
  });
  return response.toString();
}
