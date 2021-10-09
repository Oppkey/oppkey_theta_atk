import 'package:flutter/material.dart';
import 'package:oppkey_theta_atk_flutter/models/file_notifier.dart';
import 'package:provider/provider.dart';
import 'package:theta/theta.dart';

class FileButtons extends StatelessWidget {
  const FileButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OutlinedButton(
              onPressed: () async {
                List<String> thumbs = await thumbGetBytes(number: 10);
                Provider.of<FileNotifier>(context, listen: false)
                    .setThumbs(thumbs);
              },
              child: const Text('thumbs')),
        ],
      ),
    );
  }
}
