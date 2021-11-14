import 'package:args/command_runner.dart';
import 'package:theta/theta.dart';

///  POST command to http://192.168.1.1/osc/commands/execute
class GetOptions extends Command {
  @override
  final name = 'getOptions';

  @override
  final description = 'get camera options';

  GetOptions() {
    argParser.addOption('options', help: '--options=_filter offDelay');
  }

  @override
  void run() async {
    if (argResults != null) {
      if (argResults!.arguments.isEmpty) {
        printUsage();
      } else if (argResults!.wasParsed('options')) {
        List<String> optionList = [];
        optionList.add(argResults!['options']);
        if (argResults!.rest.isNotEmpty) {
          optionList.addAll(argResults!.rest);
        }
        print(optionList);
        String response = await getOptions(optionList);
        print(response);
      } else {
        printUsage();
      }
    }
  }
}
