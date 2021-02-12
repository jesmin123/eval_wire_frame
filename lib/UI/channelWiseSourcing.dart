import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:eval_wire_frame/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
class ChannelWiseSourcing extends StatefulWidget {
  @override
  _ChannelWiseSourcingState createState() => _ChannelWiseSourcingState();
}

class _ChannelWiseSourcingState extends State<ChannelWiseSourcing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Channel Wise Sourcing',style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),

            Card(
                elevation: 5,
                shape: RoundedRectangleBorder(

                  borderRadius: BorderRadius.circular(10),
                  // side: BorderSide(width: 0.25,color: APP_BLACK_COLOR,)
                ),
                child: Column(

                  children: <Widget>[
                    ListTile(
                        leading: Text("Showroom",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                    ),
                    Divider(),
                    ListTile(
                      title: Text("1 Cases",style: AppFontStyle.appBarTittle(PRIMARY_COLOR)),
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
                        leading: Text("Government",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
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
                        leading: Text("Nexa",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
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
                        leading: Text("Military Canteen",style: AppFontStyle.titleAppBarStyle(APP_BLACK_COLOR),)
                    ),
                    Divider(),
                    ListTile(
                      title: Text("1 Cases",style: AppFontStyle.appBarTittle(PRIMARY_COLOR)),
                      trailing: Icon(LineIcons.arrow_circle_right,color: PRIMARY_COLOR),
                    ), ],

                ))


          ],
        ),
      ),
    );
  }
}
