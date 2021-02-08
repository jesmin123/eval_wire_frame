
import 'package:flutter/material.dart';

import 'UI/homePage.dart';
import 'constants/strings.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    HOME_PAGE : (context)=> HomePage()

  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wire Frame',
      theme: ThemeData(
          backgroundColor: Colors.white,
          primarySwatch: Colors.red,
          visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      routes: routes,
      initialRoute: HOME_PAGE,

    );
  }
  }

