import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import '../shared/shared.dart';
import 'package:quizapp/services/auth.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  AuthService auth = AuthService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    auth.getUser.then((user) {
      if (user != null) {
        Navigator.pushReplacementNamed(context, '/topics');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        // decoration: BoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlutterLogo(
              size: 150,
            ),
            Text(
              'Login to Start',
              style: Theme.of(context).textTheme.headline,
              textAlign: TextAlign.center,
            ),
            Text('Your Tagline'),
            LoginButton(
              text: 'LOGIN WITH GOOGLE',
              icon: FontAwesomeIcons.google,
              color: Colors.black45,
              loginMethod: auth.googleSignIn,
            ),
            LoginButton(text: 'Continue as Guest', loginMethod: auth.annonLogin)
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;
  final Function loginMethod;

  const LoginButton({this.color, this.icon, this.text, this.loginMethod});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: FlatButton.icon(
        label: Expanded(
            child: Text(
          text,
          textAlign: TextAlign.center,
        )),
        padding: EdgeInsets.all(30),
        color: color,
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        onPressed: () async {
          var user = await loginMethod();
          if (user != null) {
            Navigator.pushReplacementNamed(context, '/topics');
          }
        },
      ),
    );
  }
}
