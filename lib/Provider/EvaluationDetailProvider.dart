import 'package:flutter/material.dart';

class EvaluationDetailProvider extends ChangeNotifier{

  String _quality;
  String _vehicleCategory;
  String _followUp;
  double _overallrating;

  double get overallrating => _overallrating;

  set overallrating(double value) {
    _overallrating = value;
    notifyListeners();
  }

  String get followUp => _followUp;

  set followUp(String value) {
    _followUp = value;
    notifyListeners();
  }

  String get vehicleCategory => _vehicleCategory;

  set vehicleCategory(String value) {
    _vehicleCategory = value;
    notifyListeners();
  }

  String get quality => _quality;

  set quality(String value) {
    _quality = value;
    notifyListeners();
  }
}