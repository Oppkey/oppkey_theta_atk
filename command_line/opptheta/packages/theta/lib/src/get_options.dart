import '../theta.dart';

Future<String> getOptions(List<String> options) async {
  var response =
      await command('getOptions', parameters: {'optionNames': options});
  return response.toString();
}
