import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shifaa_app/modules/thanks2.dart';
import 'package:shifaa_app/shared/components/components.dart';

import 'medical_tests.dart';

class ConfirmReserve2WithCall extends StatefulWidget {
  @override
  _ConfirmReserve2WithCallState createState() =>
      _ConfirmReserve2WithCallState();
}

class _ConfirmReserve2WithCallState extends State<ConfirmReserve2WithCall> {
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MedicalTests()));
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
              'تاكيد الحجز',
              textAlign: TextAlign.end,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Column(
                    children: [
                      Icon(
                        Icons.phone_in_talk_outlined,
                        color: Color(0xff07C6C4),
                      ),
                      Text('مكالمه فيديو'),
                      Text('500'),
                    ],
                  ),
                ),
                Spacer(),
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
              height: 15,
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'اسم المريض',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                          color: Color(
                        0xff989898,
                      )),
                    ),
                    Text(
                      'إيهاب توفيق السيد',
                      textAlign: TextAlign.end,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'رقم الهاتف',
                      style: TextStyle(
                          color: Color(
                        0xff989898,
                      )),
                      textAlign: TextAlign.end,
                    ),
                    Text('20150689758')
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'تاريخ الحجز',
                      style: TextStyle(
                          color: Color(
                        0xff989898,
                      )),
                      textAlign: TextAlign.end,
                    ),
                    Text(
                      'السبت 11 نوفمبر ',
                      textAlign: TextAlign.end,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Text('فيزا'), Icon(Icons.credit_card)],
                      ),
                      Text(
                        'اسلام',
                        textAlign: TextAlign.end,
                        style: TextStyle(color: Color(0xff666666)),
                      ),
                      Text(
                        ' 2523 ***** 02568 9988',
                        style: TextStyle(color: Color(0xff666666)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            '26/11 ',
                            textAlign: TextAlign.end,
                            style: TextStyle(color: Color(0xff666666)),
                          ),
                          Text(
                            'تاريخ الانتهاء',
                            textAlign: TextAlign.end,
                            style: TextStyle(color: Color(0xff666666)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Color(0xffE5E5E5),
                    width: .5,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            defaultButton(
                text: 'تاكيد',
                onpressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Thanks2()));
                })
          ],
        ),
      ),
    );
  }
}
