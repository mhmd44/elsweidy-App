import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shifaa_app/modules/other_appointment1.dart';
import 'package:shifaa_app/modules/rates.dart';
import 'package:shifaa_app/shared/components/components.dart';
import 'package:shifaa_app/styles/filter_icons.dart';

class ReserveAppointment extends StatefulWidget {
  @override
  _ReserveAppointmentState createState() => _ReserveAppointmentState();
}

class _ReserveAppointmentState extends State<ReserveAppointment> {
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
      body: SafeArea(
        child: Center(
          child: Container(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Image(
                  image: AssetImage('assets/images/reserveAppointment.png'),
                  width: double.infinity,
                  fit: BoxFit.fill,
                  height: 250,
                ),
                Container(
                  margin: EdgeInsets.only(top: 220),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  alignment: Alignment.bottomCenter,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(children: const [
                        Text('سنين خبره'),
                        Icon(
                          Filter.path_59548,
                          color: Color(0xff04DFDD),
                        ),
                        Spacer(),
                        Text(
                          'اسلام على احمد',
                        ),
                      ]),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'أستاذ امراض القلب بالقصر العينى',
                          )
                        ],
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        Text('شارع الجمهوريه , المنصوره , الدقهليه'),
                        Icon(
                          Icons.location_on,
                          color: Color(0xff04DFDD),
                        ),
                      ]),
                      Row(
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => rates()));
                                },
                                child: Text('مشاهده التقييمات',
                                    style: TextStyle(
                                      color: Color(0xff04DFDD),
                                    ))),
                            Spacer(),
                            InkWell(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            title: Center(
                                              child: Text(
                                                'اضافه تقييم',
                                              ),
                                            ),
                                            content: Container(
                                              height: 250,
                                              width: 350,
                                              child: Column(
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: icons
                                                        .map((e) => e)
                                                        .toList(),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  Container(
                                                    height: 100,
                                                    width: 300,
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                      color: Colors.blue,
                                                      width: 1,
                                                    )),
                                                    child: Center(
                                                      child: TextFormField(
                                                        maxLines: 3,
                                                        decoration:
                                                            InputDecoration(
                                                                border:
                                                                    InputBorder
                                                                        .none),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
                                                  ),
                                                  defaultButton(text: 'حسنا')
                                                ],
                                              ),
                                            ),
                                          ));
                                },
                                child: Text('اضافه تقييم',
                                    style: TextStyle(
                                      color: Color(0xff04DFDD),
                                    ))),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text('السعر'),
                                    Text(
                                      '200 جنيه',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff606060)),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 10),
                                Icon(
                                  Icons.timer,
                                  color: Color(0xff04DFDD),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      'وقت الانتظار',
                                    ),
                                    Text('دقائق'),
                                  ],
                                ),
                                SizedBox(width: 10),
                                Icon(Icons.timer, color: Color(0xff04DFDD)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'المواعيد المتاحه',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        'السبت - الخميس 01:00',
                        textAlign: TextAlign.end,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      defaultButton(
                          text: 'حجز موعد',
                          onpressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OtherAppointment1()));
                          })
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
