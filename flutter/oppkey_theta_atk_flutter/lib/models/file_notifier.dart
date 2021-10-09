import 'package:flutter/material.dart';

class FileNotifier extends ChangeNotifier {
  List<String> _thumbs = [];
  List<String> get thumbs => _thumbs;
  void setThumbs(thumbs) {
    _thumbs = thumbs;
    notifyListeners();
  }
}
