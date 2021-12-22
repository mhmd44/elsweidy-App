import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class FakeLogin extends StatefulWidget {
  @override
  _FakeLoginState createState() => _FakeLoginState();
}

class _FakeLoginState extends State<FakeLogin> {
  FirebaseAuth instance = FirebaseAuth.instance; // server auth database

  String _email, _pass;

  @override
  void initState() {
    super.initState();
    instance.authStateChanges().listen((User user) {
      if (user == null) {
        print('no user');
      } else {
        print('there is a user');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: 'enter mail'),
              onChanged: (value) {
                setState(() {
                  this._email = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: 'enter password'),
              onChanged: (value) {
                setState(() {
                  this._pass = value;
                });
              },
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('LOGIN'),
            ),
            FlatButton(
              onPressed: () {},
              child: Text('REGISTER'),
            ),
          ],
        ),
      ),
    );
  }
}

void showProgressIndicator(context) {
  AlertDialog alertDialog = AlertDialog(
    backgroundColor: Colors.transparent,
    elevation: 0,
    content: CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
    ),
  );

  showDialog(
    barrierDismissible: false,
    barrierColor: Colors.white.withOpacity(0),
    context: context,
    builder: (context) => alertDialog,
  );
}
