import 'package:flutter/material.dart';

class TypingText extends StatefulWidget {
  const TypingText({super.key});

  @override
  State<TypingText> createState() => _TypingTextState();
}

class _TypingTextState extends State<TypingText> {
  late String text = '';
  final _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Textfield'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 300,
                width: 300,
                color: Colors.lightBlue,
                child: Text('What you typing: ${text}'),
              )
            ),
            SizedBox(height: 28,),
            Expanded(
              flex: 1,
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hint: Text('Typing....'),
                  suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        _controller.clear();
                      });
                    }, 
                    icon: Icon(Icons.delete)
                  ),
                  border: OutlineInputBorder()
                ),
              ),
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  text = _controller.text;
                  _controller.clear();
                });
              }, 
              child: Text('click')
            )
          ],
        ),
      ),
    );
  }
 
}