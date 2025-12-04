import 'package:flutter/material.dart';

class AmPm extends StatelessWidget {
  final bool isItAmPm;
  AmPm({required this.isItAmPm});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Center(
        child: Text(
          isItAmPm == true ? 'AM' : 'PM',
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