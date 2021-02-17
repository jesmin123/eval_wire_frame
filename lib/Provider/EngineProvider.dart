import 'package:flutter/material.dart';

class EngineProvider extends ChangeNotifier{


  Map<String,dynamic> _engine={
    "":0,

  };

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