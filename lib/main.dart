import 'package:flutter/material.dart';

main() => runApp(new AskApp());

class AskAppState extends State<AskApp> {
  var selectedAsk = 0;

  void answer() {
    setState(() {
      selectedAsk++;
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
          Text(asks.elementAt(selectedAsk)),
          ElevatedButton(
            child: Text('Choice 1'),
            onPressed: answer,
          ),
          ElevatedButton(child: Text('Choice 2'), onPressed: answer),
          ElevatedButton(child: Text('Choice 3'), onPressed: answer),
        ]),
      ),
    );
  }
}

class AskApp extends StatefulWidget {
  AskAppState createState() {
    return AskAppState();
  }
}
