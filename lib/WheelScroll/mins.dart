import 'package:flutter/material.dart';

class Minutes extends StatelessWidget {
  int mins;
  Minutes({required this.mins});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Center(
        child: Text(
          mins.toString(),
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