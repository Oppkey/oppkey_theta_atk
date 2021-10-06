import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:args/command_runner.dart';
import 'package:theta/theta.dart';

/// get thumbnails from images.  This only transfers the
/// thumbs over as they thumbnail is smaller than the
/// full image

class Thumb extends Command {
  @override
  final name = 'thumb';

  @override
  final description = 'get thumbs and print or save';

  Thumb() {
    argParser
      ..addOption('print', help: 'number of thumbs to print')
      ..addOption('save', help: 'number of thumbs to save to files');
  }

  @override
  void run() async {
    int number = 5;
    // thumbGetBytes is in the theta package and shows
    // how to get the thumbs for V/Z1 models
    var thumbList = [];

    if (argResults != null) {
      if (argResults!.wasParsed('print')) {
        number = int.parse(argResults!['print']);
      }

      if (argResults!.wasParsed('save')) {
        number = int.parse(argResults!['save']);
        thumbList = await thumbGetBytes(number: number);

        List<File> localFileList = [];
        localFileList = await createLocalFiles(number, localFileList);

        List<List<int>> byteList = [];
        for (var thumb in thumbList) {
          byteList.add(List.from(base64Decode(thumb)));
        }

        await saveThumbs(localFileList, byteList);
      } else {
        thumbList = await thumbGetBytes(number: number);

        if (thumbList.length == 1) {
          print(thumbList[0]);
        } else {
          print('showing thumbnails');
          for (var i = 0; i < thumbList.length; i++) {
            print('=' * 30);
            print('showing thumb number ${i + 1} (base64 encoded)');
            print('=' * 30);

            print(thumbList[i]);
          }
        }
      }
    } else {
      print('argResults is null');
    }
  }

  Future<void> saveThumbs(
      List<File> localFileList, List<List<int>> byteList) async {
    for (var thumbCount = 0; thumbCount < localFileList.length; thumbCount++) {
      localFileList[thumbCount].writeAsBytes(byteList[thumbCount]);
    }
  }

  /// prepares files on local storage to save the thumbnails to for inspection
  Future<List<File>> createLocalFiles(numberOfFiles, localFileList) async {
    for (var i = 1; i < numberOfFiles + 1; i++) {
      File tempFile = await File('thumbs/thumb_$i.jpg').create(recursive: true);
      localFileList.add(tempFile);
    }
    return localFileList;
  }
}
