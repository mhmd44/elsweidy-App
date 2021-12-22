import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shifaa_app/modules/restore_password.dart';
import 'package:shifaa_app/shared/components/components.dart';

class forgetPassword extends StatefulWidget {
  @override
  _forgetPasswordState createState() => _forgetPasswordState();
}

class _forgetPasswordState extends State<forgetPassword> {
  var phoneNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Text(
                'نسيت كلمة المرور',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 240,
                height: 216,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/forgetpassword1.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                'من فضلك قم بإدخال رقم هاتفك لارسال كود مكون من4 أرقام لإعادة ضبط كلمة المرور الخاصة بك',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Text(
                  'رقم الهاتف',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
            Container(
              child: defaultFormField(
                  color: Colors.black,
                  backgroundcolor: Color(0xffF9F9F9),
                  label: '+20',
                  controller: phoneNumber = TextEditingController()),
            ),
            SizedBox(
              height: 15,
            ),
            defaultButton(
                text: 'ارسل الكود',
                onpressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RestorePassword()));
                })
          ],
        ),
      ),
    );
  }
}
