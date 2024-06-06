import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

Widget defaultTextFormField(
        {String? hintText,
        bool obscureText = false,
        TextEditingController? textFormFieldController,
        TextInputType? keyboardType}) =>
    Container(
      decoration: BoxDecoration(
        color: const Color(0xffECECEC), // Set the background color
        borderRadius: BorderRadius.circular(6.dp), // Set the border radius
        border: Border.all(
          color: const Color(0xffC4C4C4), // Set the border color
          width: 1.5, // Set the border width
        ),
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        controller: textFormFieldController,
        obscureText: obscureText,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(12.dp),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle:
                TextStyle(color: const Color(0xff808080), fontSize: 15.dp)),
      ),
    );

Widget mainElevatedButton({
  double width = 35,
  double height = 5,
  String text = '',
  final VoidCallback? onPressed,
}) =>
    SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                WidgetStateProperty.all<Color>(const Color(0xff0095D0)),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5), // Set the border radius
              ),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 15.dp),
          )),
    );
