import 'package:flutter/material.dart';
import 'package:shifaa_app/modules/best_doctors.dart';
import 'package:shifaa_app/modules/register.dart';
import 'package:shifaa_app/shared/components/components.dart';

class askForRegister extends StatefulWidget {
  @override
  _askForRegisterState createState() => _askForRegisterState();
}

class _askForRegisterState extends State<askForRegister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              SizedBox(
                height: 60,
              ),
              Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/shifaaLogo.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              const SizedBox(
                height: 250,
              ),
              defaultButton(
                  text: 'التسجيل الأن',
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  }),
              const SizedBox(
                height: 20,
              ),
              defaultButton(
                  text: 'الدخول كزائر',
                  backcolor: Colors.white,
                  textcolor: Color(0xff07C6C4),
                  bordercolor: Color(0xff07C6C4),
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BestOfDoctors()));
                  }),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('بأختيار احد الاختيارين فانت تلقائيا موافق علي'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'سياسة الخصوصية و شروط الاستخدام',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                      Text('اتصل بنا'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class Home extends StatelessWidget {
//   var size,height,width;
//
//   @override
//   Widget build(BuildContext context) {
//
//     // getting the size of the window
//     size = MediaQuery.of(context).size;
//     height = size.height;
//     width = size.width;
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Geeks For Geeks"),
//         backgroundColor: Colors.green,
//       ),
//       body: Container(
//         color: Colors.yellow,
//         height: height/2,//half of the height size
//         width: width/2,//half of the width size
//       ),
//     );
//   }
// }
