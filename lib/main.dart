import 'package:flutter/material.dart';
import './question.dart';

main() => runApp(new AskApp());

class _AskAppState extends State<AskApp> {
  var _selectedAsk = 0;

  void _answer() {
    setState(() {
      _selectedAsk++;
    });
    print('Answered');
  }

  @override
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
          Question(asks.elementAt(_selectedAsk)),
          ElevatedButton(
            child: Text('Choice 1'),
            onPressed: _answer,
          ),
          ElevatedButton(child: Text('Choice 2'), onPressed: _answer),
          ElevatedButton(child: Text('Choice 3'), onPressed: _answer),
        ]),
      ),
    );
  }
}

class AskApp extends StatefulWidget {
  _AskAppState createState() {
    return _AskAppState();
  }
}
