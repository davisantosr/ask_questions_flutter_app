import 'package:flutter/material.dart';

main() => runApp(new AskApp());

@override
class AskApp extends StatelessWidget {
  void answer() {
    print('Answered');
  }

  Widget build(BuildContext context) {
    final List<String> asks = [
      'What is your favorite color?',
      'What is your favorite pet?'
    ];

    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Asking'),
        ),
        body: Column(children: [
          Text(asks.elementAt(0)),
          ElevatedButton(
            child: Text('Choice 1'),
            onPressed: answer,
          ),
          ElevatedButton(
            child: Column(
              children: [Text('Test 1'), Text('Test2')],
            ),
            onPressed: () {
              print('Answer 2');
            },
          ),
          ElevatedButton(
            child: Text('Choice 3'),
            onPressed: () => print('Answer 3'),
          ),
        ]),
      ),
    );
  }
}
