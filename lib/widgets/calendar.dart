import 'package:eval_wire_frame/constants/colors.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';

class MyCalendar extends StatefulWidget {
  @override
  _MyCalendarState createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  CalendarController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller=CalendarController();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TableCalendar(
        initialCalendarFormat: CalendarFormat.twoWeeks,
        calendarStyle: CalendarStyle(
          todayColor: Colors.green,
          selectedColor: PRIMARY_COLOR,
        ),
        onDaySelected: (date,events,holidays){
          print('$date');
        },
        calendarController: _controller,),
    );
  }
}