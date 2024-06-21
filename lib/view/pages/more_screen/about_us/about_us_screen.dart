import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'More'),

      body: Column(
        children: [
          containerBelowAppBar(text: 'About Us'),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 4.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.dp),
                          child: SizedBox(
                            width: double.infinity,
                            child: Image.asset(
                                fit: BoxFit.cover,
                                'assets/images/laptop_mobile_image.png'),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          '''FXCommission is a site powered by Inwestopedia Sp. Z O.O. for commercial advisory services, based in the Federal Republic of Poland and operating with a legal license documented with the competent authorities.
              
              FXCommission is one of the market leading cashback service on Forex market which has been working since 2010, when you open an account with any broker we earn commissions from your trading and we pay back you your commissions to your account so you can earn more from your tradings.
              
              When you will register in FXCommission, you will be a full member of the site, you can open a trading account through us, trade and get a percentage of commission of transactions according to your company, You can also invite your friends to register in FXCommission and get commission rates from their trades as well. You can display any Forex product on the products page for sale where the site plays the role of broker or marketer..''',
                          style: TextStyle(fontSize: 17.dp),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
