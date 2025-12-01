import 'package:flutter/material.dart';
import 'package:pratike_api/Pageview/viewpage/post1.dart';
import 'package:pratike_api/Pageview/viewpage/post2.dart';
import 'package:pratike_api/Pageview/viewpage/post3.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final _controllerPage = PageController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Pageview'),
      ),
      body: PageView(
        controller: _controllerPage,
        children: [
          Post1(),
          Post2(),
          Post3(),

        ],
      ),
    );
  }
}