import 'package:flutter/material.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SliderWidget> {
  double num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(num.toString()),
            Slider(
              min: 0.0,
              max: 10.0,
              divisions: 5,
              label: num.toString(),
              activeColor: Colors.green,
              inactiveColor: Colors.yellow,
              value: num, 
              onChanged: (value){
                setState(() {
                  num = value;
                });
              }
            ),
          ],
        ),
      ),
    );
  }
}