import 'package:flutter/material.dart';

class FormData extends ChangeNotifier{

  int _activeStep = 0;

  int get activeStep => _activeStep;

  set activeStep(int value) {
    _activeStep = value;
    notifyListeners();
  }

  int _stepCount =0;

  int get stepCount => _stepCount;

  set stepCount(int value) {
    _stepCount = value;
    notifyListeners();
  }
}