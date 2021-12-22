import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'appointment_for_tests.dart';

class DataOfTests extends StatefulWidget {
  @override
  _DataOfTestsState createState() => _DataOfTestsState();
}

class _DataOfTestsState extends State<DataOfTests> {
  List<Widget> icons = [
    Icon(
      Icons.star,
      color: Colors.grey,
      size: 20,
    ),
    Icon(
      Icons.star,
      color: Colors.yellow,
      size: 20,
    ),
    Icon(
      Icons.star,
      color: Colors.yellow,
      size: 20,
    ),
    Icon(
      Icons.star,
      color: Colors.yellow,
      size: 20,
    ),
    Icon(
      Icons.star,
      color: Colors.yellow,
      size: 20,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(child: Text('بيانات التحاليل')),
        actions: [
          // InkWell(
          //     onTap: (){
          //       Navigator.push(context, MaterialPageRoute(builder: (context)=>ReserveAppointment2()));
          //     },
          //     child: Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image(
                width: double.infinity,
                image: AssetImage(
                  'assets/images/medical_tests.png',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'فحص السكر التراكمى',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xff07C6C4)),
                  ),
                ],
              ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: icons.map((e) => e).toList(),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
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
                    style: TextStyle(decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 5,
                width: double.infinity,
                color: Color(0xffF3F3F3),
              ),
              Text(
                'مواعيد الحجز',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios),
                  Container(
                    width: 86,
                    height: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black, width: .2)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 86,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                topLeft: Radius.circular(5)),
                            color: Color(0xffECECEC),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'اليوم',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [Text('ص '), Text('10 : 00  ')],
                            ),
                            Text('الى '),
                            Row(
                              children: [Text('م '), Text('09 : 00  ')],
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        AppointmentForTests()));
                          },
                          child: Container(
                            width: 86,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xff04DFDD),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'احجز',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 86,
                    height: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black, width: .2)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 86,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                topLeft: Radius.circular(5)),
                            color: Color(0xffECECEC),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'اليوم',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [Text('ص '), Text('10 : 00  ')],
                            ),
                            Text('الى '),
                            Row(
                              children: [Text('م '), Text('09 : 00  ')],
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => AppointmentForTests()));
                          },
                          child: Container(
                            width: 86,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xff04DFDD),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'احجز',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 86,
                    height: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black, width: .2)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 86,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(5),
                                topLeft: Radius.circular(5)),
                            color: Color(0xffECECEC),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'اليوم',
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [Text('ص '), Text('10 : 00  ')],
                            ),
                            Text('الى '),
                            Row(
                              children: [Text('م '), Text('09 : 00  ')],
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => AppointmentForTests()));
                          },
                          child: Container(
                            width: 86,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Color(0xff04DFDD),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(5),
                                bottomLeft: Radius.circular(5),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'احجز',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'الدخول باسبقيه الحضور',
                  style: TextStyle(fontSize: 14, color: Color(0xff989898)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 5,
                width: double.infinity,
                color: Color(0xffF3F3F3),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'التفاصيل',
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'حصرى لمرضى شفاء',
                textAlign: TextAlign.end,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 5,
                width: double.infinity,
                color: Color(0xffF3F3F3),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'مقدم الخدمه',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'مركز المختبر مدينه بدر ',
                        textAlign: TextAlign.end,
                      ),
                      Text(
                        'معمل تحاليل ',
                        textAlign: TextAlign.end,
                      )
                    ],
                  ),
                  Image(
                    image: AssetImage('assets/images/small.png'),
                  ),
                ],
              ),
              Image(
                image: AssetImage('assets/images/map.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
