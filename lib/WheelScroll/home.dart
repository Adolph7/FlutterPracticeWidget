import 'package:flutter/material.dart';
import 'package:pratike_api/WheelScroll/am_am.dart';
import 'package:pratike_api/WheelScroll/hours.dart';
import 'package:pratike_api/WheelScroll/mins.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('WheelScroll'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.007,
              diameterRatio: 1.0, 
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 13,
                builder: (context, index){
                  return Hours(hours: index);
                }
              ) 
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            width: 70,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.007,
              diameterRatio: 1.0, 
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 60,
                builder: (context, index){
                  return Minutes(mins: index);
                }
              ) 
            ),
          ),
          Container(
            width: 90,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.009,
              diameterRatio: 0.9, 
              physics: FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 2,
                builder: (context, index){
                  if (index == 0) {
                    return AmPm(
                      isItAmPm: true

                    );
                  } else {
                    return AmPm(
                      isItAmPm: false
                      
                    );
                  }
                }
              ) 
            ),
          ),
        ],
      ) ,
    );
  }
}