import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shifaa_app/shared/components/components.dart';
import 'package:shifaa_app/styles/filter_icons.dart';

import 'other_appointment2next.dart';

class ReserveAppointment2videocall extends StatefulWidget {
  @override
  _ReserveAppointment2videocallState createState() =>
      _ReserveAppointment2videocallState();
}

class _ReserveAppointment2videocallState
    extends State<ReserveAppointment2videocall> {
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
      body: Container(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image(
              image: AssetImage('assets/images/reserveAppointment.png'),
              width: double.infinity,
              fit: BoxFit.fill,
              height: 340,
            ),
            Container(
              margin: EdgeInsets.only(top: 300),
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(children: const [
                              Text('سنين خبره'),
                              Icon(
                                Filter.path_59548,
                                color: Color(0xff04DFDD),
                              ),
                              Spacer(),
                              Text('اسلام على احمد'),
                            ])),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text('أستاذ امراض القلب بالقصر العينى')],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text('شارع الجمهوريه , المنصوره , الدقهليه'),
                        Icon(
                          Icons.location_on,
                          color: Color(0xff04DFDD),
                        ),
                      ]),
                  Row(
                      // mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'مشاهده التقييمات',
                          style: TextStyle(color: Color(0xff07C6C4)),
                        ),
                        Spacer(),
                        Text(
                          'اضافه تقييم',
                          style: TextStyle(color: Color(0xff07C6C4)),
                        ),
                        Row(
                          children: icons.map((e) => e).toList(),
                        ),
                      ]),
                  Text(
                    'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.',
                    textAlign: TextAlign.end,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'إذا كنت تحتاج إلى عدد أكبر من الفقرات',
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'أسعار التواصل عبر التطبيق',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Icon(
                                Icons.video_call,
                                color: Color(0xff07C6C4),
                              ),
                              Text('مكالمه فيديو'),
                              Text('500'),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Icon(
                                Icons.phone_in_talk,
                                color: Color(0xff07C6C4),
                              ),
                              Text('مكالمه صوتيه'),
                              Text('500'),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Icon(
                                Filter.message_circle,
                                color: Color(0xff07C6C4),
                              ),
                              Text('رسائل صوتيه'),
                              Text('500'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (c) => OtherAppointment2()));
                      },
                      child: defaultButton(text: 'حجز موعد'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
