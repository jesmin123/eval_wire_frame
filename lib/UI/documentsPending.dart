import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:eval_wire_frame/widgets/DocumentsPendingwidget.dart';
import 'package:eval_wire_frame/widgets/appBar.dart';
import 'package:flutter/material.dart';
class DocumentsPending extends StatefulWidget {
  @override
  _DocumentsPendingState createState() => _DocumentsPendingState();
}

class _DocumentsPendingState extends State<DocumentsPending> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MAppBar(),
    body: SingleChildScrollView(
    child: Column(
      children: [
        Text("Car Details", style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),
       ListView.builder(
            shrinkWrap: true,
           itemCount: 5,
           itemBuilder: (BuildContext context,int index){
              return DocumentsPendingWidget();
           })
      ],
    )
    )
    );
  }
}
