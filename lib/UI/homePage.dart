import 'package:cached_network_image/cached_network_image.dart';
import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:eval_wire_frame/constants/dimens.dart';
import 'package:eval_wire_frame/constants/strings.dart';
import 'package:flutter/material.dart';





class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  void displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.grain, color: APP_BLACK_COLOR),
                    Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          ListTile(
                            onTap:(){Navigator.pushNamed(context,DEAL_OK_CASE);
                            },
                            leading: Icon(Icons.beenhere_outlined,
                                color: PRIMARY_COLOR),
                            title: Text(
                              DEAL_OK_CASE,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: PRIMARY_COLOR,
                            ),

                          ),
                          ListTile(
                            onTap:(){Navigator.pushNamed(context,ASSIGNED_CASES);
                            },
                            leading: Icon(Icons.assignment_turned_in_outlined,
                                color: PRIMARY_COLOR),
                            title: Text(
                              ASSIGNED_CASES ,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: PRIMARY_COLOR,
                            ),

                          ),
                          ListTile(

                            leading: Icon(Icons.hourglass_empty_outlined,
                                color: PRIMARY_COLOR),
                            title: Text(
                              FUND_TRANSFERS,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: PRIMARY_COLOR,
                            ),
                            onTap: (){
                              Navigator.pushNamed(context, FUND_TRANSFERS);
                            },
                          ),
                          ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, JUNK_LEADS);
                            },
                            leading: Icon(Icons.assignment_outlined,
                                color: PRIMARY_COLOR),
                            title: Text(
                              JUNK_LEADS,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: PRIMARY_COLOR,
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.assignment_outlined,
                                color: PRIMARY_COLOR),
                            title: Text(
                              PRICE_NEGOTIATION,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: PRIMARY_COLOR,
                            ),
                            onTap: (){
                              Navigator.pushNamed(context, PRICE_NEGOTIATION);
                            },
                          ),
                          ListTile(
                            onTap: (){
                              Navigator.pushNamed(context, PENDING_CASES);

                            },
                            leading: Icon(Icons.assignment_outlined,
                                color: PRIMARY_COLOR),
                            title: Text(
                              PENDING_CASES,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: PRIMARY_COLOR,
                            ),
                          ),
                          ListTile(
                            leading: Icon(Icons.assignment_outlined,
                                color: PRIMARY_COLOR),
                            title: Text(
                             LEADS_BREAK_UP,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: PRIMARY_COLOR,
                            ),
                            onTap: (){

                              Navigator.pushNamed(context, LEADS_BREAK_UP);
                            },

                          ),
                          ListTile(
                            leading: Icon(Icons.assignment_late_outlined,
                                color: PRIMARY_COLOR),
                            title: Text(
                              CHANNEL_WISE,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: PRIMARY_COLOR,
                            ),
                            onTap: (){

                              Navigator.pushNamed(context, CHANNEL_WISE);
                            },

                          ),
                          ListTile(
                            leading: Icon(Icons.calendar_today_outlined,
                                color: PRIMARY_COLOR),
                            title: Text(
                              SOURCED,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: PRIMARY_COLOR,
                            ),
                            onTap: (){

                              Navigator.pushNamed(context,SOURCED );
                            },

                          ),
                          ListTile(
                            leading: Icon(Icons.assignment_late_outlined,
                                color: PRIMARY_COLOR),
                            title: Text(
                              DOCUMENTS_PENDING,
                              style: AppFontStyle.regularTextStyle2(
                                  APP_BLACK_COLOR,
                                  textSize: 18.0),
                            ),
                            trailing: Icon(
                              Icons.navigate_next,
                              color: PRIMARY_COLOR,
                            ),
                            onTap: (){

                              Navigator.pushNamed(context, DOCUMENTS_PENDING);
                            },

                          ),
                        ],
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, NEW_ENQUIRY_PAGE);
                      },
                      color: PRIMARY_COLOR,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add, color: APP_WHITE_COLOR),
                          Text(
                            "New Case",
                            style:
                            AppFontStyle.regularTextStyle(APP_WHITE_COLOR),
                          )
                        ],
                      ),
                    ),

                  ]),
            ),
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: APP_WHITE_COLOR,
      appBar: AppBar(
        backgroundColor: APP_WHITE_COLOR,
        elevation: 0,
        centerTitle: true,
        title: Text(
          EVALUATOR_APP,
          style: AppFontStyle.appBarTittle(PRIMARY_COLOR),
        ),
        actions: [
          PopupMenuButton<int>(
            onSelected: (index){
              if(index==1){
                Navigator.pushNamed(context, EVALUATOR_PAGE);
              }
              if(index==2){
                Navigator.pushNamed(context, EVALUATOR_PAGE);
              }
            },
            itemBuilder: (context) => [

              PopupMenuItem(

                value: 1,
                child: Row(
                  children: [
                    Icon(Icons.assignment_ind_outlined, color: PRIMARY_COLOR,),
                    SizedBox(width: LINE_HEIGHT *0.5,),
                    Text('Team Lead', style: AppFontStyle.headingTextStyle(APP_BLACK_COLOR),)
                  ],
                ),

              ),
              PopupMenuDivider(),
              PopupMenuItem(

                value: 2,
                child: Row(
                  children: [
                    Icon(Icons.logout, color: PRIMARY_COLOR,),
                    SizedBox(width: LINE_HEIGHT *0.5,),
                    Text('LogOut', style: AppFontStyle.headingTextStyle(APP_BLACK_COLOR),)
                  ],
                ),
              ),
            ],
            icon: Icon(Icons.more_vert_outlined, color: PRIMARY_COLOR,),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            offset: Offset(0, 100),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Container(
                  decoration: BoxDecoration(
                      color: PRIMARY_COLOR,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12),
                          topRight: Radius.circular(12))),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 8, bottom: 8, left: 8, right: 20),
                    child: Text(
                      EVALUATOR,
                      style: AppFontStyle.regularSmallTextStyle(APP_WHITE_COLOR,
                          textSize: 16.0),
                    ),
                  ),
                )),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: CachedNetworkImageProvider(
                        "https://www.adbasis.com/images/divita-a65623c8.jpg"),
                    maxRadius: 60,
                  ),
                  SizedBox(
                    height: LINE_HEIGHT,
                  ),
                  Text("John Lee",
                      style: AppFontStyle.regularTextStyle2(APP_BLACK_COLOR,
                          textSize: 22.0)),
                  Text(
                    "@98xxxxxx",
                    style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR),
                  ),
                  Text(
                    "Kaloor",
                    style: AppFontStyle.bodyTextStyle2(APP_GREY_COLOR),
                  ),
                  SizedBox(height: LINE_HEIGHT * 2),
                  GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, MY_APPOINTMENTS);

                      },
                    child: Container(
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      decoration: BoxDecoration(
                          border: Border.all(color: PRIMARY_COLOR, ),
                          borderRadius: BorderRadius.circular(16)

                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,

                          children: [
                            Row(
                              children: [
                                Icon(Icons.notifications_active_outlined, color: PRIMARY_COLOR,),
                                SizedBox(width: LINE_HEIGHT,),
                                Text('You have 3\nappointments today', style: AppFontStyle.labelTextStyle(APP_BLACK_COLOR)),
                              ],
                            ),

                            Icon(Icons.keyboard_arrow_right_outlined, color: PRIMARY_COLOR,)
                          ]
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => displayBottomSheet(context),
        backgroundColor: PRIMARY_COLOR,
        child: Icon(
          Icons.grain,
          color: APP_WHITE_COLOR,
        ),
      ),


    );
  }
}
