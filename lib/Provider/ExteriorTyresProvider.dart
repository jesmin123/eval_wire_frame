import 'package:flutter/material.dart';

class ExteriorTyresProvider extends ChangeNotifier{


double _rating;

double get rating => _rating;

  set rating(double value) {
    _rating = value;
    notifyListeners();
  }

  Map<String,dynamic> _exterior = {
"BumperF":0,
  "BumperR":0,
  "BumperBonnet":0,
  "BumperRoof":0,
  "FenderL":0,
  "FenderR":0,
  "DoorRHSFront":0,
  "DoorLHSFront":0,
  "DoorRHSRear":0,
  "DoorLHSRear":0,
  "Battery":0,
  "Pillar":0,
  "RunningLHS":0,
  "QuarterLHS":0,
  "RunningRHS":0,
  "QuarterRHS":0,
  "DickeyDoor":0,
  "BootFloor":0,
  "Firewall":0,
  "Apron":0,
  "CowlTop":0,
  "LowerCross":0,
  "UpperCross":0,
  "Headlight":0,
  "Radiator":0,
  "WindshieldFront":0,
  "WindshieldRear":0,
  "QRVMLHS":0,
  "QRVMRHS":0,
  "lightLhsFog":0,
  "lightLhsHead":0,
  "lightLhsTail":0,
  "lightRhsFog":0,
  "lightRhsHead":0,
  "lightRhsTail":0,
  "rearCombination":0,
  "indicators":0,
  "alloyWheel":0,
  "rim":0,





};

Map<String,dynamic>_exterior1={
  "lhsFrontMake":0,
  "lhsFrontThread":0,
  "rhsFrontMake":0,
  "rhsFrontThread":0,
  "lhsRearMake":0,
  "lhsRearThread":0,
  "rhsRearMake":0,
  "rhsRearThread":0,
  "spareMake":0,
  "spareThread":0,

};

Map<String, dynamic> get exterior1 => _exterior1;

  set exterior1(Map<String, dynamic> value) {
    _exterior1 = value;
    notifyListeners();
  }
updateDropDown(dynamic key,dynamic value){
  Map<String,dynamic> exterior1Temp= exterior1;
  if(exterior1Temp.containsKey(key)){
    exterior1Temp[key]=value;
  }
  exterior1=exterior1Temp;
}


  Map<String, dynamic> get exterior => _exterior;

  set exterior(Map<String, dynamic> value) {
    _exterior = value;
    notifyListeners();
  }
  updateKey(dynamic key,dynamic value){
    Map<String,dynamic> exteriorTemp= exterior;
    if(exteriorTemp.containsKey(key)){
      exteriorTemp[key]=value;
    }
    exterior=exteriorTemp;
  }


}