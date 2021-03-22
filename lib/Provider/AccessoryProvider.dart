import 'package:flutter/material.dart';

class AccessoryProvider extends ChangeNotifier{

  double _rating;
List<String> _list=[];

  List<String> get list => _list;

  set list(List<String> value) {
    _list = value;
    notifyListeners();
  }

  addNewItem(String string){
    List<String> listTemp=list;
    listTemp.add(string);
    list=listTemp;
  }
  double get rating => _rating;

  set rating(double value) {
    _rating = value;
    notifyListeners();
  }

}