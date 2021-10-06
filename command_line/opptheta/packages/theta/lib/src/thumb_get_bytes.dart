import 'dart:convert';

import 'package:theta/src/command.dart';

Future<List<String>> thumbGetBytes({int number = 5}) async {
  List<String> thumbList = [];

  try {
    print('generating $number thumbs');
    var response = await command(
      'listFiles',
      parameters: {
        'fileType': 'image',
        'entryCount': number,
        'maxThumbSize': 640
      },
    );
    Map<String, dynamic> responseMap = jsonDecode(response);
    var fileList = responseMap['results']['entries'];
    for (var entry in fileList) {
      thumbList.add(entry['thumbnail']);
    }
  } catch (error) {
    print(error);
  }
  return thumbList;
}
