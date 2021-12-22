import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shifaa_app/modules/ask_your_treatment.dart';
import 'package:shifaa_app/modules/choose_speciality.dart';
import 'package:shifaa_app/modules/drawer.dart';
import 'package:shifaa_app/modules/medical_tests.dart';
import 'package:shifaa_app/modules/notification.dart';
import 'package:shifaa_app/shared/components/components.dart';
import 'package:shifaa_app/styles/filter_icons.dart';

import 'arrival_location.dart';

class BestOfDoctors extends StatefulWidget {
  @override
  _BestOfDoctorsState createState() => _BestOfDoctorsState();
}

class _BestOfDoctorsState extends State<BestOfDoctors> {
  int defaultscreen;
  SharedPreferences prefs;

  saveData(String page) async {
    prefs = await SharedPreferences.getInstance();
    prefs.setString('check', page);
  }

  Future<String> getdata() async {
    prefs = await SharedPreferences.getInstance();
    return prefs.getString('check');
  }

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
              child: Container(
                width: 24,
                height: 24,
                color: Colors.white,
                child: Icon(
                  Filter.group_68417,
                ),
              ),
            ),
            SizedBox(
              width: 3,
            ),
            InkWell(
                onTap: () {
                  //  Navigator.pop(context);
                  showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            topLeft: Radius.circular(25)),
                      ),
                      builder: (context) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15)),
                            color: Colors.white,
                          ),
                          height: 300,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "قائمه الطلبات",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Container(
                                  width: double.infinity,
                                  height: 110,
                                  color: Color(0xffFCFCFC),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 4,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text('بانادول اكسترا'),
                                            Row(
                                              children: [
                                                Icon(Icons
                                                    .add_circle_outline_outlined),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text('1'),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  Icons.remove_circle_outline,
                                                  color: Colors.grey,
                                                ),
                                                Spacer(),
                                                Text(
                                                  '150 LE',
                                                  textAlign: TextAlign.end,
                                                  style: TextStyle(
                                                      color: Color(0xff07C6C4)),
                                                ),
                                              ],
                                            ),
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
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text('150.00   LE'),
                                    Spacer(),
                                    Text('منتج واحد')
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                defaultButton(
                                    text: 'استمرار',
                                    onpressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ArrivalLocation()));
                                    })
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: Icon(Filter.group_69334)),
          ],
        ),
      ),
      endDrawer: Drawer_const(),
      body: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
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
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
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
                          child: InkWell(
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

                              if (index == 0) {
                                saveData("1");
                              } else if (index == 1) {
                                saveData("2");
                              }
                            },
                            child: Column(
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/best_doctor2.png'),
                                    ),
                                  ),
                                ),
                                Text(
                                  "موعد في العياده",
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'افضل الاطباء',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      // push it outside with singleChildScrollview
                      itemBuilder: (context, index) => buildDoctorItem(),
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 10),
                      itemCount: 4),
                ],
              ),
            )
          ],
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

Widget buildDoctorItem() => Container(
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

Future<String> getdata() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('check');
}
