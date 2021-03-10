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
    final List<Map<String, Object>> asks = [
      {
        'text': 'What is your favorite color?',
        'answers': ['black', 'red', 'blue', 'white'],
      },
      {
        'text': 'What is your favorite pet?',
        'answers': ['Elephant', 'Aligator', 'Giraffe', 'Rhino'],
      },
      {
        'text': 'What is your favorite Super Hero?',
        'answers': ['Batman', 'Flash', 'Iron Man', 'Spiderman'],
      },
    ];
    List<String> answers = asks[_selectedAsk]['answers'];
    List<Widget> widgets = answers.map((t) => Answer(t, _answer)).toList();

    // for (var textAnswer in asks[_selectedAsk]['answers']) {
    //   answersArr.add(Answer(textAnswer, _answer));
    // }

    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Asking'),
        ),
        body: Column(children: [
          Question(asks.elementAt(_selectedAsk)['text']),
          ...widgets,
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
