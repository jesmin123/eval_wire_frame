import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class MAppBar extends StatelessWidget implements PreferredSizeWidget{

  final double height = 50;


  @override
  Widget build(BuildContext context) {
    return AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Evaluator App',style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR)),
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(LineIcons.arrow_circle_left,color: Colors.black,), onPressed: ()=>{Navigator.pop(context,true)})
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);

}