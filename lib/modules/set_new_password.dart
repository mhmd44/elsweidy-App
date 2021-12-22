import 'package:flutter/material.dart';
import 'package:shifaa_app/modules/register.dart';
import 'package:shifaa_app/shared/components/components.dart';

class setNewPassword extends StatefulWidget {
  @override
  _setNewPasswordState createState() => _setNewPasswordState();
}

class _setNewPasswordState extends State<setNewPassword> {
  bool isPasswordshow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      // drawer:,
      // endDrawer: Drawer() ,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/splash/MaskGroup.png"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
              const Center(
                child: Text(
                  'إعادة ضبط كلمة المرور',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                  'كلمة المرور الجديدة يجب أن تكون مختلفة كليا عن كلمة المرور القديمة ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              Text(
                'كلمة المرور',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              defaultFormField(
                  color: Colors.black,
                  backgroundcolor: Color(0xffF9F9F9),
                  type: TextInputType.visiblePassword,
                  suffix: Icons.lock,
                  ispassword: isPasswordshow),
              SizedBox(
                height: 10,
              ),
              Text(
                'إعادة كلمة المرور الجديدة',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              defaultFormField(
                  color: Colors.black,
                  backgroundcolor: Color(0xffF9F9F9),
                  type: TextInputType.visiblePassword,
                  suffix: Icons.lock,
                  ispassword: isPasswordshow),
              const SizedBox(
                height: 15,
              ),
              defaultButton(
                  text: 'تاكيد',
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Register()));
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

// prefix: InkWell(
//     onTap: () {
//       setState(() {
//         isPasswordshow = !isPasswordshow;
//       });
//     },
//     child: Icon(!isPasswordshow
//         ? Icons.lock_open
//         : Icons.lock)),
