import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('التنبيهات')),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        actions: [InkWell(child: Icon(Icons.arrow_forward_ios))],
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Container(
              width: double.infinity,
              height: 110,
              color: Color(0xffF5F5F5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          width: 330,
                          child: Text(
                            'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها لعديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدهاالتطبيق',
                            maxLines: 2,
                            textAlign: TextAlign.right,
                          ),
                        ),
                        Text(
                          '3 : 00 am',
                          style:
                              TextStyle(fontSize: 11, color: Color(0xffB4B4B4)),
                        )
                      ],
                    ),
                  ),
                  Image(image: AssetImage('assets/images/notification.png'))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
