import 'package:flutter/cupertino.dart';

class ResponseNotifier extends ChangeNotifier {
  String _responseText = 'camera response';
  String get responseText => _responseText;
}
