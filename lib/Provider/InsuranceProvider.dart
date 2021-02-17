import 'package:flutter/material.dart';
class InsuranceProvider extends ChangeNotifier{

  String _insuranceType;

  String get insuranceType => _insuranceType;

  set insuranceType(String value) {
    _insuranceType = value;
    notifyListeners();
  }
}