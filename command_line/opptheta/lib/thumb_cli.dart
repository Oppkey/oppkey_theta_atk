import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:args/args.dart';
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
      ..addOption('save', help: 'number of thumbs to save to files')
      ..addOption('sc2', help: '--sc2=true if SC2 model');
  }

  @override
  void run() async {
    int number = 5;

    // there is a bug in the SC2 API as of firmware 1.64
    // implement workaround if sc2 is true
    bool sc2 = false;
    var thumbList = [];

    if (argResults != null) {
      if (argResults!.wasParsed('print')) {
        number = int.parse(argResults!['print']);
      }
      if (argResults!.wasParsed('sc2')) {
        var sc2String = argResults!['sc2'];
        if (sc2String == 'true') {
          sc2 = true;
        } else if (sc2String == 'false') {
          sc2 = false;
        } else {
          print('sc2 not set.  To set --sc2=true');
        }
      }

      if (argResults!.wasParsed('save')) {
        number = int.parse(argResults!['save']);
        // thumbGetBytes is in the theta package and shows
        // how to get the thumbs for V/Z1 models
        if (sc2) {
          print('get sc2 thumbs to save');
          thumbList = await sc2ThumbGetBytes(number: number);
        } else {
          thumbList = await thumbGetBytes(number: number);
        }

        List<File> localFileList = [];
        localFileList = await createLocalFiles(number, localFileList);

        List<List<int>> byteList = [];
        for (var thumb in thumbList) {
          byteList.add(List.from(base64Decode(thumb)));
        }

        await saveThumbs(localFileList, byteList);
      } else {
        if (sc2) {
          thumbList = await sc2ThumbGetBytes(number: number);
        } else {
          thumbList = await thumbGetBytes(number: number);
        }

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
