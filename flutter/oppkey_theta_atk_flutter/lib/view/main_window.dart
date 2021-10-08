import 'package:flutter/widgets.dart';
import 'package:oppkey_theta_atk_flutter/models/response_notifier.dart';
import 'package:oppkey_theta_atk_flutter/models/video_notifier.dart';
import 'package:provider/src/provider.dart';
import 'package:thetaf/thetaf.dart';

class MainWindow extends StatelessWidget {
  const MainWindow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 8,
        child: context.watch<VideoNotifier>().videoRunning
            ? LivePreview(context.watch<VideoNotifier>().controller)
            : Text(context.watch<ResponseNotifier>().responseText));
  }
}
