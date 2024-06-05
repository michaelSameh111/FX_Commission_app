import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

import '../widgets/reusable_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 10.h),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 1.2.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.dp),
                      color: const Color(0xff0095D0)),
                ),
                SizedBox(
                  width: 3.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 22.dp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'You have an account ? Login here',
                      style: TextStyle(
                          color: const Color(0xff808080),
                          fontSize: 15.dp,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(12.dp),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xff0095D0),
                ),
                borderRadius: BorderRadius.circular(7.dp),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full Name*',
                    style:
                        TextStyle(fontSize: 15.dp, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  defaultTextFormField(
                      hintText: 'Enter your name',
                      keyboardType: TextInputType.name),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Password*',
                    style:
                        TextStyle(fontSize: 15.dp, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  defaultTextFormField(
                      obscureText: true,
                      hintText: 'Enter your password',
                      keyboardType: TextInputType.visiblePassword),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forgot password ?',
                            style:
                                TextStyle(color: Colors.black, fontSize: 13.dp),
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        side: const BorderSide(
                            color: Color(0xffA2A2A2),
                        ),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                        activeColor: const Color(0xff0095D0),
                        checkColor: Colors.white,
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(
                            fontSize: 14.dp, fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
