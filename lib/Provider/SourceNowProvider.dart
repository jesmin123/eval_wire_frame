import 'package:flutter/material.dart';

class SorceNowProvider extends ChangeNotifier{

  String _color;
  String _rcBook;
  String _insurance;
  String _taxToken;
  String _toolkit;
  String _battery;

  String get battery => _battery;

  set battery(String value) {
    _battery = value;
    notifyListeners();
  }

  String _odometer;

  String get odometer => _odometer;

  set odometer(String value) {
    _odometer = value;
    notifyListeners();
  }

  String _vehicle;

  String get vehicle => _vehicle;

  set vehicle(String value) {
    _vehicle = value;
    notifyListeners();
  }

  String get toolkit => _toolkit;

  set toolkit(String value) {
    _toolkit = value;
    notifyListeners();
  }

  String _form60;

  String get form60 => _form60;

  set form60(String value) {
    _form60 = value;
    notifyListeners();
  }

  String _sellerId;

  String get sellerId => _sellerId;

  set sellerId(String value) {
    _sellerId = value;
    notifyListeners();
  }

  String get taxToken => _taxToken;

  set taxToken(String value) {
    _taxToken = value;
    notifyListeners();
  }

  String _puCertificate;

  String get puCertificate => _puCertificate;

  set puCertificate(String value) {
    _puCertificate = value;
    notifyListeners();
  }

  String _ownersManual;

  String get ownersManual => _ownersManual;

  set ownersManual(String value) {
    _ownersManual = value;
    notifyListeners();
  }

  String _duplicateKeys;

  String get duplicateKeys => _duplicateKeys;

  set duplicateKeys(String value) {
    _duplicateKeys = value;
    notifyListeners();
  }

  String _loan;

  String get loan => _loan;

  set loan(String value) {
    _loan = value;
    notifyListeners();
  }

  String _form35;

  String get form35 => _form35;

  set form35(String value) {
    _form35 = value;
    notifyListeners();
  }

  String get insurance => _insurance;

  set insurance(String value) {
    _insurance = value;
    notifyListeners();
  }

  String get rcBook => _rcBook;

  set rcBook(String value) {
    _rcBook = value;
    notifyListeners();
  }

  String get color => _color;

  set color(String value) {
    _color = value;
    notifyListeners();
  }
}