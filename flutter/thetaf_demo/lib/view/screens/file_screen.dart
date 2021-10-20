import 'dart:io';

import 'package:flutter/material.dart';
import 'package:thetaf/thetaf.dart';
import 'package:path_provider/path_provider.dart';

class FileScreen extends StatefulWidget {
  const FileScreen({Key? key}) : super(key: key);

  @override
  State<FileScreen> createState() => _FileScreenState();
}

class _FileScreenState extends State<FileScreen> {
  String path = '';
  void getDocsDirectory() async {
    Directory docDir = await getApplicationDocumentsDirectory();
    print(docDir);
    path = docDir.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('File Tester'),
      ),
      body: ThetaWindow(
        child: Column(
          children: [
            const ResponseWindow(flex: 4),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  TextButton(
                      onPressed: () {
                        getDocsDirectory();
                      },
                      child: const Text('get path')),
                  DownloadVideoButton(path: path),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
