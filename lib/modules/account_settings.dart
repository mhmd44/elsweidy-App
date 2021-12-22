import 'package:flutter/material.dart';
import 'package:shifaa_app/shared/components/components.dart';

// class Boarding{
//   final String image;
//   final String title;
//   final String body;
//
//   Boarding({this.image, this.title, this.body});
// }
//
// List <Boarding> boarding=[
//   Boarding(image: ,
//   )
// ];

class AccountSettings extends StatefulWidget {
  @override
  _AccountSettingsState createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('اعدادات الحساب')),
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
            Text('الاسم'),
            defaultFormField2(h: 'اسلام علاء احمد'),
            SizedBox(
              height: 20,
            ),
            Text('رقم الهاتف'),
            defaultFormField2(h: '96548121588'),
            SizedBox(
              height: 20,
            ),
            Text('كلمه المرور'),
            defaultFormField2(h: '******'),
            SizedBox(
              height: 40,
            ),
            defaultButton(text: 'حفظ التعديلات')
          ],
        ),
      ),
    );
  }
}
