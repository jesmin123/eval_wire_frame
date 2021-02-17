import 'package:flutter/material.dart';

class OtherDetailsProvider extends ChangeNotifier{

String _rcBook;
String _originalInvoice;
String _insurance;
String _warranty;
String _entry;

String get entry => _entry;

  set entry(String value) {
    _entry = value;
    notifyListeners();
  }

  String get warranty => _warranty;

  set warranty(String value) {
    _warranty = value;
    notifyListeners();
  }

  String get insurance => _insurance;

  set insurance(String value) {
    _insurance = value;
    notifyListeners();
  }

  String get originalInvoice => _originalInvoice;

  set originalInvoice(String value) {
    _originalInvoice = value;
    notifyListeners();
  }

  String get rcBook => _rcBook;

  set rcBook(String value) {
    _rcBook = value;
    notifyListeners();
  }
}