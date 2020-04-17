import 'package:flutter/material.dart';
import 'package:lydia/screens/home/home.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.black, // navigation bar color
      statusBarColor: Color(0xff1B6DAC), // status bar color
    ));
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}
