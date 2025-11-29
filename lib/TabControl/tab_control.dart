import 'package:flutter/material.dart';

class TabControl extends StatelessWidget {
  const TabControl({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(title: Text('TabBarControl')),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home)),
                Tab(icon: Icon(Icons.search)),
                Tab(icon: Icon(Icons.person)),
                
              ],
            ),
            Expanded(
                  child: TabBarView(
                    children: [
                      Container(color: Colors.amber, child: Center(child: Text('data1'))),
                      Container(color: Colors.pink, child: Center(child: Text('data2'))),
                      Container(color: Colors.deepPurple, child: Center(child: Text('data3'))),
                    ],
                  ),
                )
          ],
        ),
      ),
    );
  }
}
