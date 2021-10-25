import 'dart:convert';

import 'package:theta/src/command.dart';

Future<Map<String, dynamic>> getLastFileInfo({fileType = 'all'}) async {
  String url = '';
  var response = await command('listFiles',
      parameters: {'fileType': fileType, 'entryCount': 1, 'maxThumbSize': 0});
  var mapResponse = jsonDecode(response);
  Map<String, dynamic> currentFileInfo = mapResponse['results']['entries'][0];
  url = currentFileInfo['fileUrl'];
  String name = currentFileInfo['name'];
  int size = currentFileInfo['size'];
  Map<String, dynamic> fileInfo = {'fileUrl': url, 'name': name, 'size': size};
  return fileInfo;
}
