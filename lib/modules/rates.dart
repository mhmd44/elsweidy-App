import 'package:flutter/material.dart';
import 'package:shifaa_app/modules/reserve_appointment.dart';
import 'package:shifaa_app/shared/components/components.dart';

class rates extends StatefulWidget {
  @override
  _ratesState createState() => _ratesState();
}

class _ratesState extends State<rates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ReserveAppointment()));
              },
              child: Icon(Icons.arrow_forward_ios))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'التقييمات',
                    textAlign: TextAlign.end,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('4.5'),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'د. اسلام على احمد',
                          textAlign: TextAlign.end,
                          style: TextStyle(color: Color(0xff0BA8A6)),
                        ),
                        Text('أستاذ امراض القلب بالقصر العينى')
                      ],
                    ),
                  ),
                  Image(image: AssetImage('assets/images/appointment.png'))
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  // push it outside with singleChildScrollview
                  itemBuilder: (context, index) => buildDoctorItem(),
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemCount: 6),
              SizedBox(
                height: 30,
              ),
              defaultButton(
                  text: 'اضافه تقييم',
                  onpressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              title: Center(child: Text('اضافه تقييم')),
                              content: Container(
                                height: 250,
                                width: 350,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: icons.map((e) => e).toList(),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Container(
                                      height: 100,
                                      width: 300,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                        color: Colors.blue,
                                        width: 1,
                                      )),
                                      child: Center(
                                        child: TextFormField(
                                          maxLines: 3,
                                          decoration: InputDecoration(
                                              border: InputBorder.none,
                                              hintText: 'اكتب تقييمك'),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    defaultButton(
                                      text: 'حسنا',
                                      onpressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => rates()));
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ));
                  }),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: icons.map((e) => e).toList(),
                  ),
                  Text(
                    'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى',
                    textAlign: TextAlign.end,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('27/7/2021'),
                      SizedBox(
                        width: 15,
                      ),
                      Text('ايمان احمد'),
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

List<Widget> icons = [
  Icon(
    Icons.star,
    color: Colors.grey,
  ),
  Icon(
    Icons.star,
    color: Colors.yellow,
  ),
  Icon(
    Icons.star,
    color: Colors.yellow,
  ),
  Icon(
    Icons.star,
    color: Colors.yellow,
  ),
  Icon(
    Icons.star,
    color: Colors.yellow,
  ),
];

Widget buildDoctorItem() => Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: icons.map((e) => e).toList(),
        ),
        Text(
          'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى',
          textAlign: TextAlign.end,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text('27/7/2021'),
            SizedBox(
              width: 15,
            ),
            Text('ايمان احمد'),
          ],
        ),
      ],
    );
