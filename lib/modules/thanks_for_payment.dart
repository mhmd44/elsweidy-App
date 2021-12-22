import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThanksForPayment extends StatefulWidget {
  @override
  _ThanksForPaymentState createState() => _ThanksForPaymentState();
}

class _ThanksForPaymentState extends State<ThanksForPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'شكرا',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/images/thanks.png')),
                Text('لقد تم حجز طلب الدواء بنجاح '),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '150',
                                  style: TextStyle(color: Color(0xff07C6C4)),
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
                              image:
                                  AssetImage('assets/images/mother&child.png')))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('شارع الجمهوريه , المنصوره , الدقهليه'),
                      Icon(
                        Icons.location_on,
                        color: Color(0xff04DFDD),
                      )
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
        ],
      ),
    );
  }
}
