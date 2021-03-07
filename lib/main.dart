import 'package:flutter/material.dart';

main() => runApp(new AskApp());

@override
class AskApp extends StatelessWidget {
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
            onPressed: null,
          ),
          ElevatedButton(
            child: Text('Choice 2'),
            onPressed: null,
          ),
          ElevatedButton(
            child: Text('Choice 3'),
            onPressed: null,
          ),
        ]),
      ),
    );
  }
}
