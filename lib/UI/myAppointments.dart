import 'package:eval_wire_frame/constants/app_font_style.dart';
import 'package:eval_wire_frame/constants/colors.dart';
import 'package:eval_wire_frame/widgets/CallsWidget.dart';
import 'package:eval_wire_frame/widgets/appBar.dart';
import 'package:eval_wire_frame/widgets/calendar.dart';
import 'package:eval_wire_frame/widgets/visitWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppointments extends StatefulWidget {
  @override
  _MyAppointmentsState createState() => _MyAppointmentsState();
}

class _MyAppointmentsState extends State<MyAppointments>  with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    _tabController  = TabController(length: 2, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: MAppBar(),
    body: Container(
      child: Column(
        children: [
          Text('My Appointments',style: AppFontStyle.appBarTittle(APP_BLACK_COLOR),),
          MyCalendar(),
        TabBar(
              tabs: [
                Tab(child: Text('Calls',style: AppFontStyle.boldAppBarTitle(APP_BLACK_COLOR),), ),
                Tab(child: Text('Evaluations',style: AppFontStyle.boldAppBarTitle(APP_BLACK_COLOR),),)
              ],
            controller: _tabController,
              ),
      Expanded(
        child: TabBarView(
            children: [
              CallsWidget(),
              VisitsWidget()
            ],
          controller: _tabController,
        ),
      ),
      // ListView.builder(itemBuilder: )
        ],
      ),
    )

    );
  }
}
