import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:eval_wire_frame/constants/strings.dart';
import 'package:eval_wire_frame/widgets/PendingWidget.dart';
import 'package:eval_wire_frame/widgets/appBar.dart';
import 'package:flutter/material.dart';

class PendingCases extends StatefulWidget {
  @override
  _PendingCasesState createState() => _PendingCasesState();
}

class _PendingCasesState extends State<PendingCases> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: APP_WHITE_COLOR,
        appBar: MAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(PENDING_CASES,style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),
            ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (BuildContext context,int index){

                  return PendingWidget();
                })
          ],
        ),
      ),

    );
  }
}
