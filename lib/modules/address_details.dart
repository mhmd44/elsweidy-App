import 'package:flutter/material.dart';
import 'package:shifaa_app/modules/confirm_order.dart';
import 'package:shifaa_app/shared/components/components.dart';

class AddressDetails extends StatefulWidget {
  AddressDetails({Key key}) : super(key: key);

  @override
  _AddressDetailsState createState() => _AddressDetailsState();
}

class _AddressDetailsState extends State<AddressDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('تفاصيل العنوان')),
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "منطقه التوصيل",
                textAlign: TextAlign.end,
                style: TextStyle(color: Color(0xff1A0405), fontSize: 18),
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
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Color(0xffB2B2B2),
                thickness: 1,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'اسم الشارع',
                style: TextStyle(color: Color(0xff1A0405), fontSize: 14),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade300, width: 1),
                    borderRadius: BorderRadius.circular(8)),
                height: 60,
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              defaultFormFieldDivider(
                " رقم الشقه",
                "رقم العماره",
              ),
              Text(
                'علامه مميزه',
                style: TextStyle(color: Color(0xff1A0405), fontSize: 14),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade300, width: 1),
                    borderRadius: BorderRadius.circular(8)),
                height: 60,
                child: TextField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Color(0xffB2B2B2),
                thickness: 1,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'بيانات التوصيل',
                style: TextStyle(color: Color(0xff1A0405), fontSize: 18),
              ),
              Text('الإسم'),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade300, width: 1),
                    borderRadius: BorderRadius.circular(8)),
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    style: TextStyle(decoration: TextDecoration.none),
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'اسلام علاء احمد',
                      hintStyle: TextStyle(
                          color: Color(0xff666666),
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('رقم الهاتف'),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue.shade300, width: 1),
                    borderRadius: BorderRadius.circular(8)),
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: '+96548121588',
                        hintStyle: TextStyle(color: Color(0xff666666))),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              defaultButton(
                  text: 'حفظ العنوان',
                  onpressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ConfirmOrder()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
