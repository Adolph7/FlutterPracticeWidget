import 'package:flutter/material.dart';

class PositionStack extends StatelessWidget {
  const PositionStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Stack(
        
        
        children: [
          Container(
            width: 300,
            height: 300,
            color: Colors.deepOrange,
          ),
          Container(
            width: 200,
            height: 200,
            color: Colors.deepPurple,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
          Positioned(
            bottom: 10,
            right: 20,
            child: Container(
            width: 100,
            height: 100,
            color: Colors.black,
          ), 
          )

        ],
      ),
    );
  }
}