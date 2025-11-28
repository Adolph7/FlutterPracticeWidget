import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewGridBuilder extends StatelessWidget {
  const ViewGridBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 8,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), 
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
              ),
            ),
          );
        }
      ),
    );
  }
}