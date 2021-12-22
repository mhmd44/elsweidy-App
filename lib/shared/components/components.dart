import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

// Widget iconAppBar(
// {
//   String title=
// }){}
// Widget defaultAppBar(
//     {
//       MaterialColor back=Colors.white,
//
//     }){
//   return AppBar(
//     backgroundColor: back,
//   );
// }
Widget defaultButton({
  double width = double.infinity,
  Color backcolor = const Color(0xff07C6C4),
  Color textcolor = Colors.white,
  Color bordercolor = const Color(0xff07C6C4),
  bool isUppercase = true,
  double radius = 10.0,
//@required  Function() function,
  @required String text,
  Function() onpressed,
}) =>
    Container(
      width: width,
      //margin: EdgeInsets.symmetric(horizontal: 10),
      height: 60,
      child: MaterialButton(
        onPressed: onpressed,
        // onPressed: function
        //,   // theres here a problem function haven't to be with ' () '
        child: Text(
          isUppercase ? text.toUpperCase() : text,
          style: TextStyle(
              color: textcolor, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      decoration: BoxDecoration(
          border: Border.all(
            color: bordercolor,
          ),
          borderRadius: BorderRadius.circular(radius),
          color: backcolor),
    );

Widget defaultFormField({
  @required Color color,
  @required Color backgroundcolor,
  TextEditingController controller,
  Function validate, //resolved
  TextInputType type,
  Function(String) onSubmit,
  Function() onTap,
  Function(String) onChange,
  String label,
  Widget prefix,
  bool ispassword = false,
  bool isClickable = true,
  IconData suffix,
  Function() suffixpressed,
}) =>
    Container(
      //  margin: EdgeInsets.symmetric(horizontal: 5),
      color: backgroundcolor,
      height: 60,
      child: TextFormField(
        style: TextStyle(color: color),
        enabled: isClickable,
        validator: validate,
        controller: controller,
        keyboardType: type,
        onFieldSubmitted: onSubmit,
        onChanged: onChange,
        obscureText: ispassword,
        onTap: onTap,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: color),
          labelText: label,
          prefixIcon: prefix,
          suffixIcon: suffix != null
              ? IconButton(
                  onPressed: suffixpressed,
                  icon: Icon(suffix),
                )
              : null,
          border: const OutlineInputBorder(),
        ),
      ),
    );

Widget defaultFormField2({String h}) => Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue.shade300, width: 1),
          borderRadius: BorderRadius.circular(8)),
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: TextField(
          textAlign: TextAlign.right,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '$h',
              hintStyle: TextStyle(color: Color(0xff666666))),
        ),
      ),
    );

Widget defaultFormFieldDivider(text1, text2) => Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '$text1',
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
            ],
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '$text2',
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
            ],
          ),
        ),
      ],
    );
