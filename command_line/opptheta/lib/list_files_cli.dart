import 'dart:convert';

import 'package:args/command_runner.dart';
import 'package:theta/theta.dart';

///  POST command to http://192.168.1.1/osc/commands/execute
class ListFiles extends Command {
  @override
  final name = 'listFiles';

  @override
  final description = 'list video and image files on camera';

  ListFiles() {
    argParser
      ..addOption('fileType', help: '--fileType=all | image | video')
      ..addOption('entryCount', help: '--entryCount=20')
      ..addOption('maxThumbSize',
          help: '--maxThumbSize=640 to show thumbs | 0 for no thumbs')
      ..addOption('startPosition', help: '--startPosition=101')
      ..addOption('entriesOnly',
          help: '--entriesOnly=true : show single list of all entries')
      ..addOption('fixLimit',
          help: '--fixLimit=true : list more than 100 files');
  }

  @override
  void run() async {
    // these three parameters are required
    String fileType = 'all';
    int entryCount = 10;
    int maxThumbSize = 0;
    int startPosition = 0;
    String response = '';
    bool fixLimit = false;
    var allEntries = [];
    bool entriesOnly = false;
    var entriesOver100 = [];

    if (argResults != null) {
      if (argResults!.wasParsed('fileType')) {
        fileType = argResults!['fileType'];
      }
      if (argResults!.wasParsed('entryCount')) {
        entryCount = int.parse(argResults!['entryCount']);
      }
      if (argResults!.wasParsed('maxThumbSize')) {
        maxThumbSize = int.parse(argResults!['maxThumbSize']);
      }
      if (argResults!.wasParsed('startPosition')) {
        startPosition = int.parse(argResults!['startPosition']);
      }
      if (argResults!.wasParsed('entriesOnly')) {
        String temp = argResults!['entriesOnly'];
        if (temp == 'true') {
          entriesOnly = true;
        } else if (temp == 'false') {
          entriesOnly = false;
        } else {
          print(
              'entriesOnly not set.  usage: listFiles --entryCount=300 --fixLimit=true --entriesOnly=true');
        }
      }
      if (argResults!.wasParsed('fixLimit')) {
        String temp = argResults!['fixLimit'];
        if (temp == 'true') {
          fixLimit = true;
        } else if (temp == 'false') {
          fixLimit = false;
        } else {
          print(
              'fixLimit not set.  usage: listFiles --entryCount=300 --fixLimit=true');
        }
      }
    } else {
      print('argResults is null');
    }
    response = await command('listFiles', parameters: {
      'fileType': fileType,
      'entryCount': entryCount,
      'maxThumbSize': maxThumbSize,
      'startPosition': startPosition
    });
    if (!entriesOnly) {
      print(response);
    } else {
      Map<String, dynamic> responseMap = jsonDecode(response);
      allEntries = responseMap['results']['entries'];
    }

    Map<String, dynamic> responseMap = jsonDecode(response);
    var totalEntries = responseMap['results']['totalEntries'];

    if (entryCount > 100 && fixLimit) {
      if (entryCount >= totalEntries) {
        entryCount = totalEntries;
      }
      int loops = (entryCount / 100).truncate();

      for (int i = 1; i <= loops; i++) {
        response = await command('listFiles', parameters: {
          'fileType': fileType,
          'entryCount': 100,
          'maxThumbSize': maxThumbSize,
          'startPosition': 100 * i
        });
        if (!entriesOnly) {
          print(response);
        } else {
          Map<String, dynamic> responseMap = jsonDecode(response);
          var currentEntries = responseMap['results']['entries'];
          entriesOver100.addAll(currentEntries);
        }
      }
      print('number of entries over 100: ${entriesOver100.length}');
      allEntries.addAll(entriesOver100);
    }
    if (entriesOnly) {
      var jsonEntries = jsonEncode(allEntries);
      var mapEntries = jsonDecode(jsonEntries);
      JsonEncoder encoder = JsonEncoder.withIndent('  ');
      String output = encoder.convert(mapEntries);
      print(output);
    }
  }
}
