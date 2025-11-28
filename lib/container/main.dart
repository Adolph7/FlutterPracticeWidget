import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pratike_api/container/containner.dart';
import 'package:pratike_api/main.dart';

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
      home: Kontainer(),
    );
  }
}