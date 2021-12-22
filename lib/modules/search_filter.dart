import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:shifaa_app/modules/fully_list_of_doctors.dart';
import 'package:shifaa_app/shared/components/components.dart';

class searchFilter extends StatefulWidget {
  @override
  _searchFilterState createState() => _searchFilterState();
}

class _searchFilterState extends State<searchFilter> {
  var _value = 1;
  var _value2 = 2;
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FullyListOfDoctors()));
              },
              child: Icon(Icons.arrow_forward_ios))
        ],
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'فلتر البحث',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'جنس الدكتور',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xff0BA8A6),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'الكل',
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
                Text('ذكر'),
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
                Text('أنثي'),
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
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
            Text(
              'المواعيد المتاحه',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Color(0xff0BA8A6),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('الكل'),
                Radio(
                    value: 1,
                    groupValue: _value2,
                    onChanged: (value) {
                      setState(() {
                        _value2 = value;
                      });
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'اليوم',
                  textAlign: TextAlign.right,
                ),
                Radio(
                    value: 2,
                    groupValue: _value2,
                    onChanged: (value) {
                      setState(() {
                        _value2 = value;
                      });
                    }),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'غدا',
                  textAlign: TextAlign.right,
                ),
                Radio(
                    value: 3,
                    groupValue: _value2,
                    onChanged: (value) {
                      setState(() {
                        _value2 = value;
                      });
                    }),
              ],
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
            Text(
              'الأسعار',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Slider(
              min: 0.0,
              max: 100,
              value: value,
              onChanged: (valuee) {
                setState(() {
                  value = valuee;
                });
              },
            ),
            Row(
              children: [
                Text('ريال'),
                SizedBox(
                  width: 5,
                ),
                Text('1000'),
                Spacer(),
                Text('ريال'),
                SizedBox(
                  width: 5,
                ),
                Text('50')
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 1,
              color: Colors.grey[300],
            ),
            Text(
              'التقييم',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffF1EFFF)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '5',
                          style: TextStyle(color: Color(0xff07C6C4)),
                        ),
                        Icon(Icons.star, color: Color(0xff07C6C4))
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffF1EFFF)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '4',
                          style: TextStyle(color: Color(0xff07C6C4)),
                        ),
                        Icon(Icons.star, color: Color(0xff07C6C4))
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffF1EFFF)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '3',
                          style: TextStyle(color: Color(0xff07C6C4)),
                        ),
                        Icon(Icons.star, color: Color(0xff07C6C4))
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffF1EFFF)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '2',
                          style: TextStyle(color: Color(0xff07C6C4)),
                        ),
                        Icon(Icons.star, color: Color(0xff07C6C4))
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff04DFDD)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '1',
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(Icons.star, color: Colors.white)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            defaultButton(
                text: 'بحث',
                onpressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FullyListOfDoctors()));
                })
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
