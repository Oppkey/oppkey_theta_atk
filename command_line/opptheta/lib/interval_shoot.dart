import 'package:args/command_runner.dart';
import 'package:theta/theta.dart';

/// uses state to grab camera status after interval shot
/// to work around a limitation of the SC2 API
/// SC2 has a minimum interval of 8
/// V has a minimum interval of 4
/// Z1 has a minimum interval of 6 or 10 with RAW+
class IntervalShoot extends Command {
  @override
  final name = 'intervalShoot';

  @override
  final description = 'test interval shooting with 2 sets of 2 shots';

  IntervalShoot() {
    argParser
      ..addOption('captureNumber', help: '--captureNumber=10')
      ..addOption('sets', help: 'numbers of sequence sets');
  }

  @override
  void run() async {
    int captureNumber = 2;
    int sets = 2;

    if (argResults != null) {
      if (argResults!.wasParsed('captureNumber')) {
        captureNumber = int.parse(argResults!['captureNumber']);
      }
      if (argResults!.wasParsed('sets')) {
        sets = int.parse(argResults!['sets']);
      }
    }

    print(await setOption(name: 'captureMode', value: 'image'));
    await Future.delayed(Duration(milliseconds: 100));
    await setOption(name: 'captureInterval', value: 10);
    await Future.delayed(Duration(milliseconds: 100));
    await setOption(name: 'captureNumber', value: captureNumber);
    await command('startCapture', parameters: {'_mode': 'interval'});
    print('first interval set in progress');
    while (await checkForIdle() != 'idle') {
      await Future.delayed(Duration(milliseconds: 500));
    }
    print('first interval set completed');
    for (int i = 2; i <= sets; i++) {
      print('starting interval set #$i');
      await command('startCapture', parameters: {'_mode': 'interval'});
      while (await checkForIdle() != 'idle') {
        await Future.delayed(Duration(milliseconds: 500));
      }
      print('completed interval set #$i');
    }
  }
}
