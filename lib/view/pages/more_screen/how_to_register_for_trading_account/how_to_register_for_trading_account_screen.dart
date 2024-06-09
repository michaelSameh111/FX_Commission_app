import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class HowToRegisterForTradingAccountScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'More'),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 13.5.h,
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
                  'How to register\nfor a trading account ?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.dp,
                      color: const Color(0xff0379A8)),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 4.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('1 . Register an account',
                  style: TextStyle(
                    fontSize: 18.dp,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 1.h,),
                  Text('''Register an account with FXCommission now and verify it with your email address.''',
                  style: TextStyle(
                    fontSize: 16.dp
                  ),),
                  SizedBox(height: 2.h,),

                  Text('2 . Register a trading account',
                    style: TextStyle(
                        fontSize: 18.dp,
                        fontWeight: FontWeight.bold
                    ),),
                  SizedBox(height: 1.h,),
                  Text('''Choose any broker listed and open an account with any suitable broker from the link in the broker details and then add it in your FXCommission control panel to start earning.''',
                    style: TextStyle(
                        fontSize: 16.dp
                    ),),
                  SizedBox(height: 2.h,),

                  Text('3 . Start Trading',
                    style: TextStyle(
                        fontSize: 18.dp,
                        fontWeight: FontWeight.bold
                    ),),
                  SizedBox(height: 1.h,),
                  Text('''Trade in your account however you want.''',
                    style: TextStyle(
                        fontSize: 16.dp
                    ),),
                  SizedBox(height: 2.h,),

                  Text('4 . Add payment method ',
                    style: TextStyle(
                        fontSize: 18.dp,
                        fontWeight: FontWeight.bold
                    ),),
                  SizedBox(height: 1.h,),
                  Text('''Add your suitable payment method in your control panel and withdraw your cash back every week.''',
                    style: TextStyle(
                        fontSize: 16.dp
                    ),),
                  SizedBox(height: 2.h,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
