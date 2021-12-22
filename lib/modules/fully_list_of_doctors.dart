import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shifaa_app/modules/best_doctors.dart';
import 'package:shifaa_app/modules/reserve_appointment.dart';
import 'package:shifaa_app/modules/search_filter.dart';

import 'reserve_appointment2.dart';

class FullyListOfDoctors extends StatefulWidget {
  @override
  _FullyListOfDoctorsState createState() => _FullyListOfDoctorsState();
}

class _FullyListOfDoctorsState extends State<FullyListOfDoctors> {
  String check;

  @override
  void initState() {
    getdata().then((value) {
      setState(() {
        check = value;
        print(value.toString() + "sssssssss");
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        title: Center(child: Text('الدكاتره')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => searchFilter()));
                },
                child: Row(
                  children: [
                    Expanded(flex: 1, child: Icon(Icons.filter)),
                    Expanded(
                      flex: 7,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: -1,
                                blurRadius: 2,
                                offset: Offset(0, 0),
                              )
                            ]),
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
                                  padding: EdgeInsets.only(right: 10.0),
                                  child: TextField(
                                    textAlign: TextAlign.right,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: " القلب والأوعيه الدمويه",
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  // push it outside with singleChildScrollview
                  itemBuilder: (context, index) =>
                      buildDoctorItem(context, index, check),
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemCount: 15),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildDoctorItem(context, int index, check) => InkWell(
      onTap: () {
        check == "1"
            ? Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ReserveAppointment2videocall()))
            : Navigator.push(context,
                MaterialPageRoute(builder: (context) => ReserveAppointment()));
      },
      child: Container(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text('4.5')
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'د. اسلام على احمد',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'تخصص امراض القلب',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("  4.5  "),
                      // Row(
                      //   children:icons.map((e) => e).toList(),
                      // )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/best_doctor3.png'),
                    )),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: -1,
                blurRadius: 2,
                offset: Offset(0, 0),
              )
            ]),
      ),
    );
