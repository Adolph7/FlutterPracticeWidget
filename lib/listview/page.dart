import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pagee extends StatelessWidget {
  final String text;
 const Pagee({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        width: 200, 
        height: 200, 
        color: Colors.blue,
        child: Text(text),
      ),
    );
  }
}
