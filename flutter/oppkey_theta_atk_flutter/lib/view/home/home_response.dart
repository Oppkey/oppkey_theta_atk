import 'package:flutter/widgets.dart';
import 'package:oppkey_theta_atk_flutter/models/response_notifier.dart';
import 'package:oppkey_theta_atk_flutter/models/video_notifier.dart';
import 'package:provider/provider.dart';
import 'package:thetaf/thetaf.dart';

class HomeResponse extends StatelessWidget {
  final int flex;
  const HomeResponse({
    required this.flex,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: flex,
        child: context.watch<VideoNotifier>().videoRunning
            ? LivePreview(context.watch<VideoNotifier>().controller)
            : Text(context.watch<ResponseNotifier>().responseText));
  }
}
