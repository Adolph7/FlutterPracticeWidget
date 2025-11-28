import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Kontainer extends StatelessWidget {
  const Kontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Center(
        
        child: Container(
          alignment: Alignment.center,
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.green,
            //borderRadius: BorderRadius.circular(20),
            shape: BoxShape.circle,
            border: BoxBorder.all(
              width: 5,
              style: BorderStyle.solid,
              color: Colors.black45
            ),
            boxShadow: [
              BoxShadow(
                offset: Offset(-2, -3),
                blurRadius: 15,
                spreadRadius: 10
              ),
            ]

          ),
          child: Text('data'),
        ),
      ),
    );
  }
}