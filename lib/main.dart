import 'package:flutter/material.dart';
import 'package:smartpharma01/screens/chng.dart';
import 'package:smartpharma01/start.dart';

import 'debut.dart';
import 'login.dart';
import 'menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color bl = Color(0xFFFAFAFA);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        'home': (BuildContext context) => Menu(bl),
        'login': (BuildContext context) => Login(),
        'SignUp': (BuildContext context) => Start(),
        'CHNG': (BuildContext context) => Chng(),

        // "login": (BuildContext context) => Login(),
      },
      home: Scaffold(
        body: Debute(),
      ),
    );
  }
}
