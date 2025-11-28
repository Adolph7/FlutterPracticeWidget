import 'package:flutter/material.dart';
import 'package:pratike_api/grid/Grid_view.dart';
import 'package:pratike_api/grid/gridview_builder.dart';

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
      home: ViewGridBuilder()
    );
  }
}