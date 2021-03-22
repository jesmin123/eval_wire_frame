import 'package:flutter/material.dart';
class SteeringProvider extends ChangeNotifier{

  Map<String,dynamic> _steering={
    "steering":0,
    "suspension":0,
    "brake":0,
  };
double _rating;

  double get rating => _rating;

  set rating(double value) {
    _rating = value;
    notifyListeners();
  }

  Map<String, dynamic> get steering => _steering;

  set steering(Map<String, dynamic> value) {
    _steering = value;
    notifyListeners();
  }
  updateKey(dynamic key,dynamic value){
    Map<String,dynamic> steeringTemp=steering;
    if(steeringTemp.containsKey(key)){
      steeringTemp[key]=value;
    }
    steering=steeringTemp;
  }

}