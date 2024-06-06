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

PreferredSizeWidget? reusableAppBar({
  required BuildContext context,
  String text = '',
}) =>
    AppBar(
      backgroundColor: Colors.white,
      leadingWidth: 30.w,
      leading: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_rounded,
                color: const Color(0xff646363), size: 25.dp),
          ),
          SizedBox(
            width: 2.w,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 18.dp),
          ),
        ],
      ),
      centerTitle: true,
    );

Widget containerBelowAppBar({
  String text = '',
}) =>
    Container(
      width: double.infinity,
      height: 12.h,
      padding: EdgeInsets.symmetric(vertical: 22.dp, horizontal: 4.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20.dp),
            bottomLeft: Radius.circular(20.dp)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.dp,
              color: const Color(0xff0379A8)),
        ),
      ),
    );
