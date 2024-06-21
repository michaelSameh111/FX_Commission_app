import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/pages/profile_screen/trading_accounts/add_account_screen.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class TradingAccountsScreen extends StatelessWidget {
  const TradingAccountsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'My Profile'),
      body: Column(
        children: [
          containerBelowAppBar(text: 'Trading Accounts'),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 3.h,
                  ),

                  Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 3.0.w,
                      ),
                      child: addedAccountTradingAccountScreen(
                        image: 'assets/images/profile_picture.png',
                        brokerName: 'XM Group',
                        accountNumber: '586945',
                        accountStatus: 'Waiting',
                      )),
                  SizedBox(
                    height: 3.h,
                  ),
                  mainElevatedButton(
                      width: 70.w,
                      height: 5.h,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddAccountScreen()));
                      },
                      text: 'Add account')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
