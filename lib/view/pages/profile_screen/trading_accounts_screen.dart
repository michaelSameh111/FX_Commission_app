import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class TradingAccountsScreen extends StatelessWidget {
  const TradingAccountsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'My Profile'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            containerBelowAppBar(text: 'Trading Accounts'),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 3.0.w,
              ),
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8.dp),
                      child: Image(
                          image:
                              AssetImage('assets/images/profile_picture.png'))),
                  SizedBox(
                    width: 3.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Broker : ',
                            style: TextStyle(fontSize: 14.dp),
                          ),
                          Text(
                            'XM Group',
                            style: TextStyle(
                                fontSize: 14.dp, color: Color(0xff808080)),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Account Number : ',
                            style: TextStyle(fontSize: 14.dp),
                          ),
                          Text(
                            '586945',
                            style: TextStyle(
                                fontSize: 14.dp, color: Color(0xff808080)),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Account Status : ',
                            style: TextStyle(fontSize: 14.dp),
                          ),
                          Text(
                            'Waiting',
                            style:
                                TextStyle(fontSize: 14.dp, color: Colors.red),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            mainElevatedButton(width: 70.w, height: 5.h, text: 'Add account')
          ],
        ),
      ),
    );
  }
}
