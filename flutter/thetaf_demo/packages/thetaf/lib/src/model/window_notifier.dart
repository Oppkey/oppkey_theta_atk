import 'package:flutter/widgets.dart';

class WindowNotifier extends ChangeNotifier {
  bool _showThumbWindow = false;
  bool get showThumbWindow => _showThumbWindow;
  void setShowThumbWindow(bool showThumbWindow) {
    _showThumbWindow = showThumbWindow;
    notifyListeners();
  }
}
