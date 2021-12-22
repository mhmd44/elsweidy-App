import 'package:flutter/material.dart';
import 'package:shifaa_app/shared/components/components.dart';

class Last5ContactUs extends StatefulWidget {
  @override
  _Last5ContactUsState createState() => _Last5ContactUsState();
}

class _Last5ContactUsState extends State<Last5ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(child: Text('تواصل معنا')),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              child: Center(
                  child: Image(
                image: AssetImage('assets/images/contactUs.png'),
              )),
            ),
            Center(
                child: Text(
                    'االنص يمكن أن يتم تركيبه على أي تصميم دون مشكلة فلن يبدو')),
            SizedBox(
              height: 20,
            ),
            Text('رقم الهاتف'),
            defaultFormField2(),
            SizedBox(
              height: 20,
            ),
            Text('اكتب رسالتك هنا'),
            defaultFormField2(),
            SizedBox(
              height: 20,
            ),
            defaultButton(text: 'ارسال'),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('او'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook),
                    Icon(Icons.mail),
                    Icon(Icons.facebook),
                    Icon(Icons.mail),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
