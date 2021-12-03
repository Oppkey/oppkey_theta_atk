import '../theta.dart';

/// Get camera options. The options must be a String list.
///
/// Example with inline options:
///
/// ```dart
/// getOptions(['_filter', 'offDelay', 'sleepDelay']);
/// ```
///
/// Example with variable
///
/// ```dart
/// List<String> options = ['_filter', 'offDelay', 'sleepDelay'];
/// getOptions(options);
/// ```
///
Future<String> getOptions(List<String> options) async {
  var response =
      await command('getOptions', parameters: {'optionNames': options});
  return response.toString();
}
