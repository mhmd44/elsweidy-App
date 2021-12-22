import 'package:flutter/material.dart';
import 'package:shifaa_app/modules/confirm_reserve.dart';
import 'package:shifaa_app/shared/components/components.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'confirm_reserve_tests.dart';

class AppointmentForTests extends StatefulWidget {
  @override
  _AppointmentForTestsState createState() => _AppointmentForTestsState();
}

class _AppointmentForTestsState extends State<AppointmentForTests> {
  var _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('معاد الحجز')),
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
                        builder: (context) => ConfirmReserveTests()));
              },
              child: Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'اختر مواعد',
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'فحص السكر التراكمى',
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Color(0xff0BA8A6)),
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
                      ],
                    ),
                  ),
                  Image(image: AssetImage('assets/images/small.png'))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SfDateRangePicker(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('اختر موعد اخر'),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ConfirmReserve()));
                      },
                      child: Text('السبت 11 نوفمبر ')),
                  SizedBox(
                    width: 10,
                  ),
                  Radio(
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ConfirmReserve()));
                      },
                      child: Text('السبت 11 نوفمبر ')),
                  SizedBox(
                    width: 10,
                  ),
                  Radio(
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      }),
                ],
              ),

              // Padding(
              //   padding: const EdgeInsetsDirectional.only(start: 10, end: 10),
              //   child: Container(
              //     width: double.infinity,
              //     height: 1,
              //     color: Colors.grey[300],
              //   ),
              // ),

              SizedBox(
                height: 40,
              ),
              defaultButton(text: 'التالي', textcolor: Colors.white),
            ],
          ),
        ),
      ),
    );
  }
}
