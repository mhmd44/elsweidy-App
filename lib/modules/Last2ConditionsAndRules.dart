import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Last2ConditionsAndRules extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('مكان التوصيل')),
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle:
            TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                  child: Image(
                image: AssetImage('assets/images/Final.png'),
              )),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'هذا النص هو مثال لنص يمكن أن نفس',
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: Color(0xff4F7781),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '''   هذا النص هو مثال لنص يمكن أن يستبدل في نفس 
             المساحة، لقد تم توليد هذا النص من مولد النص العربى،
             حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص
               ''',
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'هذا النص هو مثال لنص يمكن أن نفس',
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: Color(0xff4F7781),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '''   هذا النص هو مثال لنص يمكن أن يستبدل في نفس 
             المساحة، لقد تم توليد هذا النص من مولد النص العربى،
             حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص
               ''',
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'هذا النص هو مثال لنص يمكن أن نفس',
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: Color(0xff4F7781),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '''   هذا النص هو مثال لنص يمكن أن يستبدل في نفس 
             المساحة، لقد تم توليد هذا النص من مولد النص العربى،
             حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص
               ''',
              textAlign: TextAlign.right,
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
