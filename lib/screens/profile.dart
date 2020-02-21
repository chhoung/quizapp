import 'package:flutter/material.dart';
import 'package:quizapp/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  final AuthService auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('profile'),
      ),
      body: Center(
          child: FlatButton(
        child: Text('Logout'),
        color: Colors.red,
        onPressed: () async {
          await auth.signOut();
          Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
        },
      )),
    );
  }
}
