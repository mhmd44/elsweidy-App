import 'package:flutter/material.dart';

class ImageNotification extends StatefulWidget {
  @override
  _ImageNotificationState createState() => _ImageNotificationState();
}

class _ImageNotificationState extends State<ImageNotification> {
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
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/notification.png'),
            )),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            width: double.infinity,
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Center(
                      child: Text(
                    'رفض',
                    style: TextStyle(color: Colors.white),
                  )),
                  height: 50,
                  width: 150,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.red),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'تواصل',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.call,
                        color: Colors.white,
                      )
                    ],
                  ),
                  height: 50,
                  width: 150,
                  //color: Colors.red,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.green),
                )
              ],
            ),
            //color: Colors.white,
          ),
        ],
      ),
    );
  }
}
