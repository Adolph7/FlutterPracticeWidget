import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slidable')),
      body: Center(
        child: Slidable(
          startActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                onPressed: ((context) {
                  //do something
                }),
                backgroundColor: Colors.green,
                icon: Icons.call,
              ),
              SlidableAction(
                onPressed: ((context) {
                  //do something
                }),
                backgroundColor: Colors.blue,
                icon: Icons.message,
              ),
            ],
          ),
          endActionPane: ActionPane(
            motion: DrawerMotion(), 
          children: [
            SlidableAction(
              onPressed: ((context){

              }),
              backgroundColor: Colors.red,
              icon: Icons.delete,
            )
          ]
          ),
          child: Container(
            decoration: BoxDecoration(color: Colors.grey),
            child: ListTile(
              title: Text(
                'Valery',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'Adolph',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
