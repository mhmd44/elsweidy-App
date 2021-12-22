import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shifaa_app/shared/components/components.dart';

import 'confirm_reserve2withcall.dart';

class Paying extends StatefulWidget {
  const Paying({Key key}) : super(key: key);

  @override
  _PayingState createState() => _PayingState();
}

class _PayingState extends State<Paying> {
  var emailControl = TextEditingController();
  var phoneNumber = TextEditingController();
  var passControl = TextEditingController();
  bool isPasswordshow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ConfirmReserve2WithCall()));
              },
              child: Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'الدفع',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Text(
              'اسم الفيزا',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          defaultFormField(
              color: Colors.black,
              backgroundcolor: Color(0xffF9F9F9),
              controller: phoneNumber,
              type: null),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Text(
              'رقم الفيزا',
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          defaultFormField(
              color: Colors.black,
              backgroundcolor: Color(0xffF9F9F9),
              type: TextInputType.visiblePassword,
              prefix: InkWell(
                  onTap: () {
                    setState(() {
                      isPasswordshow = !isPasswordshow;
                    });
                  },
                  child: Icon(!isPasswordshow
                      ? Icons.visibility
                      : Icons.visibility_off)),
              ispassword: isPasswordshow,
              label: ''),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text('كلمه السر'),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'What do people call you?',
                        labelText: 'Name *',
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text('تاريخ انتهاء الصلاحيه'),
                    TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        hintText: 'What do people call you?',
                        labelText: 'Name *',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ConfirmReserve2WithCall()));
              },
              child: defaultButton(
                text: 'التالي',
              ))
        ],
      ),
    );
  }
}
