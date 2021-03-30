import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:eval_wire_frame/constants/strings.dart';
import 'package:eval_wire_frame/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class LeadsBreakUp extends StatefulWidget {
  @override
  _LeadsBreakUpState createState() => _LeadsBreakUpState();
}

class _LeadsBreakUpState extends State<LeadsBreakUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(LEADS_BREAK_UP,style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),

            Card(
                elevation: 5,
                shape: RoundedRectangleBorder(

                  borderRadius: BorderRadius.circular(10),
                  // side: BorderSide(width: 0.25,color: APP_BLACK_COLOR,)
                ),
                child: Column(

                  children: <Widget>[
                    ListTile(
                        leading: Text(ASSIGNED_CASES,style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                    ),
                    Divider(),
                    ListTile(
                      title: Text("17 Cases",style: AppFontStyle.appBarTittle(PRIMARY_COLOR)),
                      trailing: Icon(LineIcons.arrow_circle_right,color: PRIMARY_COLOR,),
                    ), ],

                )),
            SizedBox(height: 6,),
            Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  // side: BorderSide(width: 1,color: APP_BLACK_COLOR,)
                ),
                child: Column(

                  children: <Widget>[
                    ListTile(
                        leading: Text(DEAL_OK_CASE,style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                    ),
                    Divider(),
                    ListTile(
                      title: Text("12 Cases",style: AppFontStyle.appBarTittle(PRIMARY_COLOR)),
                      trailing: Icon(LineIcons.arrow_circle_right,color: PRIMARY_COLOR),
                    ), ],

                )),
            SizedBox(height: 6,),
            Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  // side: BorderSide(width: 1,color: APP_BLACK_COLOR,)
                ),
                child: Column(

                  children: <Widget>[
                    ListTile(
                        leading: Text(PENDING_CASES,style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                    ),
                    Divider(),
                    ListTile(
                      title: Text("45 Cases",style: AppFontStyle.appBarTittle(PRIMARY_COLOR)),
                      trailing: Icon(LineIcons.arrow_circle_right,color: PRIMARY_COLOR),
                    ), ],

                )
            ),
            SizedBox(height: 6,),

            Card(
                elevation: 5,
                shape: RoundedRectangleBorder(

                  borderRadius: BorderRadius.circular(10),
                  // side: BorderSide(width: 0.25,color: APP_BLACK_COLOR,)
                ),
                child: Column(

                  children: <Widget>[
                    ListTile(
                        leading: Text("Evaluated Cases",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                    ),
                    Divider(),
                    ListTile(
                      title: Text("3 Cases",style: AppFontStyle.appBarTittle(PRIMARY_COLOR)),
                      trailing: Icon(LineIcons.arrow_circle_right,color: PRIMARY_COLOR,),
                    ), ],

                )),
            SizedBox(height: 6,),
            Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  // side: BorderSide(width: 1,color: APP_BLACK_COLOR,)
                ),
                child: Column(

                  children: <Widget>[
                    ListTile(
                        leading: Text("Sourced",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                    ),
                    Divider(),
                    ListTile(
                      title: Text("1 Cases",style: AppFontStyle.appBarTittle(PRIMARY_COLOR)),
                      trailing: Icon(LineIcons.arrow_circle_right,color: PRIMARY_COLOR),
                    ), ],

                )),
            SizedBox(height: 6,),
            Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  // side: BorderSide(width: 1,color: APP_BLACK_COLOR,)
                ),
                child: Column(

                  children: <Widget>[
                    ListTile(
                        leading: Text("Under Negotiation",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                    ),
                    Divider(),
                    ListTile(
                      title: Text("1 Cases",style: AppFontStyle.appBarTittle(PRIMARY_COLOR)),
                      trailing: Icon(LineIcons.arrow_circle_right,color: PRIMARY_COLOR),
                    ), ],

                )),
            SizedBox(height: 6,),
            Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  // side: BorderSide(width: 1,color: APP_BLACK_COLOR,)
                ),
                child: Column(

                  children: <Widget>[
                    ListTile(
                        leading: Text(JUNK_LEADS,style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                    ),
                    Divider(),
                    ListTile(
                      title: Text("1 Cases",style: AppFontStyle.appBarTittle(PRIMARY_COLOR)),
                      trailing: Icon(LineIcons.arrow_circle_right,color: PRIMARY_COLOR),
                    ), ],

                )),
            Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  // side: BorderSide(width: 1,color: APP_BLACK_COLOR,)
                ),
                child: Column(

                  children: <Widget>[
                    ListTile(
                        leading: Text("Dropped Cases",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                    ),
                    Divider(),
                    ListTile(
                      title: Text("1 Cases",style: AppFontStyle.appBarTittle(PRIMARY_COLOR)),
                      trailing: Icon(LineIcons.arrow_circle_right,color: PRIMARY_COLOR),
                    ), ],

                )),
            Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  // side: BorderSide(width: 1,color: APP_BLACK_COLOR,)
                ),
                child: Column(

                  children: <Widget>[
                    ListTile(
                        leading: Text("Lost Cases",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                    ),
                    Divider(),
                    ListTile(
                      title: Text("1 Cases",style: AppFontStyle.appBarTittle(PRIMARY_COLOR)),
                      trailing: Icon(LineIcons.arrow_circle_right,color: PRIMARY_COLOR),
                    ), ],

                )),
          ],
        ),
      ),
    );
  }
}
