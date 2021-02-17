import 'package:flutter/material.dart';

class VehicleDetailProvider extends ChangeNotifier{

  String _manufacturer;
  String _model;
  int _year;
  String _varient;
  String _fuel;
  String _transmission;
  String _vinPlate;
  String _externalCng;
  String _vehicleType;
  int _seatingCapacity;
  String _color;
  int _kms;
  String _emission;
  String _engineCC;
  String _chasisNo;
  String _engineNo;
  String _enquiryNo;


  String get enquiryNo => _enquiryNo;

  set enquiryNo(String value) {
    _enquiryNo = value;
    notifyListeners();
  }

  String get engineNo => _engineNo;

  set engineNo(String value) {
    _engineNo = value;
    notifyListeners();
  }

  String get chasisNo => _chasisNo;

  set chasisNo(String value) {
    _chasisNo = value;
    notifyListeners();
  }

  String get engineCC => _engineCC;

  set engineCC(String value) {
    _engineCC = value;
    notifyListeners();
  }

  String get emission => _emission;

  set emission(String value) {
    _emission = value;
    notifyListeners();
  }

  int get kms => _kms;

  set kms(int value) {
    _kms = value;
    notifyListeners();
  }

  String get color => _color;

  set color(String value) {
    _color = value;
    notifyListeners();
  }

  int get seatingCapacity => _seatingCapacity;

  set seatingCapacity(int value) {
    _seatingCapacity = value;
    notifyListeners();
  }

  String get varient => _varient;

  set varient(String value) {
    _varient = value;
    notifyListeners();
  }

  String get vehicleType => _vehicleType;

  set vehicleType(String value) {
    _vehicleType = value;
    notifyListeners();
  }

  String get externalCng => _externalCng;

  set externalCng(String value) {
    _externalCng = value;
    notifyListeners();
  }

  String get vinPlate => _vinPlate;

  set vinPlate(String value) {
    _vinPlate = value;
    notifyListeners();
  }

  String get transmission => _transmission;

  set transmission(String value) {
    _transmission = value;
    notifyListeners();
  }

  String get fuel => _fuel;

  set fuel(String value) {
    _fuel = value;
    notifyListeners();
  }

  int get year => _year;

  set year(int value) {
    _year = value;
    notifyListeners();
  }

  String get model => _model;

  set model(String value) {
    _model = value;
    notifyListeners();
  }

  String get manufacturer => _manufacturer;

  set manufacturer(String value) {
    _manufacturer = value;
    notifyListeners();
  }
}