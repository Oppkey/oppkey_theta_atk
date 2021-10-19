import 'package:args/command_runner.dart';
import 'package:theta/theta.dart' as theta;

class GetZ1Options extends Command {
  @override
  final name = 'getZ1Options';

  @override
  final description = 'get options for Z1';

  @override
  void run() async {
    String response = await theta.getZ1Options();
    print(response);
  }
}
