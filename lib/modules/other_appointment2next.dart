import 'package:flutter/material.dart';
import 'package:shifaa_app/modules/confirm_reserve.dart';
import 'package:shifaa_app/shared/components/components.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import 'other_appointment3pay.dart';

class OtherAppointment2 extends StatefulWidget {
  @override
  _OtherAppointment2State createState() => _OtherAppointment2State();
}

class _OtherAppointment2State extends State<OtherAppointment2> {
  var _value = 1;

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
                        builder: (context) => OtherAppointment3Pay()));
              },
              child: Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'اختر مواعد اخر',
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
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
                        'د. اسلام على احمد',
                        textAlign: TextAlign.end,
                        style: TextStyle(color: Color(0xff0BA8A6)),
                      ),
                      Text('أستاذ امراض القلب بالقصر العينى')
                    ],
                  ),
                ),
                Image(image: AssetImage('assets/images/appointment.png'))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SfDateRangePicker(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('المواعيد المتاحه'),
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
                    value: 3,
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
                    value: 4,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Icon(Icons.video_call),
                        Text('مكالمه فيديو'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Icon(Icons.video_call),
                        Text('مكالمه فيديو'),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Icon(Icons.video_call),
                        Text('مكالمه فيديو'),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 40,
            ),
            defaultButton(
                text: 'التالي',
                backcolor: Colors.white,
                textcolor: Color(0xff07C6C4),
                onpressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OtherAppointment3Pay()));
                })
          ],
        ),
      ),
    );
  }
}
