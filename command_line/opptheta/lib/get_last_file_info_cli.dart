import 'package:args/command_runner.dart';
import 'package:theta/theta.dart' as theta;
import 'package:theta/theta.dart';

class GetLastFileInfo extends Command {
  @override
  final name = 'getLastFileInfo';

  @override
  final description = 'get info for last file taken';

  GetLastFileInfo() {
    argParser.addOption('fileType', help: '--fileType=all | image | video');
  }

  @override
  void run() async {
    String fileType = 'all';

    if (argResults != null) {
      if (argResults!.wasParsed('fileType')) {
        fileType = argResults!['fileType'];
      }
    }

    Map<String, dynamic> response =
        await theta.getLastFileInfo(fileType: fileType);
    print(prettify(response));
  }
}
