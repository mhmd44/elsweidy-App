import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shifaa_app/shared/components/components.dart';

import 'arrival_location.dart';

class MotherAndChild extends StatefulWidget {
  @override
  _MotherAndChildState createState() => _MotherAndChildState();
}

class _MotherAndChildState extends State<MotherAndChild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('الام والطفل')),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        actions: [
          InkWell(
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              child: Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            InkWell(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade300, width: 1),
                    borderRadius: BorderRadius.circular(8)),
                margin: EdgeInsets.symmetric(horizontal: 15),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                Icon(Icons.photo_album),
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
            SizedBox(
              height: 20,
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 1),
              itemCount: 12,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Image(
                                image: AssetImage(
                                    'assets/images/mother&child.png'),
                                fit: BoxFit.fitHeight,
                              )),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('الام والطفل',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xffB6B6B6))),
                                Text('بانادول اكسترا',
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xff000000))),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.shopping_basket,
                                      color: Color(0xff07C6C4),
                                    ),
                                    Spacer(),
                                    Text(
                                      '150',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff07C6C4)),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            flex: 1,
                          )
                        ],
                      ),
                    ),
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
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25),
                                  topRight: Radius.circular(25)),
                              color: Colors.white,
                            ),
                            height: 400,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "معلومات المنتج",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                  Container(
                                    color: Color(0xffFCFCFC),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 4,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    '150',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xff07C6C4)),
                                                  ),
                                                  Text('بانادول اكسترا'),
                                                ],
                                              ),
                                              Text(
                                                'الام والطفل',
                                                textAlign: TextAlign.end,
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: Image(
                                                image: AssetImage(
                                                    'assets/images/mother&child.png')))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.إذا كنت تحتاج إلى عدد أكبر من الفقرات',
                                      textAlign: TextAlign.end),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  InkWell(
                                    child: defaultButton(
                                      text: 'اضف للسله',
                                    ),
                                    onTap: () {
                                      Navigator.pop(context);
                                      showModalBottomSheet(
                                          context: context,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(25),
                                                topLeft: Radius.circular(25)),
                                          ),
                                          builder: (context) {
                                            return Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topRight:
                                                        Radius.circular(25),
                                                    topLeft:
                                                        Radius.circular(25)),
                                                color: Colors.white,
                                              ),
                                              height: 300,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      "قائمه الطلبات",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 16),
                                                    ),
                                                    Container(
                                                      width: double.infinity,
                                                      height: 110,
                                                      color: Color(0xffFCFCFC),
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 4,
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Text(
                                                                    'بانادول اكسترا'),
                                                                Row(
                                                                  children: [
                                                                    Icon(Icons
                                                                        .add_circle_outline_outlined),
                                                                    Text('1'),
                                                                    Icon(Icons
                                                                        .minimize_outlined),
                                                                    Spacer(),
                                                                    Text(
                                                                      '150 LE',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .end,
                                                                      style: TextStyle(
                                                                          color:
                                                                              Color(0xff07C6C4)),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                              flex: 1,
                                                              child: Image(
                                                                  image: AssetImage(
                                                                      'assets/images/mother&child.png')))
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text('150.00   LE'),
                                                        Spacer(),
                                                        Text('منتج واحد')
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 15,
                                                    ),
                                                    defaultButton(
                                                        text: 'استمرار',
                                                        onpressed: () {
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          ArrivalLocation()));
                                                        })
                                                  ],
                                                ),
                                              ),
                                            );
                                          });
                                    },
                                  )
                                ],
                              ),
                            ),
                          );
                        });
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
