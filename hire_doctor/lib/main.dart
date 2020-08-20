import 'package:flutter/material.dart';
import 'package:hire_doctor/dashboard.dart';

void main() =>
  runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xffF08D55),
        cursorColor: Colors.black
      ),
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}
