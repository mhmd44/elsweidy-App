import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data_of_tests.dart';

class MedicalTests extends StatefulWidget {
  @override
  _MedicalTestsState createState() => _MedicalTestsState();
}

class _MedicalTestsState extends State<MedicalTests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(child: Text('تحاليل')),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DataOfTests()));
              },
              child: Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildScrollHorizItem(),
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemCount: 6),
            ),
            ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                // push it outside with singleChildScrollview
                itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DataOfTests()));
                    },
                    child: buildTestItem()),
                separatorBuilder: (context, index) => SizedBox(height: 10),
                itemCount: 6),
          ],
        ),
      ),
    );
  }
}

Widget buildScrollHorizItem() => Container(
      color: Colors.white,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffF9F9F9),
            ),
            height: 35,
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text('تحليل دم'),
            ),
          ),
        ],
      ),
    );

Widget buildTestItem() => Card(
      elevation: 5,
      child: Container(
        width: double.infinity,
        height: 300,
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage('assets/images/medical_tests.png'),
                  fit: BoxFit.cover,
                ),
              ),
              width: double.infinity,
              height: 300,
            ),
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  //margin: EdgeInsets.symmetric(horizontal: 3),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('مركز المختبر مدينه بدر  -   مدينه بدر'),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '4.5',
                              textAlign: TextAlign.end,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Spacer(),
                            Text(
                              'فحص السكر التراكمى',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Color(0xff07C6C4),
                              ),
                            ),
                          ],
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
                          children: [
                            Container(
                              width: 105,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xff07C6C4),
                              ),
                              child: Center(
                                child: Text(
                                  'حجز موعد',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
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
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Transform.translate(
                  offset: Offset(-33, -33),
                  child: Container(
                    width: 66,
                    height: 66,
                    child: Image(
                      image: AssetImage('assets/images/medicalTests.png'),
                    ),
                  ),
                ),
              ],
            ),

            //  ,Image(image: AssetImage('assets/images/medical_tests.png'), width: double.infinity,fit: BoxFit.fill,)
            // ,Image(image: AssetImage('assets/images/medical_tests.png'), width: double.infinity,fit: BoxFit.fill,)
          ],
        ),
      ),
    );
