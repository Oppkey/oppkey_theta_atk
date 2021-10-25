import 'package:args/command_runner.dart';
import 'package:theta/theta.dart' as theta;

class GetLastVideoUrl extends Command {
  @override
  final name = 'getLastVideoUrl';

  @override
  final description = 'get url for last video';

  @override
  void run() async {
    String response = await theta.getLastVideoUrl();
    print(response);
  }
}
