import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shifaa_app/modules/fake_login.dart';

class FakeHome extends StatefulWidget {
  const FakeHome({Key key}) : super(key: key);

  @override
  _FakeHomeState createState() => _FakeHomeState();
}

class _FakeHomeState extends State<FakeHome> {
  FirebaseAuth instance = FirebaseAuth.instance;
  String _email, _pass;

  @override
  void initState() {
    instance.authStateChanges().listen((User user) {
      if (user == null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => FakeLogin()));
      } else {}
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                instance.signOut();
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: Center(
        child: Text('welcome'),
      ),
    );
  }
}
