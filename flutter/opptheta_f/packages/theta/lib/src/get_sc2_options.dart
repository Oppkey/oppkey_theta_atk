import '../theta.dart';

/// Be aware that options not supported by SC2 will cause this program to crash.
/// For a list of available APIs: https://api.ricoh/docs/theta-web-api-v2.1/
/// For additional help or if you notice errors in the API documentation,
/// please use https://www.theta360.guide
/// 18 options can't be used with SC2
/// * aperture
/// * _authentication
/// * _compositeShootingOutputInterval - Docs show not supported by SC2 or SC2B
/// * _compositeShootingTime - Docs show not supported by SC2 or SC2B
/// * _HDMIreso - Docs show supported only by S and SC
/// * _imageStitching - Docs show not supported by SC2 or SC2B
/// * _language - Docs show not supported by SC2 or SC2B
/// * _microphone - Docs show not supported by SC2 or SC2B
/// * _microphoneChannel
/// * _networkType
/// * _password
/// * _shootingMethod
/// * _timeShift - Docs show supported by SC2B, not SC2 (currently testing with SC2)
/// * _topBottomCorrection
/// * _username
/// * videoStitching
/// * _visibilityReduction
/// * _wlanFrequency

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
      '_filter',
      '_function',
      '_gain',
      'gpsInfo',
      'isoAutoHighLimit',
      '_latestEnabledExposureDelayTime',
      '_maxRecordableTime',
      '_preset',
      'previewFormat',
      'remainingPictures',
      'remainingSpace',
      'remainingVideoSeconds',
      'shutterSpeed',
      '_shutterVolume',
      'totalSpace',
      'whiteBalance',
      '_wlanChannel',
    ]
  });
  return response.toString();
}
