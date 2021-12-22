import 'package:flutter/material.dart';
import 'package:shifaa_app/shared/components/components.dart';

import 'ask_for_register.dart';

// import 'info2.dart';
class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  var image1 = AssetImage("assets/images/info1.png");
  var image2 = AssetImage("assets/images/info2.jpg");
  var image3 = AssetImage("assets/images/info3.png");
  var text1 = 'اعثر على افضل طبيب لجميع التخصصات في مكان واحد ';
  var text2 = "اسهل واسرع طرق تواصل مع الطبيب";
  var text3 = "اذهب الي الرئيسيه";
  var changeContent = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.4,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: image1,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(text1),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Text(
                'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.'),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: defaultButton(
                text: 'التالي',
                onpressed: () {
                  setState(() {
                    changeContent = changeContent + 1;
                  });
                  if (changeContent == 1) {
                    setState(() {
                      print(changeContent);
                      image1 = image2;
                      text1 = text2;
                    });
                  } else if (changeContent == 2) {
                    print(changeContent);
                    setState(() {
                      image1 = image3;
                      text1 = text3;
                    });
                  } else if (changeContent > 2) {
                    print(changeContent);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => askForRegister()));
                  }
                }),
          ),
        ],
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
