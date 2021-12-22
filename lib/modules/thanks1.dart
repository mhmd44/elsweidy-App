import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'best_doctorslastone.dart';

class Thanks1 extends StatefulWidget {
  @override
  _Thanks1State createState() => _Thanks1State();
}

class _Thanks1State extends State<Thanks1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          '120 LE',
                          style: TextStyle(
                              color: Color(0xff07C6C4),
                              decoration: TextDecoration.lineThrough),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '120 LE',
                          style:
                              TextStyle(decoration: TextDecoration.lineThrough),
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('فحص السكر التراكمى'),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('HBAC1'),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('تحليل'),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('1'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Image(image: AssetImage('assets/images/small.png')),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('شارع الجمهوريه , المنصوره , الدقهليه'),
                        Icon(
                          Icons.location_on,
                          color: Color(0xff04DFDD),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
