import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class AddAccountScreen extends StatelessWidget {
  const AddAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'My Profile'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            containerBelowAppBar(text: 'Add Account'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 3.h),
              child: Container(
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
                      'Account Number*',
                      style:
                      TextStyle(fontSize: 15.dp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    defaultTextFormField(
                        hintText: 'Add your account number',
                        keyboardType: TextInputType.number),
                    SizedBox(
                      height: 2.h,
                    ),

                    Text(
                      'Broker*',
                      style:
                      TextStyle(fontSize: 15.dp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    defaultTextFormField(
                        hintText: 'Choose Broker',
                        keyboardType: TextInputType.emailAddress),
                    SizedBox(
                      height: 3.h,
                    ),

                  Center(
                    child: mainElevatedButton(
                      onPressed: (){

                      },
                      width: 35.w,
                      height: 5.h,
                      text: 'Save'
                    ),
                  )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
