import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shifaa_app/models/post.dart';
import 'package:shifaa_app/modules/onboarding.dart';
import 'package:shifaa_app/network/api.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({Key key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  Future<post> postData;

  @override
  initState() {
    super.initState();
    API.createauthor('name');
    postData = getPostById();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => OnBoarding())));
  }

  Future<post> getPostById() async {
    http.Response futurePost = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));
    if (futurePost.statusCode == 200) {
      // print(futurePost.body);
      return post.fromjson(json.decode(futurePost.body));
    } else {
      throw Exception('can\'t load post data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
          // Padding(
          //   padding:  const EdgeInsets.all(20.0),
          //   child:
          Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Row(
          //   children: [
          //     Container(
          //
          //       child: FutureBuilder<post>(
          //         future: postData,
          //           builder: (context, snapshot){
          //           if(snapshot.hasData){
          //             return Container(height: 150,width: 150,
          //                 child: Text(snapshot.data.title));
          //           }else if (snapshot.hasError){
          //             return Text(snapshot.error);
          //           }else{
          //             return CircularProgressIndicator();
          //           }
          //           }
          //       ),
          //     ),
          //   ],
          // ),
          Row(
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/splash/splash1.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/splash/MaskGroup.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/splash/splash2.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ],
          ),
        ],
        //   children: [
        //     Row(
        //    children: [
        // Container(
        // width: 100,height: 100,
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //       image: AssetImage("assets/images/splash1.png"),
        //       fit: BoxFit.fitWidth,
      ),
    );
  }
}
