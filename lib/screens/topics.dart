import 'package:flutter/material.dart';
//import '../shared/shared.dart';
import 'package:quizapp/shared/bottom_nav.dart';

class TopicsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('topics'), backgroundColor: Colors.purple),
      bottomNavigationBar: AppBottomNav(),
    );
  }
}
