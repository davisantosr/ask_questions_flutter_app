import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
          Answer('Choice 1', _answer),
          Answer('Choice 2', _answer),
          Answer('Choice 3', _answer),
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
