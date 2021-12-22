import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shifaa_app/modules/choose_speciality.dart';
import 'package:shifaa_app/modules/drawer.dart';
import 'package:shifaa_app/modules/image_notification.dart';
import 'package:shifaa_app/modules/notification.dart';
import 'package:shifaa_app/shared/components/components.dart';
import 'package:shifaa_app/styles/filter_icons.dart';

import 'ask_your_treatment.dart';
import 'medical_tests.dart';

class BestOfDoctorsLastOne extends StatefulWidget {
  @override
  _BestOfDoctorsLastOneState createState() => _BestOfDoctorsLastOneState();
}

class _BestOfDoctorsLastOneState extends State<BestOfDoctorsLastOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        leading: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Notifications()));
              },
              child: Icon(
                Filter.group_68417,
              ),
            ),
            SizedBox(
              width: 3,
            ),
            Icon(Filter.group_69334),
          ],
        ),
      ),
      endDrawer: Drawer_const(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'الاء ',
                    style: TextStyle(
                        color: Color(0xff0BA8A6),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ', مرحبا',
                    style: TextStyle(
                        color: Color(0xff0BA8A6),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                'ابحث عن طبيبك لجميع التخصصات',
                style: TextStyle(
                  color: Color(0xff0BA8A6),
                  fontSize: 18,
                ),
                textAlign: TextAlign.end,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/best_doctor.png'),
                      fit: BoxFit.fill),
                ),
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: 4,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            index == 0 || index == 1
                                ? Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            chooseSpeciality()))
                                : index == 2
                                    ? Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AskYourTreatment()))
                                    : Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                MedicalTests()));
                          },
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/best_doctor2.png'),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "موعد في العياده",
                        ),
                      ],
                    ),
                  );
                },
              ),
              Text(
                'المواعيد',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: -1,
                          blurRadius: 2,
                          offset: Offset(0, 0),
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'الدكتور',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xff989898)),
                                ),
                                Text(
                                  'د. اسلام على ',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 13, color: Color(0xff606060)),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'الوقت',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xff989898)),
                                ),
                                Text(
                                  'pm 01 : 00',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 13, color: Color(0xff606060)),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'التاريخ',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 12, color: Color(0xff989898)),
                                ),
                                Text(
                                  'السبت 11 نوفمبر  ',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 13, color: Color(0xff606060)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        DottedLine(
                          direction: Axis.horizontal,
                          lineLength: double.infinity,
                          lineThickness: 1.0,
                          dashLength: 4.0,
                          dashColor: Color(0xff07C6C4),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: const [
                                  Text(
                                    'المكان',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff989898)),
                                  ),
                                  Text(
                                    'عياده بدر شارع الجمهوريه  ',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        fontSize: 13, color: Color(0xff606060)),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'نوع التخصص',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff989898)),
                                  ),
                                  Text(
                                    'اسنان ',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        fontSize: 13, color: Color(0xff606060)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        defaultButton(
                            text: 'تواصل',
                            onpressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ImageNotification()));
                            })
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '150',
                                      style:
                                          TextStyle(color: Color(0xff07C6C4)),
                                    ),
                                    Text('بانادول اكسترا'),
                                  ],
                                ),
                                Text(
                                  'الام والطفل',
                                  textAlign: TextAlign.end,
                                )
                              ],
                            ),
                          ),
                          Expanded(
                              flex: 1,
                              child: Image(
                                  image: AssetImage(
                                      'assets/images/mother&child.png')))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('شارع الجمهوريه , المنصوره , الدقهليه'),
                          Icon(Icons.location_on)
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '450.00   LE',
                            style: TextStyle(color: Color(0xff07C6C4)),
                          ),
                          Spacer(),
                          Text(
                            'الاجمالى',
                            style: TextStyle(color: Color(0xff07C6C4)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/best_doctor.png'),
                      fit: BoxFit.fill),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> icons = [
  const Icon(
    Icons.star,
    color: Colors.yellow,
  ),
  const Icon(
    Icons.star,
    color: Colors.yellow,
  ),
  const Icon(
    Icons.star,
    color: Colors.yellow,
  ),
  const Icon(
    Icons.star,
    color: Colors.yellow,
  ),
  const Icon(
    Icons.star,
    color: Colors.yellow,
  ),
];

Widget buildDoctorItem() => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
              flex: 1,
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.green,
              )),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  'د. اسلام على احمد',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'تخصص امراض القلب',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text("  4.5  "),
                    Row(
                      children: icons.map((e) => e).toList(),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/best_doctor3.png'),
                  )),
            ),
          ),
        ],
      ),
    );
