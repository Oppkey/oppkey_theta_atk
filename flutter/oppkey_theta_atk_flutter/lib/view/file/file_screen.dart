import 'package:flutter/material.dart';
import 'package:oppkey_theta_atk_flutter/view/file/file_buttons.dart';
import 'package:oppkey_theta_atk_flutter/view/file/file_response.dart';

class FileScreen extends StatelessWidget {
  const FileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
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
