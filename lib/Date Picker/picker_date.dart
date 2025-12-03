import 'package:flutter/material.dart';
import 'package:pratike_api/main.dart';

class PickerDate extends StatefulWidget {
  const PickerDate({super.key});

  @override
  State<PickerDate> createState() => _PickerDateState();
}

class _PickerDateState extends State<PickerDate> {
  DateTime _dateTime = DateTime.now();
  void _showDate (){
    showDatePicker(
      context: context, 
      initialDate: _dateTime,
      firstDate: DateTime(2000), 
      lastDate: DateTime(2030)
    ).then((value){
      setState(() {
        _dateTime = value!;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date Time Picker'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(_dateTime.toString()),
            SizedBox(height: 35,),
            MaterialButton(
              onPressed: _showDate,
              child: Text('Select Date'),
            )
          ],
        ),
      ),
    );
  }
}
