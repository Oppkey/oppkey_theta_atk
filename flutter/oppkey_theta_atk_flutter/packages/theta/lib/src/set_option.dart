import 'package:theta/src/command.dart';

/// set single option
Future<String> setOption(String s,
    {required String name, required dynamic value}) async {
  var response = await command(
    'setOptions',
    parameters: {
      'options': {name: value}
    },
  );

  return response.toString();
}
