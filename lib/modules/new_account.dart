import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shifaa_app/modules/best_doctors.dart';
import 'package:shifaa_app/shared/components/components.dart';

class NewAccount extends StatefulWidget {
  const NewAccount({Key key}) : super(key: key);

  @override
  _NewAccountState createState() => _NewAccountState();
}

class _NewAccountState extends State<NewAccount> {
  var emailControl = TextEditingController();
  var firstname = TextEditingController();
  var secondname = TextEditingController();
  var phoneNumber = TextEditingController();
  var passControl = TextEditingController();
  bool isPasswordshow = true;
  bool isPasswordshow1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'حساب جديد',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'الاسم الأول',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              defaultFormField(
                  color: Colors.black,
                  backgroundcolor: Color(0xffF9F9F9),
                  controller: firstname),

              Text(
                'الاسم الأخير',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              defaultFormField(
                  color: Colors.black,
                  backgroundcolor: Color(0xffF9F9F9),
                  controller: secondname),

              Text(
                'رقم الهاتف',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              defaultFormField(
                  color: Colors.black,
                  backgroundcolor: Color(0xffF9F9F9),
                  label: '+20',
                  controller: phoneNumber),
              Text(
                'كلمة المرور',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              defaultFormField(
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
                  ispassword: isPasswordshow),
              Text(
                'تأكيد كلمة المرور',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              defaultFormField(
                  color: Colors.black,
                  backgroundcolor: Color(0xffF9F9F9),
                  type: TextInputType.visiblePassword,
                  prefix: InkWell(
                      onTap: () {
                        setState(() {
                          isPasswordshow1 = !isPasswordshow1;
                        });
                      },
                      child: Icon(!isPasswordshow1
                          ? Icons.visibility
                          : Icons.visibility_off)),
                  ispassword: isPasswordshow1),
              Text(
                'الجنس',
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              // Row(
              //   children: [
              //     TextButton(onPressed: (){}, child: )
              //   ],
              Row(
                children: [
                  Container(
                    width: 170,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0xffF9F9F9),
                    ),
                    child: Center(child: Text('ذكر')),
                  ),
                  Spacer(),
                  Container(
                    width: 170,
                    height: 55,
                    decoration: BoxDecoration(
                      color: Color(0xffF9F9F9),
                    ),
                    child: Center(child: Text('انثي')),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              //////////////////////////////////////
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'بتسجيل العضوية أنت توافق على ',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'شروط الاستخدام وسياسية الخصوصية ',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 30,
              ),
              defaultButton(
                onpressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BestOfDoctors()));
                },
                text: 'انشاء حساب',
                // backcolor: Color(0xff07C6C4),
                // textcolor: Colors.white,
                // bordercolor: Color(0xff07C6C4)
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('تسجيل دخول'),
                  SizedBox(
                    width: 20,
                  ),
                  Text(' لديك حساب ؟'),
                ],
              ),

              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
