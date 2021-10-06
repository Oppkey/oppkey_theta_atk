import 'package:args/command_runner.dart';
import 'package:theta/theta.dart';

///  POST command to http://192.168.1.1/osc/commands/execute
class ThumbGetBytes extends Command {
  @override
  final name = 'thumbGetBytes';

  @override
  final description = 'print thumbs to console as bytes';

  ThumbGetBytes() {
    argParser.addOption('number', help: 'number of thumbnails to print');
  }

  @override
  void run() async {
    // these three parameters are required

    int number = 5;

    if (argResults != null) {
      if (argResults!.wasParsed('number')) {
        number = int.parse(argResults!['number']);
      }
    } else {
      print('argResults is null');
    }
    var thumbList = await thumbGetBytes(number: number);
    print('showing thumbnails');
    for (var i = 0; i < thumbList.length; i++) {
      print('=' * 30);
      print('showing thumb number ${i + 1}');
      print('=' * 30);

      print(thumbList[i]);
    }
  }
}
