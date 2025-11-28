import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exxpand extends StatelessWidget {
  const Exxpand({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: 400,
              
              color: Colors.amber,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.deepOrange,
            )
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blueAccent,
            )
          )

        ],
      ),
    );
  }
}