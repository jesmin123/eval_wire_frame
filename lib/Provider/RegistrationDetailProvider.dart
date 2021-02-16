import 'package:flutter/material.dart';

class RegistrationDetailProvider extends ChangeNotifier{


  String _regNo;
  String _nameOfRegOwner;
  String _ownership;
  String _dateOfReg;
  String _taxType;
  String _taxValidity;
  String _ownershipComment;


  String get ownershipComment => _ownershipComment;

  set ownershipComment(String value) {
    _ownershipComment = value;
    notifyListeners();
  }

  String get taxValidity => _taxValidity;

  set taxValidity(String value) {
    _taxValidity = value;
    notifyListeners();
  }

  String get taxType => _taxType;

  set taxType(String value) {
    _taxType = value;
    notifyListeners();
  }

  String get dateOfReg => _dateOfReg;

  set dateOfReg(String value) {
    _dateOfReg = value;
    notifyListeners();
  }

  String get nameOfRegOwner => _nameOfRegOwner;

  set nameOfRegOwner(String value) {
    _nameOfRegOwner = value;
    notifyListeners();
  }

  String get regNo => _regNo;

  set regNo(String value) {
    _regNo = value;
    notifyListeners();
  }


  String get ownership => _ownership;

  set ownership(String value) {
    _ownership = value;
    notifyListeners();
  }
}