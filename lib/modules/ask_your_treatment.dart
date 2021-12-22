import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shifaa_app/modules/mother_child.dart';

class AskYourTreatment extends StatefulWidget {
  @override
  _AskYourTreatmentState createState() => _AskYourTreatmentState();
}

class _AskYourTreatmentState extends State<AskYourTreatment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'اطلب دوائك',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade300, width: 1),
                    borderRadius: BorderRadius.circular(8)),
                // margin: EdgeInsets.symmetric(horizontal: 15),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Icon(Icons.search),
                      flex: 1,
                    ),
                    Expanded(
                        flex: 4,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: TextField(
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "ابحث عن الدواء الخاص بك"),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.call,
                        color: Color(0xff07C6C4),
                      ),
                      Text('استشر صيدلى')
                    ],
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        Icon(
                          Icons.image,
                          color: Color(0xff07C6C4),
                        ),
                        Text('صوره المنتج')
                      ],
                    ),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                topLeft: Radius.circular(25)),
                          ),
                          builder: (context) {
                            return Container(
                              height: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("اختر صوره الروشته "),
                                  Divider(
                                    color: Colors.black,
                                    thickness: 1,
                                    endIndent: 10,
                                    indent: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("كاميرا"),
                                      Icon(Icons.camera_alt_rounded),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.black,
                                    thickness: 1,
                                    endIndent: 10,
                                    indent: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("معرض الصور"),
                                      Icon(Icons.camera_alt_rounded),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                  ),
                  InkWell(
                    child: Column(
                      children: [
                        Icon(
                          Icons.wallpaper,
                          color: Color(0xff07C6C4),
                        ),
                        Text(
                          'روشته/ موافقه طبيب',
                          textAlign: TextAlign.end,
                        )
                      ],
                    ),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(25),
                                topLeft: Radius.circular(25)),
                          ),
                          builder: (context) {
                            return Container(
                              height: 200,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("اختر صوره الروشته "),
                                  Divider(
                                    color: Colors.black,
                                    thickness: 1,
                                    endIndent: 10,
                                    indent: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("كاميرا"),
                                      Icon(Icons.camera_alt_rounded),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.black,
                                    thickness: 1,
                                    endIndent: 10,
                                    indent: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("معرض الصور"),
                                      Icon(Icons.camera_alt_rounded),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'ابحث بالقسم',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 1,
                    crossAxisSpacing: 10,
                    crossAxisCount: 3),
                itemCount: 15,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MotherAndChild()));
                    },
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Image(
                            image: AssetImage(
                              'assets/images/ask_treatment1.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text('الام والطفل')
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Widget askTreatment() =>
//     Row(
//   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   children: [
//     Column(
//       children: [
//         Image(image: AssetImage('assets/images/ask_treatment1.png')),
//         Text('الام والطفل')
//       ],
//     ),
//     Column(
//       children: [
//         Image(image: AssetImage('assets/images/ask_treatment2.png')),
//
//         Text('مكافحه العدوي')
//       ],
//     ),
//     Column(
//       children: [
//         Image(image: AssetImage('assets/images/ask_treatment3.png')),
//         Text('المضادات الحيويه')
//       ],
//     ),
//   ],
// );
