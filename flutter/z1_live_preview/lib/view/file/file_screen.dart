import 'package:flutter/material.dart';
import 'package:opptheta_f/model/file_notifier.dart';
import 'package:opptheta_f/view/file/file_buttons.dart';
import 'package:opptheta_f/view/file/file_response.dart';
import 'package:provider/provider.dart';

class FileScreen extends StatelessWidget {
  const FileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('File manager'),
        backgroundColor: Colors.lightGreen,
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('sc2 fix 1'),
              Switch(
                  value: context.watch<FileNotifier>().sc2Fix1,
                  onChanged: (value) {
                    Provider.of<FileNotifier>(context, listen: false)
                        .setSc2Fix1(value);
                    // print(value);
                  }),
              const SizedBox(
                width: 30,
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: const [
          FileResponse(),
          FileButtons(),
        ],
      ),
    );
  }
}
