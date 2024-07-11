import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/pages/splash&auth/get_your_code_screen.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class ForgotPasswordScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: Column(
              children: [
                SizedBox(height: 10.h),
                Text(
                  'Forgot Password',
                  style: TextStyle(
                      fontSize: 25.dp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  'We sent you a code to verify your email\n address',
                  style: TextStyle(
                      fontSize: 14.dp, color: const Color(0xff808080)),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 6.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Email *',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.dp),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffF5F4F4),
                          borderRadius: BorderRadius.circular(10)),
                      child: defaultTextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'PLease, enter your email';
                            }
                            return null;
                          },
                           textFormFieldController: emailController,
                          hintText: 'Enter your email',
                          keyboardType: TextInputType.emailAddress),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    mainElevatedButton(
                      width: 35.w,
                      height: 5.h,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    GetYourCodeScreen()));
                      },
                      text: 'Continue',
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
