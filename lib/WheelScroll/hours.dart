import 'package:flutter/material.dart';

class Hours extends StatelessWidget {
  int hours;
  Hours({required this.hours});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Center(
        child: Text(
          hours.toString(),
          style: TextStyle(
            fontSize: 45,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}