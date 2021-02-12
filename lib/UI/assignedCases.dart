import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:eval_wire_frame/constants/strings.dart';
import 'package:eval_wire_frame/widgets/appBar.dart';
import 'package:eval_wire_frame/widgets/assigned.dart';
import 'package:flutter/material.dart';

class AssignedCases extends StatefulWidget {
  @override
  _AssignedCasesState createState() => _AssignedCasesState();
}

class _AssignedCasesState extends State<AssignedCases> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: APP_WHITE_COLOR,
      appBar: MAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(ASSIGNED_CASES,style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),
            ListView.builder(
              itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (BuildContext context,int index){
                return Assigned();
                }

            )
          ])
    )
    );
}
}
