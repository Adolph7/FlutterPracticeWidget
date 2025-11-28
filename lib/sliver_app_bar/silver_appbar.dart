import 'package:flutter/material.dart';

class AppBarSilver extends StatelessWidget {
  const AppBarSilver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.green,
            leading: Icon(Icons.menu),
            //title: Text('Sliver App Bar'),
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.pink,
              ),
              title: Text('Sliver App Bar'),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 300,
                  color: Colors.lightBlue,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 300,
                  color: Colors.lightBlue,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 300,
                  color: Colors.lightBlue,
                ),
              ),
            ),
          ),
        ],
      ),
    ) ;
  }
}