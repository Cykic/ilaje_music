import 'package:flutter/material.dart';
import 'package:ilaje_music/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Montserrat"),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage()
    );
  }
}

