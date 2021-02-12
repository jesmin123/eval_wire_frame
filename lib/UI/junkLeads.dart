import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:eval_wire_frame/constants/strings.dart';
import 'package:eval_wire_frame/widgets/appBar.dart';
import 'package:eval_wire_frame/widgets/junkLeadsWidget.dart';
import 'package:flutter/material.dart';
 class JunkLeads extends StatefulWidget {
   @override
   _JunkLeadsState createState() => _JunkLeadsState();
 }

 class _JunkLeadsState extends State<JunkLeads> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: MAppBar(),
       body: SingleChildScrollView(
         child: Column(
           children: [
             Text(JUNK_LEADS,style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),
             ListView.builder(
                 shrinkWrap: true,
                 itemCount: 5,
                 itemBuilder: (BuildContext context, int index){
                   return JunkLeadsWidget();
                 })

           ],
         ),
       ),
     );
   }
 }
