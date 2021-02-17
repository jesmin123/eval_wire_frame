import 'package:flutter/material.dart';

class DocumentProvider extends ChangeNotifier{
String _originalRc;

String get originalRc => _originalRc;

  set originalRc(String value) {
    _originalRc = value;
    notifyListeners();
  }


  Map<String,dynamic> _selectorKeys = {
    "ora":0,
    "oi":0,
    "ott":0,
    "opc":0,
    "dk":0,
    "rc":0,
    "bwc":0,
    "ewd":0,
    "sm":0,
  };


Map<String, dynamic> get selectorKeys => _selectorKeys;

  set selectorKeys(Map<String, dynamic> value) {
    _selectorKeys = value;
    notifyListeners();
  }

  updateSelectors(dynamic key, dynamic value){
    Map<String,dynamic> selectorKeyTemp = selectorKeys;
    if(selectorKeyTemp.containsKey(key)){
      selectorKeyTemp[key] = value;
    }

    selectorKeys = selectorKeyTemp;
  }

}