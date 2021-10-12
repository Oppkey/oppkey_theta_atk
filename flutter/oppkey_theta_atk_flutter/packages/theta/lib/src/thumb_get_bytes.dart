import 'dart:convert';

import 'package:theta/src/command.dart';

Future<List<String>> thumbGetBytes({int number = 5}) async {
  List<String> thumbList = [];

  try {
    var response = await command(
      'listFiles',
      parameters: {
        'fileType': 'image',
        'entryCount': number,
        'maxThumbSize': 640
      },
    );
    Map<String, dynamic> responseMap = jsonDecode(response);
    var _entries = responseMap['results']['entries'];
    for (var entry in _entries) {
      thumbList.add(entry['thumbnail']);
    }
    // handle more than 100 entries
    var _totalEntries = responseMap['results']['totalEntries'];
    if (number >= _totalEntries) {
      number = _totalEntries;
    }
    int loops = (number / 100).truncate();

    for (int i = 1; i <= loops; i++) {
      var response = await command(
        'listFiles',
        parameters: {
          'fileType': 'image',
          'entryCount': 100,
          'startPostion': 100 * i,
          'maxThumbSize': 640
        },
      );
      Map<String, dynamic> responseMap = jsonDecode(response);
      var currentEntries = responseMap['results']['entries'];
      thumbList.addAll(currentEntries);
    }
  } catch (error) {
    print(error);
  }
  return thumbList;
}
