import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:shifaa_app/shared/components/components.dart';

class MyAppointments extends StatefulWidget {
  @override
  _MyAppointmentsState createState() => _MyAppointmentsState();
}

class _MyAppointmentsState extends State<MyAppointments> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
                //indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.blue,
                tabs: [
                  Text("منتهيه"),
                  Text("قادمة"),
                ]),
            title: Center(child: Text('المواعيد الخاصه بى')),
            backgroundColor: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            titleTextStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            actions: [InkWell(child: Icon(Icons.arrow_forward_ios))],
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 15, right: 15, left: 15),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: -1,
                                blurRadius: 2,
                                offset: Offset(0, 0),
                              ),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'الدكتور',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff989898)),
                                      ),
                                      Text(
                                        'د. اسلام على ',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xff606060)),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'الوقت',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff989898)),
                                      ),
                                      Text(
                                        'pm 01 : 00',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xff606060)),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'التاريخ',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff989898)),
                                      ),
                                      Text(
                                        'السبت 11 نوفمبر  ',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xff606060)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              DottedLine(
                                direction: Axis.horizontal,
                                lineLength: double.infinity,
                                lineThickness: 1.0,
                                dashLength: 4.0,
                                dashColor: Color(0xff07C6C4),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: const [
                                        Text(
                                          'المكان',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff989898)),
                                        ),
                                        Text(
                                          'عياده بدر شارع الجمهوريه  ',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xff606060)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'نوع التخصص',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff989898)),
                                        ),
                                        Text(
                                          'اسنان ',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xff606060)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
              ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 15, right: 15, left: 15),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                spreadRadius: -1,
                                blurRadius: 2,
                                offset: Offset(0, 0),
                              ),
                            ]),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'الدكتور',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff989898)),
                                      ),
                                      Text(
                                        'د. اسلام على ',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xff606060)),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'الوقت',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff989898)),
                                      ),
                                      Text(
                                        'pm 01 : 00',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xff606060)),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        'التاريخ',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff989898)),
                                      ),
                                      Text(
                                        'السبت 11 نوفمبر  ',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xff606060)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              DottedLine(
                                direction: Axis.horizontal,
                                lineLength: double.infinity,
                                lineThickness: 1.0,
                                dashLength: 4.0,
                                dashColor: Color(0xff07C6C4),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: const [
                                        Text(
                                          'المكان',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff989898)),
                                        ),
                                        Text(
                                          'عياده بدر شارع الجمهوريه  ',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xff606060)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'نوع التخصص',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xff989898)),
                                        ),
                                        Text(
                                          'اسنان ',
                                          textAlign: TextAlign.end,
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Color(0xff606060)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              defaultButton(text: 'الغاء')
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
              // SingleChildScrollView(
              //   child:
              // Column(
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.symmetric(vertical: 10.0),
              //         child: Column(
              //           children: [
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //
              //               children: [
              //                 Column(
              //                   crossAxisAlignment: CrossAxisAlignment.end,
              //                   children: [
              //                     Text('الدكتور',
              //                       style: TextStyle(fontSize: 12,
              //                           color: Color(0xff989898)),),
              //                     Text('د. اسلام على ',
              //                       style: TextStyle(fontSize: 13,
              //                           color: Color(0xff606060)),),
              //                   ],
              //                 ),
              //                 Column(
              //                   crossAxisAlignment: CrossAxisAlignment.end,
              //                   children: [
              //                     Text('الوقت',
              //                       style: TextStyle(fontSize: 12,
              //                           color: Color(0xff989898)),),
              //                     Text('pm 01 : 00',
              //                       style: TextStyle(fontSize: 13,
              //                           color: Color(0xff606060)),),
              //                   ],
              //                 ),
              //                 Column(
              //                   crossAxisAlignment: CrossAxisAlignment.end,
              //                   children: [
              //                     Text('التاريخ',
              //                       style: TextStyle(fontSize: 12,
              //                           color: Color(0xff989898)),),
              //                     Text('السبت 11 نوفمبر  ',
              //                       style: TextStyle(fontSize: 13,
              //                           color: Color(0xff606060)),),
              //                   ],
              //                 ),
              //               ],
              //             ),
              //             Divider(
              //               color: Color(0xff07C6C4),
              //               thickness: 1,
              //               indent: 20,
              //               endIndent: 20,
              //             ),
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Expanded(flex: 2,
              //                   child: Column(
              //                     crossAxisAlignment: CrossAxisAlignment.end,
              //                     children: [
              //                       Text('المكان',textAlign: TextAlign.end,
              //                         style: TextStyle(fontSize: 12,
              //                             color: Color(0xff989898)),),
              //                       Text('عياده بدر شارع الجمهوريه  ',textAlign: TextAlign.end,
              //                         style: TextStyle(fontSize: 13,
              //                             color: Color(0xff606060)),),
              //                     ],
              //                   ),
              //                 ),
              //                 Expanded(flex: 1,
              //                   child: Column(
              //                     crossAxisAlignment: CrossAxisAlignment.end,
              //                     children: [
              //                       Text('نوع التخصص',
              //                         style: TextStyle(fontSize: 12,
              //                             color: Color(0xff989898)),),
              //                       Text('اسنان ',
              //                         style: TextStyle(fontSize: 13,
              //                             color: Color(0xff606060)),),
              //                     ],
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(height: 20,),
              //             defaultButton(text: 'الغاء')
              //           ],
              //         ),
              //       ),
              //
              //     ],
              //   ),
              // ),
              // SingleChildScrollView(
              //   child:
              //   Column(
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.symmetric(vertical: 10.0),
              //         child: Column(
              //           children: [
              //
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //
              //               children: [
              //                 Column(
              //                   crossAxisAlignment: CrossAxisAlignment.end,
              //                   children: [
              //                     Text('الدكتور',
              //                       style: TextStyle(fontSize: 12,
              //                           color: Color(0xff989898)),),
              //                     Text('د. اسلام على ',
              //                       style: TextStyle(fontSize: 13,
              //                           color: Color(0xff606060)),),
              //                   ],
              //                 ),
              //                 Column(
              //                   crossAxisAlignment: CrossAxisAlignment.end,
              //                   children: [
              //                     Text('الوقت',
              //                       style: TextStyle(fontSize: 12,
              //                           color: Color(0xff989898)),),
              //                     Text('pm 01 : 00',
              //                       style: TextStyle(fontSize: 13,
              //                           color: Color(0xff606060)),),
              //                   ],
              //                 ),
              //                 Column(
              //                   crossAxisAlignment: CrossAxisAlignment.end,
              //                   children: [
              //                     Text('التاريخ',
              //                       style: TextStyle(fontSize: 12,
              //                           color: Color(0xff989898)),),
              //                     Text('السبت 11 نوفمبر  ',
              //                       style: TextStyle(fontSize: 13,
              //                           color: Color(0xff606060)),),
              //                   ],
              //                 ),
              //               ],
              //             ),
              //             Divider(
              //               color: Color(0xff07C6C4),
              //               thickness: 1,
              //               indent: 20,
              //               endIndent: 20,
              //             ),
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Expanded(flex: 2,
              //                   child: Column(
              //                     crossAxisAlignment: CrossAxisAlignment.end,
              //                     children: [
              //                       Text('المكان',textAlign: TextAlign.end,
              //                         style: TextStyle(fontSize: 12,
              //                             color: Color(0xff989898)),),
              //                       Text('عياده بدر شارع الجمهوريه  ',textAlign: TextAlign.end,
              //                         style: TextStyle(fontSize: 13,
              //                             color: Color(0xff606060)),),
              //                     ],
              //                   ),
              //                 ),
              //                 Expanded(flex: 1,
              //                   child: Column(
              //                     crossAxisAlignment: CrossAxisAlignment.end,
              //                     children: [
              //                       Text('نوع التخصص',
              //                         style: TextStyle(fontSize: 12,
              //                             color: Color(0xff989898)),),
              //                       Text('اسنان ',
              //                         style: TextStyle(fontSize: 13,
              //                             color: Color(0xff606060)),),
              //                     ],
              //                   ),
              //                 ),
              //               ],
              //             ),
              //             SizedBox(height: 20,),
              //           ],
              //         ),
              //       ),
              //
              //     ],
              //   ),
              // ),
            ],
          )),
    );
  }
}
