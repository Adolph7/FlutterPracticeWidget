import 'package:flutter/material.dart';

class DetectGestore extends StatefulWidget {
  const DetectGestore({super.key});

  @override
  State<DetectGestore> createState() => _DetectGestoreState();
}

class _DetectGestoreState extends State<DetectGestore> {
  int num = 0;
  void _peze() {
    setState(() {
      num = num + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Tape ${num.toString()}'),

            GestureDetector(
              onTap: _peze,
              child: Container(color: Colors.blue, child: Text('Tape 0')),
            ),
          ],
        ),
      ),
    );
  }
}
