import 'package:path_provider/path_provider.dart';
import 'dart:io';

Future<String> getThumbPath() async {
  Directory appDocumentsDirectory = await getApplicationDocumentsDirectory();
  String appDocumentsPath = appDocumentsDirectory.path;
  String filePath = '$appDocumentsPath/thumb.jpg';
  return filePath;
}
