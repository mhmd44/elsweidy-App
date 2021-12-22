import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

class FakeRegister extends StatefulWidget {
  @override
  _FakeRegisterState createState() => _FakeRegisterState();
}

class _FakeRegisterState extends State<FakeRegister> {
  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: const Color.fromRGBO(235, 236, 237, 1),
    borderRadius: BorderRadius.circular(5.0),
  );
  final _pinPutFocusNode = FocusNode();
  final _pageController = PageController();
  var _name, _email, _pass, _phone;
  FirebaseAuth instance = FirebaseAuth.instance;
  var loginkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: loginkey,
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
              decoration: InputDecoration(hintText: 'enter your name'),
              onChanged: (value) {
                setState(() {
                  this._name = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: 'enter your email'),
              onChanged: (value) {
                setState(() {
                  this._email = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(hintText: 'enter your pass'),
              onChanged: (value) {
                setState(() {
                  this._pass = value;
                });
              },
            ),
            PinPut(
              eachFieldWidth: 50.0,
              eachFieldHeight: 50.0,
              withCursor: true,
              fieldsCount: 4,
              focusNode: _pinPutFocusNode,
              // controller: _pageController,
              eachFieldMargin: EdgeInsets.symmetric(horizontal: 10),
              // onSubmit: (String pin) => _showSnackBar(pin),
              // submittedFieldDecoration: pinPutDecoration,
              // selectedFieldDecoration: pinPutDecoration,
              // followingFieldDecoration: pinPutDecoration,
              pinAnimationType: PinAnimationType.scale,
              textStyle: const TextStyle(
                  color: Colors.white, fontSize: 20.0, height: 1),
            ),
          ],
        ),
      ),
    );
  }
}
