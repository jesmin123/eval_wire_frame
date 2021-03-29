import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:eval_wire_frame/constants/strings.dart';
import 'package:eval_wire_frame/widgets/SourcedWidget.dart';
import 'package:eval_wire_frame/widgets/appBar.dart';
import 'package:flutter/material.dart';

class Sourced extends StatefulWidget {
  @override
  _SourcedState createState() => _SourcedState();
}

class _SourcedState extends State<Sourced> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(SOURCED,style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),
            ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (BuildContext context,int index){
                  return Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: SourcedWidget(),
                  );
                })



          ],
        ),
      ),
    );
  }
}
