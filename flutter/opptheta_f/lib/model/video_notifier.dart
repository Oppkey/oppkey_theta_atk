import 'dart:async';
import 'package:flutter/widgets.dart';

class VideoNotifier extends ChangeNotifier {
  bool _videoRunning = false;
  bool get videoRunning => _videoRunning;
  void setVideoRunning(videoRunning) {
    _videoRunning = videoRunning;
    notifyListeners();
  }

  StreamController _controller = StreamController();
  StreamController get controller => _controller;
  void setController(controller) {
    _controller = controller;
    notifyListeners();
  }
}
