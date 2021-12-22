import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:shifaa_app/modules/thanks1.dart';
import 'package:shifaa_app/shared/components/components.dart';

class ConfirmReserveTests extends StatefulWidget {
  @override
  _ConfirmReserveTestsState createState() => _ConfirmReserveTestsState();
}

class _ConfirmReserveTestsState extends State<ConfirmReserveTests> {
  List<Widget> icons = [
    Icon(
      Icons.star,
      color: Colors.grey,
    ),
    Icon(
      Icons.star,
      color: Colors.yellow,
    ),
    Icon(
      Icons.star,
      color: Colors.yellow,
    ),
    Icon(
      Icons.star,
      color: Colors.yellow,
    ),
    Icon(
      Icons.star,
      color: Colors.yellow,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('تاكيد الحجز')),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Thanks1()));
              },
              child: Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'مركز المختبر مدينه بدر  ',
                                    textAlign: TextAlign.end,
                                  ),
                                  Text(
                                    'مدينه بدر  -  الدور الاول',
                                    textAlign: TextAlign.end,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                                width: 47,
                                height: 47,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/confirm_tests.png")),
                                    borderRadius: BorderRadius.circular(30)))
                          ],
                        ),
                        Text(
                          'فحص السكر التراكمى',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xff07C6C4)),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: const [
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
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      flex: 1,
                      child: Image(
                          image: AssetImage('assets/images/confirm_tests.png')))
                ],
              ),
              Divider(
                height: 5,
                color: Color(0xffF3F3F3),
                thickness: 5,
              ),
              Text(
                'اسم المريض',
                style: TextStyle(color: Color(0xff989898)),
              ),
              Text('إيهاب توفيق السيد'),
              SizedBox(
                height: 20,
              ),
              Text(
                'رقم الهاتف',
                style: TextStyle(color: Color(0xff989898)),
              ),
              Text('20150689758'),
              SizedBox(
                height: 20,
              ),
              Text(
                'تاريخ الحجز',
                style: TextStyle(color: Color(0xff989898)),
                textAlign: TextAlign.end,
              ),
              Text(
                'السبت 11 نوفمبر ',
                textAlign: TextAlign.end,
              ),
              Text(
                'الدخول باسبقيه الحضور  ',
                textAlign: TextAlign.end,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('شارع الجمهوريه , المنصوره , الدقهليه'),
                  Icon(
                    Icons.location_on,
                    color: Color(0xff04DFDD),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 5,
                color: Color(0xffF3F3F3),
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'LE',
                    style: TextStyle(color: Color(0xff989898)),
                  ),
                  Text(
                    '100',
                    style: TextStyle(color: Color(0xff989898)),
                  ),
                  Spacer(),
                  Text(
                    'المبلغ',
                    style: TextStyle(color: Color(0xff989898)),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('LE'),
                  Text('100'),
                  Spacer(),
                  Text(
                    'اجمالى المبلغ شامل الضريبه',
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              defaultButton(
                  text: 'تاكيد',
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Thanks1()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
