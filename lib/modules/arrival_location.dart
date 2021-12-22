import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shifaa_app/modules/address_details.dart';
import 'package:shifaa_app/shared/components/components.dart';

class ArrivalLocation extends StatefulWidget {
  @override
  _ArrivalLocationState createState() => _ArrivalLocationState();
}

class _ArrivalLocationState extends State<ArrivalLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(child: Text('مكان التوصيل')),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        actions: [InkWell(child: Icon(Icons.arrow_forward_ios))],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade300, width: 1),
                    borderRadius: BorderRadius.circular(8)),
                //margin: EdgeInsets.symmetric(horizontal: 15),
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
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: TextField(
                            textAlign: TextAlign.right,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "ابحث بالمنطقه"),
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
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "منطقه التوصيل",
                                textAlign: TextAlign.right,
                                style: TextStyle(fontSize: 14),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "تعديل",
                                    style: TextStyle(color: Color(0xff07C6C4)),
                                  ),
                                  Spacer(),
                                  Text(
                                    "القاهره , مصر",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              defaultButton(
                                  text: 'التالي',
                                  onpressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                AddressDetails()));
                                  })
                            ],
                          ),
                        ),
                      );
                    });
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            child: Container(
                width: double.infinity,
                child: Image(
                  image: AssetImage('assets/images/location_map.png'),
                  fit: BoxFit.cover,
                )),
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "منطقه التوصيل",
                              textAlign: TextAlign.right,
                              style: TextStyle(fontSize: 14),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "تعديل",
                                  style: TextStyle(color: Color(0xff07C6C4)),
                                ),
                                Spacer(),
                                Text(
                                  "القاهره , مصر",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            defaultButton(
                                text: 'التالي',
                                onpressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AddressDetails()));
                                })
                          ],
                        ),
                      ),
                    );
                  });
            },
          ),
        ],
      ),
    );
  }
}
