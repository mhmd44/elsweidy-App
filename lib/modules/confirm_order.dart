// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:shifaa_app/shared/components/components.dart';

import 'thanks_for_payment.dart';

class ConfirmOrder extends StatefulWidget {
  @override
  _ConfirmOrderState createState() => _ConfirmOrderState();
}

class _ConfirmOrderState extends State<ConfirmOrder> {
  int val = 5;
  bool isPasswordshow = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Center(child: Text('تأكيد الطلب')),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        actions: [
          val == 5
              ? SizedBox()
              : InkWell(
                  child: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    if (val == 1) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ThanksForPayment()));
                    } else {
                      // Navigator.pop(context);
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(60),
                                topLeft: Radius.circular(40)),
                          ),
                          builder: (context) {
                            return Container(
                              height: 400,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Center(
                                      child: Text(
                                        "الدفع بالفيزا",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ),
                                    Text('اسم الفيزا'),
                                    defaultFormField2(),
                                    Text('رقم الفيزا'),
                                    defaultFormField(
                                        color: Colors.black,
                                        backgroundcolor: Color(0xffF9F9F9),
                                        type: TextInputType.visiblePassword,
                                        prefix: InkWell(
                                            onTap: () {
                                              setState(() {
                                                isPasswordshow =
                                                    !isPasswordshow;
                                              });
                                            },
                                            child: Icon(!isPasswordshow
                                                ? Icons.visibility
                                                : Icons.visibility_off)),
                                        ispassword: true,
                                        label: ''),
                                    defaultFormFieldDivider(
                                        'كلمه السر', 'تاريخ انتهاء الصلاحيه'),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    defaultButton(
                                        text: 'تأكيد',
                                        onpressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ThanksForPayment()));
                                        })
                                  ],
                                ),
                              ),
                            );
                          });
                    }
                  },
                ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'حدد مكان التوصيل',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color(0xff1B1B1B)),
              textAlign: TextAlign.end,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.grey[200],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(Icons.confirmation_num_outlined),
                      Spacer(),
                      Text(
                        'اسلام على احمد',
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                  Text('+ 01 - 025689988'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'بلوك ب شارع المحكمهالدور الارضىالمنصورهالدقهليهجمهوريه مصر العربيه',
                    maxLines: 2,
                    textAlign: TextAlign.right,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                children: [
                  Text(
                    'تعديل',
                    style: TextStyle(color: Color(0xff07C6C4)),
                  ),
                  Spacer(),
                  Text(
                    'الطلبات',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xff1B1B1B)),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.grey[200],
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '150',
                              style: TextStyle(color: Color(0xff07C6C4)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Text(
                                'بانادول اكسترا',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff1B1B1B)),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            ' جنيه لكل علبه',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff989898)),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Image(
                          image: AssetImage('assets/images/mother&child.png')))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'الدفع من خلال',
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'كاش عند الاستلام',
                        textAlign: TextAlign.end,
                      ),
                    ),
                    Icon(Icons.money)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              color: Colors.grey[200],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Radio(
                      value: 2,
                      groupValue: val,
                      onChanged: (value) {
                        setState(() {
                          val = value;
                        });
                      },
                      activeColor: Colors.green,
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'الدفع بالفيزا',
                        textAlign: TextAlign.end,
                      ),
                    ),
                    Icon(Icons.credit_card)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  '450.00   LE',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xff1B1B1B)),
                ),
                Spacer(),
                Text(
                  'الاجمالى',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Color(0xff1B1B1B)),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            val == 5
                ? SizedBox()
                : InkWell(
                    child: defaultButton(
                      text: 'تأكيد',
                    ),
                    onTap: () {
                      if (val == 1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ThanksForPayment()));
                      } else {
                        // Navigator.pop(context);
                        showModalBottomSheet(
                            isScrollControlled: true,
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  topLeft: Radius.circular(25)),
                            ),
                            builder: (context) {
                              return Container(
                                height: 400,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Center(
                                        child: Text(
                                          "الدفع بالفيزا",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                      ),
                                      Text('اسم الفيزا'),
                                      defaultFormField2(),
                                      Text('رقم الفيزا'),
                                      defaultFormField(
                                          color: Colors.black,
                                          backgroundcolor: Color(0xffF9F9F9),
                                          type: TextInputType.visiblePassword,
                                          prefix: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  isPasswordshow =
                                                      !isPasswordshow;
                                                });
                                              },
                                              child: Icon(!isPasswordshow
                                                  ? Icons.visibility
                                                  : Icons.visibility_off)),
                                          ispassword: true,
                                          label: ''),
                                      defaultFormFieldDivider(
                                          'كلمه السر', 'تاريخ انتهاء الصلاحيه'),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      defaultButton(
                                          text: 'تأكيد',
                                          onpressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ThanksForPayment()));
                                          })
                                    ],
                                  ),
                                ),
                              );
                            });
                      }
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
