import 'package:flutter/material.dart';
import 'package:shifaa_app/modules/set_new_password.dart';
import 'package:shifaa_app/shared/components/components.dart';

class RestorePassword extends StatefulWidget {
  const RestorePassword({Key key}) : super(key: key);

  @override
  _RestorePasswordState createState() => _RestorePasswordState();
}

class _RestorePasswordState extends State<RestorePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: Text(
                  'إسترجاع كلمة المرور',
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Center(
                  child: Text(
                    'قم بإدخال رمز مكون من 4 ارقام تم ارساله الي رقم موبيلك حتي يتم التأكيد علي تغير كلمة المرور',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 70,
                    child: TextFormField(
                        decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                    )),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    child: TextFormField(
                        decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                    )),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 30,
                    width: 70,
                    child: TextFormField(
                        decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              // Row(
              //   children: const [
              //     TextField( decoration: InputDecoration(
              //
              //     ),
              //     ),
              //   ],
              //
              // ),

              defaultButton(
                  text: 'ارسل الكود',
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => setNewPassword()));
                  }),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('إعادة الارسال بعد (1:59 )'),
                  Text('لم تستلم رسالة ؟'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
