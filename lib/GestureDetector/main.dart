import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pratike_api/GestureDetector/gesture_detector.dart';

void main (){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.deepPurple
      ),
      home: DetectGestore(),
    );
  }
}