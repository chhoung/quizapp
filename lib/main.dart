import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: new AwesomePage(),
      ),
    );
  }

}

class AwesomePage extends StatelessWidget {
  const AwesomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('HELLO WORLD'),
    );
  }
}