import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/pages/login_screen.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 10.h),
        child: SingleChildScrollView(
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
                        'Sign up',
                        style: TextStyle(
                            fontSize: 22.dp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Enter your E-mail address then click send',
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
                  color: Colors.white,
                  border: Border.all(
                    color: const Color(0xff0095D0),
                  ),
                  borderRadius: BorderRadius.circular(7.dp),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'User name*',
                      style: TextStyle(
                          fontSize: 15.dp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    defaultTextFormField(
                        hintText: 'User name',
                        keyboardType: TextInputType.name),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      'First name*',
                      style: TextStyle(
                          fontSize: 15.dp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    defaultTextFormField(
                        hintText: 'First name',
                        keyboardType: TextInputType.name),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      'Last Name*',
                      style: TextStyle(
                          fontSize: 15.dp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    defaultTextFormField(
                        hintText: 'Last Name',
                        keyboardType: TextInputType.name),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      'Email*',
                      style: TextStyle(
                          fontSize: 15.dp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    defaultTextFormField(
                        hintText: 'Enter your mail',
                        keyboardType: TextInputType.emailAddress),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      'Phone Number*',
                      style: TextStyle(
                          fontSize: 15.dp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    defaultTextFormField(
                        hintText: 'Phone Number',
                        keyboardType: TextInputType.phone),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      'Country*',
                      style: TextStyle(
                          fontSize: 15.dp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    defaultTextFormField(
                        hintText: 'Country', keyboardType: TextInputType.name),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      'Password',
                      style: TextStyle(
                          fontSize: 15.dp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    defaultTextFormField(
                        hintText: 'Password',
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      'Password Confirmation *',
                      style: TextStyle(
                          fontSize: 15.dp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    defaultTextFormField(
                        hintText: 'Password Confirmation',
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true),
                    SizedBox(
                      height: 2.h,
                    ),
                    Center(
                      child: mainElevatedButton(
                          width: 35.w, height: 5.h, text: 'Sign Up'),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account ?',
                          style: TextStyle(
                            fontSize: 15.dp,
                            color: Color(0xff646363),
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const LoginScreen()));
                            },
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: const Color(0xff0095D0),
                                  fontSize: 15.dp),
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
