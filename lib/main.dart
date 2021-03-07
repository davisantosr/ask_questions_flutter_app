import 'package:flutter/material.dart';

main() => runApp(new AskApp());

@override
class AskApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Asking'),
        ),
        body: Text('Hello'),
      ),
    );
  }
}
