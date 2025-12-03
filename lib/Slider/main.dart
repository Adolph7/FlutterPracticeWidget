import 'package:flutter/material.dart';
import 'package:pratike_api/Slider/slider_widget.dart';

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
      home: SliderWidget(),
    );
  }
}