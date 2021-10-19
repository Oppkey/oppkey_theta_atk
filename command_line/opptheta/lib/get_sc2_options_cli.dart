import 'package:args/command_runner.dart';
import 'package:theta/theta.dart' as theta;

class GetSc2Options extends Command {
  @override
  final name = 'getSc2Options';

  @override
  final description = 'get options for SC2';

  @override
  void run() async {
    String response = await theta.getSc2Options();
    print(response);
  }
}
