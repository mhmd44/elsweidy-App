import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shifaa_app/modules/rates.dart';
import 'package:shifaa_app/modules/thanks3.dart';
import 'package:shifaa_app/shared/components/components.dart';

class ConfirmReserve extends StatefulWidget {
  @override
  _ConfirmReserveState createState() => _ConfirmReserveState();
}

class _ConfirmReserveState extends State<ConfirmReserve> {
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
                    context, MaterialPageRoute(builder: (context) => rates()));
              },
              child: Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Thanks3()));
                  },
                  child: Text(
                    'تاكيد الحجز',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Text('وقت الانتظار'),
                          Text('دقائق'),
                        ],
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.timer,
                        color: Color(0xff07C6C4),
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
                      Icon(Icons.timer, color: Color(0xff07C6C4))
                    ],
                  ),
                ],
              ),
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
                      style: TextStyle(color: Color(0xff989898)),
                      textAlign: TextAlign.start,
                    ),
                    Text('إيهاب توفيق السيد')
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
                    Text('رقم الهاتف',
                        style: TextStyle(color: Color(0xff989898))),
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
                      style: TextStyle(color: Color(0xff989898)),
                      textAlign: TextAlign.right,
                    ),
                    Text('السبت 11 نوفمبر ')
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            defaultButton(
                text: 'تاكيد',
                onpressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Thanks3()));
                })
          ],
        ),
      ),
    );
  }
}
