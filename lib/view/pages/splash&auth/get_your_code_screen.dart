import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:pinput/pinput.dart';

class GetYourCodeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
        width: 50.w,
        height: 55.h,
        textStyle: const TextStyle(fontSize: 15, color: Colors.black),
        decoration: BoxDecoration(
            color: const Color(0xffC4C4C4),
            borderRadius: BorderRadius.circular(8.dp),
            border: Border.all(color: Colors.transparent)));
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 8.h,
                  ),
                  Text(
                    'Get your code',
                    style: TextStyle(
                        fontSize: 25.dp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff0095D0)),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    'Please enter the 4 digit code that was sent to your email address',
                    style: TextStyle(
                        fontSize: 14.dp, color: const Color(0xff808080)),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 8.h,
                    width: 60.w,
                    child: Pinput(
                      length: 4,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: defaultPinTheme.copyWith(
                        decoration: defaultPinTheme.decoration!.copyWith(
                          border: Border.all(color: const Color(0xff808080)),
                        ),
                      ),
                      onCompleted: (pin) => debugPrint(pin),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'If you didn\'t receive a code !',
                        style: TextStyle(
                            color: const Color(0xff808080), fontSize: 13.dp),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Send again',
                            style: TextStyle(
                                color: Color(0xff0095D0),
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
