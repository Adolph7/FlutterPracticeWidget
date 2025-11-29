import 'package:flutter/material.dart';

class AnimaContainer extends StatefulWidget {
  const AnimaContainer({super.key});

  @override
  State<AnimaContainer> createState() => _AnimaContainerState();
}

class _AnimaContainerState extends State<AnimaContainer> {
    double boxWidth = 100;
    double boxHeight = 100;

    void _zoomIn () {
      setState(() {
        boxWidth = 300;
        boxHeight = 300;
      });
    }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('data'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: _zoomIn,
          child: Container(
            width: boxWidth,
            height: boxHeight,
            color: Colors.amber,
            child: Text('click to move'),
          ),
        ),
      ),
    );
  }
}