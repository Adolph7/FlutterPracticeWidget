import 'package:flutter/material.dart';

class AlertMessage extends StatefulWidget {
  const AlertMessage({super.key});

  @override
  State<AlertMessage> createState() => _AlertMessageState();
}

class _AlertMessageState extends State<AlertMessage> {
  void _showDialogue(){
      showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Text('Titulo'),
            content: Text('subtitulo'),
            actions: [
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pop();
                }, 
                child: Text('ok')
              )
            ],
          ); 
        }
      );
    }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogue'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _showDialogue, 
          child: Text('AlertDialogue')
        ),
      ),
    );
  }
}