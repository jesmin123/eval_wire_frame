import 'package:flutter/material.dart';

import 'colors.dart';

class FormBorder{

  static OutlineInputBorder myBorder(){
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),borderSide:BorderSide(width: 1,color: PRIMARY_COLOR)
    );
  }
  static InputDecoration myDecoration(){
    return InputDecoration(enabledBorder: FormBorder.myBorder(),contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        focusedBorder: FormBorder.myBorder(),errorBorder:FormBorder.myBorder()
        ,focusedErrorBorder: FormBorder.myBorder()
    );
  }
}