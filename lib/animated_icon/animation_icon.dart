import 'package:flutter/material.dart';

class AnimationIcon extends StatefulWidget {
  const AnimationIcon({super.key});

  @override
  State<AnimationIcon> createState() => _AnimationIconState();
}

class _AnimationIconState extends State<AnimationIcon> with SingleTickerProviderStateMixin {
  late AnimationController _controllerAnimation;

  @override
  void initState (){
    _controllerAnimation = AnimationController(vsync: this, duration: Duration(seconds: 1) );
  }

  bool videoPlaying = false;

  void _playingIcon (){
    if (videoPlaying == false) {
      _controllerAnimation.forward();
      videoPlaying = true;
    } else {
      _controllerAnimation.reverse();
      videoPlaying = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
        title: Text('Animated Icon'),
      ),
      body: Center(
        child:  GestureDetector(
          onTap: () {
            _playingIcon();
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.play_pause, 
            progress: _controllerAnimation,
            size: 200,
          ),
        ),
      ),
    );
  }
}