import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pratike_api/listview/page.dart';

class Llistview extends StatelessWidget {
  const Llistview({super.key});

  @override
  Widget build(BuildContext context) {
    final List posts =[ 
      'post1',
      'post2',
      'post3',
      'post4',
      'post5',
    ];

    return Scaffold(
      body: Column(
        children: [
          Expanded(

            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
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
                ),Padding(
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
            )
          ),
          Container(
            height: 600,
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index){
                return Pagee(text: posts[index]);
              }
            ),
          ),
        ],
      ),
    );
  }
}