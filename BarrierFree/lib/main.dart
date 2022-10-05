import 'package:flutter/material.dart';
import 'package:untitled1/screens/mainpage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CanDo',
      theme: ThemeData(
        fontFamily: 'text',
        primaryColor: Colors.white,
      ),
      home: MainPage(),
    );
  }
}
