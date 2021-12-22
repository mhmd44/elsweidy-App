import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shifaa_app/modules/Last1WhoWEAre.dart';
import 'package:shifaa_app/modules/Last2ConditionsAndRules.dart';
import 'package:shifaa_app/modules/Last3SpecialPolicy.dart';
import 'package:shifaa_app/modules/account_settings.dart';
import 'package:shifaa_app/modules/last4_common_questions.dart';
import 'package:shifaa_app/modules/last5_contact_us.dart';
import 'package:shifaa_app/modules/my_appointments.dart';
import 'package:shifaa_app/styles/filter_icons.dart';

class Drawer_const extends StatefulWidget {
  @override
  State<Drawer_const> createState() => _Drawer_constState();
}

class _Drawer_constState extends State<Drawer_const> {
  @override
  Widget build(BuildContext context) {
    var change;
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 80.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image(image: AssetImage('assets/images/shifaaLogo.png')),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccountSettings()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('اعدادات الحساب'),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Filter.group_32203,
                    color: Color(0xffFF0080),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyAppointments()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('مواعيدي'),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.calendar_today,
                    color: Color(0xffE2AFCA),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Switch(
                  value: change,
                  onChanged: (bool newValue) {
                    setState(() {
                      change = newValue;
                    });
                  },
                  activeColor: Colors.green,
                  activeTrackColor: Colors.deepOrange,
                  inactiveTrackColor: Colors.red[100],
                  inactiveThumbColor: Colors.red,
                  dragStartBehavior: DragStartBehavior.start,
                ),
                Spacer(),
                Text('الاشعارات'),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.add_alert,
                  color: Color(0xffC9C9C9),
                )
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Last1WhoWeAre()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('من نحن'),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Filter.group_32209,
                    color: Color(0xffDCDC2E),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Last5ContactUs()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('تواصل معنا'),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.headset_mic_outlined,
                    color: Color(0xff46D9FF),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Last3SpecialPolicy()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('سياسه الخصوصيه'),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Filter.group_32211,
                    color: Color(0xff75CE28),
                  )
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Last2ConditionsAndRules()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('الشروط والأحكام'),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Filter.Rochette,
                    color: Color(0xffFF8B60),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Last4CommonQuestions()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('الأسئله الشائعه'),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Filter.group_32213,
                    color: Color(0xff9692FF),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('تسجيل الخروج'),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Filter.group_32215,
                  color: Color(0xffCC0000),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
