import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shifaa_app/modules/best_doctors.dart';
import 'package:shifaa_app/shared/components/components.dart';

import 'forget_password.dart';
import 'new_account.dart';

class Register extends StatefulWidget {
  const Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var emailControl = TextEditingController();
  var phoneNumber = TextEditingController();
  var passControl = TextEditingController();
  bool isPasswordshow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/shifaaLogo.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Text(
                'تسجيل الدخول',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Text(
                'رقم الهاتف',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: defaultFormField(
                  color: Colors.black,
                  backgroundcolor: Color(0xffF9F9F9),
                  label: '+20',
                  controller: phoneNumber,
                  type: TextInputType.phone),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Text(
                'كلمة المرور',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: defaultFormField(
                  color: Colors.black,
                  backgroundcolor: Color(0xffF9F9F9),
                  type: TextInputType.visiblePassword,
                  prefix: InkWell(
                      onTap: () {
                        setState(() {
                          isPasswordshow = !isPasswordshow;
                        });
                      },
                      child: Icon(!isPasswordshow
                          ? Icons.visibility
                          : Icons.visibility_off)),
                  ispassword: isPasswordshow,
                  label: ''),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => forgetPassword()));
              },
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'نسيت كلمة المرور ؟',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: defaultButton(
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BestOfDoctors()));
                  },
                  text: 'تسجيل الدخول',
                  backcolor: Color(0xff07C6C4),
                  textcolor: Colors.white,
                  bordercolor: Color(0xff07C6C4)),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NewAccount()));
                  },
                  child: Text('إنشاء حساب جديد'),
                ),
                SizedBox(
                  width: 20,
                ),
                Text('ليس لديك حساب ؟'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Center(child: Text('أو')),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/facebook.png"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Center(
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/googleplus.png"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
