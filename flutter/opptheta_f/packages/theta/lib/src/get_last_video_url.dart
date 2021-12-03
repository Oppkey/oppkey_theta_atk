import 'dart:convert';

import 'package:theta/src/command.dart';

Future<String> getLastVideoUrl() async {
  String url = '';
  var response = await command('listFiles',
      parameters: {'fileType': 'video', 'entryCount': 1, 'maxThumbSize': 0});
  var mapResponse = jsonDecode(response);
  url = mapResponse['results']['entries'][0]['fileUrl'];
  return url.toString();
}
