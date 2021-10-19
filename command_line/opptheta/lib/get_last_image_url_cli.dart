import 'package:args/command_runner.dart';
import 'package:theta/theta.dart' as theta;

class GetLastImageUrl extends Command {
  @override
  final name = 'getLastImageUrl';

  @override
  final description = 'get url for last image taken';

  @override
  void run() async {
    String response = await theta.getLastImageUrl();
    print('last image url');
    print(response);
  }
}
