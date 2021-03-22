import 'package:flutter/material.dart';

class EngineProvider extends ChangeNotifier{


  Map<String,dynamic> _engine={
    "engine":0,
    "battery":0,
    "engineOilLevel":0,
    "engineOil":0,
    "coolant":0,
    "em":0,
    "es":0,
    "eSmoke":0,
    "ep":0,
    "ac":0,
    "heater":0,
    "cc":0,

  };
  double _rating;

  double get rating => _rating;

  set rating(double value) {
    _rating = value;
    notifyListeners();
  }

  Map<String, dynamic> get engine => _engine;

  set engine(Map<String, dynamic> value) {
    _engine = value;
    notifyListeners();
  }

updateKey(dynamic key,dynamic value) {
    Map<String,dynamic> engineTemp=engine;
    if(engineTemp.containsKey(key)){
      engineTemp[key]=value;
    }
    engine=engineTemp;
}
}