import 'dart:io';
import 'package:args/command_runner.dart';
import 'package:opptheta/image_mode_cli.dart';
import 'package:opptheta/info.dart';
import 'package:opptheta/interval_shoot.dart';
import 'package:opptheta/list_files_cli.dart';
import 'package:opptheta/preview_format_cli.dart';
import 'package:opptheta/print_frames_cli.dart';
import 'package:opptheta/save_frames_cli.dart';
import 'package:opptheta/sc2_save_frames_cli.dart';
import 'package:opptheta/set_option_cli.dart';
import 'package:opptheta/state.dart';
import 'package:opptheta/take_picture.dart';
import 'package:opptheta/take_picture_ready.dart';
import 'package:opptheta/thumb_cli.dart';
import 'package:opptheta/video_mode_cli.dart';
import 'package:opptheta/check_for_idle_cli.dart';

void main(List<String> arguments) async {
  final runner = CommandRunner('opptheta', 'RICOH THETA Live Preview tester')
    ..addCommand(Info())
    ..addCommand(State())
    ..addCommand(TakePicture())
    ..addCommand(SaveFrames())
    ..addCommand(VideoMode())
    ..addCommand(SetOption())
    // ..addCommand(BasicTest())
    ..addCommand(ImageMode())
    ..addCommand(PreviewFormat())
    ..addCommand(ListFiles())
    ..addCommand(TakePictureReady())
    ..addCommand(CheckForIdle())
    ..addCommand(IntervalShoot())
    ..addCommand(PrintFrames())
    ..addCommand(Sc2SaveFrames())
    ..addCommand(Thumb());

  await runner.run(arguments).catchError((error) {
    if (error is! UsageException) throw error;
    print(error);
    exit(64);
  });
}
