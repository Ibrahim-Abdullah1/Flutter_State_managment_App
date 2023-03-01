import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Progressvalue extends ChangeNotifier {
  double _progress = 0.0;
  double get progress => _progress;

  set progress(double val) {
    _progress = val;
    notifyListeners();
  }
}
