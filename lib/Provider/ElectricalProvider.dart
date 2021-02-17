import 'package:flutter/material.dart';

class ElectricProvider extends ChangeNotifier{

  Map<String, dynamic> _electricRadio={
    "powerWindows":0,
    "instrumentCluster":0,
    "interiorCondition":0,
    "airbagFeature":0,
    "musicSystem":0,
    "leatherSeat":0,
    "fabricSeat":0,
    "sunRoof":0,
    "reverseCamera":0,
    "smAc":0,
    "abs":0,
    "rd":0,
  };
  double _rating;

  double get rating => _rating;

  set rating(double value) {
    _rating = value;
    notifyListeners();
  }

  Map<String, dynamic> get electricRadio => _electricRadio;

  set electricRadio(Map<String, dynamic> value) {
    _electricRadio = value;
    notifyListeners();
  }
  updateRadio(dynamic key, dynamic value){
    Map<String, dynamic> electricRadioTemp= electricRadio;
    if(electricRadioTemp.containsKey(key)){
      electricRadioTemp[key]=value;
    }
    electricRadio=electricRadioTemp;
  }
}