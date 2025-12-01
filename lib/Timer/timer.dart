import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class SetTimer extends StatefulWidget {
  const SetTimer({super.key});

  @override
  State<SetTimer> createState() => _SetTimerState();
}

class _SetTimerState extends State<SetTimer> {
  int tiempo = 5;

  void _timer(){
    Timer.periodic( Duration(seconds: 1), (timer){
      setState(() {
        if (tiempo > 0) {
          tiempo--;
        } else {
          timer.cancel();
        }
        
      });
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: [
            Text(tiempo == 0 ? "done" : tiempo.toString()),
            MaterialButton(
              onPressed: _timer,
              child: Text('Start'),
            )
          ],
        ),
      ),
    );
  }
}