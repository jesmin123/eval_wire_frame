import 'package:flutter/material.dart';
class CustomerDetailsProvider extends ChangeNotifier{

  String _ageGroup;
  String _sourceName;
  String _buyerType;
  String _nameOnRc;
  String _profession;
  String _phone1;
  String _phone2;
  String _address;
  String _email;

  String get email => _email;

  set email(String value) {
    _email = value;
    notifyListeners();
  }

  String get address => _address;

  set address(String value) {
    _address = value;
    notifyListeners();
  }

  String get phone2 => _phone2;

  set phone2(String value) {
    _phone2 = value;
    notifyListeners();
  }

  String get phone1 => _phone1;

  set phone1(String value) {
    _phone1 = value;
    notifyListeners();
  }

  String get profession => _profession;

  set profession(String value) {
    _profession = value;
    notifyListeners();
  }

  String get nameOnRc => _nameOnRc;

  set nameOnRc(String value) {
    _nameOnRc = value;
    notifyListeners();
  }

  String get buyerType => _buyerType;

  set buyerType(String value) {
    _buyerType = value;
    notifyListeners();
  }

  String get sourceName => _sourceName;

  set sourceName(String value) {
    _sourceName = value;
    notifyListeners();
  }

  String get ageGroup => _ageGroup;

  set ageGroup(String value) {
    _ageGroup = value;
    notifyListeners();
  }
}