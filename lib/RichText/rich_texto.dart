import 'package:flutter/material.dart';

class RichTexto extends StatelessWidget {
  const RichTexto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          color: Colors.deepPurple,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Valery',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber
                  )
                ),
                TextSpan(
                  text: 'Adolph',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.green
                  )
                ),
              ]
            )
          ),
        ),
      ),
    );
  }
}