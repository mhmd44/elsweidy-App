import 'package:flutter/material.dart';
import 'package:shifaa_app/modules/fully_list_of_doctors.dart';
import 'package:shifaa_app/modules/search_filter.dart';
import 'package:shifaa_app/styles/filter_icons.dart';

class chooseSpeciality extends StatefulWidget {
  @override
  _chooseSpecialityState createState() => _chooseSpecialityState();
}

class _chooseSpecialityState extends State<chooseSpeciality> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'اختار التخصص',
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => searchFilter()));
                          },
                          child: Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Color(0xff07C6C4)),
                            child: Icon(
                              Filter.group_68410,
                              color: Colors.white,
                              size: 40,
                            ),
                          ))),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 7,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FullyListOfDoctors()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.blue.shade300, width: 1),
                            borderRadius: BorderRadius.circular(8)),
                        // margin: EdgeInsets.symmetric(horizontal: 15),
                        height: 48,
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
                                      hintText: "ابحث عن الطبيب الخاص بك",
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  // push it outside with singleChildScrollview
                  itemBuilder: (context, index) =>
                      buildChatItem(context, index),
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemCount: 15),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildChatItem(context, int index) => InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => FullyListOfDoctors()));
      },
      child: Container(
        height: 60,
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'الجهاز التنفسى والام الصدر ',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                child: Icon(
                  Filter.group_68444,
                  color: Colors.white,
                ),
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: Color(0xffFE6943),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              // child: Center(
              //   child:
              //        //Icon(Icons.person,color: Colors.white,),
              //
              // ),
              // ),
            ],
          ),
        ),
      ),
    );
