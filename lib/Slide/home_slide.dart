import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class HomeSlide extends StatelessWidget {
  const HomeSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider to'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SlideAction(
            animationDuration: Duration(seconds: 2),
            sliderRotate: false,
            sliderButtonIcon: Icon(
              Icons.lock_open,
              color: Colors.white,
            ),
            outerColor: Colors.tealAccent,
            innerColor: Colors.amber,
            text: 'Slide to DM',
            onSubmit: () {
              // do something
            },
          ),
        ),
      ),
    );

  }
}