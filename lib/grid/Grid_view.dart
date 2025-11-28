import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ViewGrid extends StatelessWidget {
  const ViewGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
              ),
            ),
          ),
          Padding(
                  padding: EdgeInsets.all(16),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
