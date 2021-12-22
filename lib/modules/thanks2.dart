import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'best_doctorslastone.dart';

class Thanks2 extends StatefulWidget {
  @override
  _Thanks2State createState() => _Thanks2State();
}

class _Thanks2State extends State<Thanks2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BestOfDoctorsLastOne()));
              },
              child: Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'شكرا',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/images/thanks.png')),
                Text('لقد تم حجز موعد العرض بنجاح '),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('pm 01 : 00'),
                    Text('السبت 11 نوفمبر '),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: -1,
                      blurRadius: 2,
                      offset: Offset(0, 0),
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.phone_in_talk_outlined,
                          color: Color(0xff07C6C4),
                        ),
                        Text('مكالمه صوتيه'),
                        Text('500'),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'د. اسلام على احمد',
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Color(0xff0BA8A6)),
                        ),
                        Text('أستاذ امراض القلب بالقصر العينى')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Image(
                        image: AssetImage('assets/images/appointment.png')),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
