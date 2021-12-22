import 'package:flutter/material.dart';
import 'package:shifaa_app/modules/confirm_reserve.dart';
import 'package:shifaa_app/shared/components/components.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class OtherAppointment1 extends StatefulWidget {
  @override
  _OtherAppointment1State createState() => _OtherAppointment1State();
}

class _OtherAppointment1State extends State<OtherAppointment1> {
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ConfirmReserve()));
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
                Text(
                  'اختر مواعد اخر',
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
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
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
                Text('السبت 11 نوفمبر '),
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
                Text('السبت 11 نوفمبر '),
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
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
            SizedBox(
              height: 40,
            ),
            defaultButton(
                text: 'التالي',
                onpressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ConfirmReserve()));
                })
          ],
        ),
      ),
    );
  }
}
