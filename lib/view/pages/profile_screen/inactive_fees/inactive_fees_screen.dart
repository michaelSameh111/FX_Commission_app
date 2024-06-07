import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class InactiveFeesScreen extends StatelessWidget {
  String fees = '\$5.00';
  String theDate = 'xxx';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'My Profile'),

      body: SingleChildScrollView(
        child: Column(
          children: [
            containerBelowAppBar(text: 'Inactive Fees'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 3.h),
              child: Text(
                'Our dear client, we inform you that starting from 1st Jan 2024,'
                    ' a \$2 will be deducted on inactive accounts,'
                    ' these expenses will be automatically deducted from the'
                    ' customer’s balance on our website.\n'
                    '\nOnly for accounts that are inactive for a period of'
                    ' three months, i.e. no cashback will be applied to them'
                    ' over a period of three months.\n'
                    '\nStarting on Jan 1st,'
                    ' customers will see in the control panel the expenses'
                    ' section with the same explanation which is written here.'
                    ' This fee will be formed every three months'
                    ' for inactive accounts.\n'
                    '\nGreetings.',
                style: TextStyle(
                  fontSize: 16.dp
                ),
              ),
            ),
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
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Row(
                        children: [
                          Text(
                            'Fees',
                            style: TextStyle(
                                fontSize: 15.dp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff0095D0)),
                          ),
                          SizedBox(
                            width: 30.2.w,
                          ),
                          Container(
                            width: 0.3.w,
                            height: 5.h,
                            color: const Color(0xffC4C4C4),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            fees,
                            style: TextStyle(
                                fontSize: 15.dp, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 0.3.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Row(
                        children: [
                          Text(
                            'Payment\nDate',
                            style: TextStyle(
                                fontSize: 15.dp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff0095D0)),
                          ),
                          SizedBox(
                            width: 23.w,
                          ),
                          Container(
                            width: 0.3.w,
                            height: 5.h,
                            color: const Color(0xffC4C4C4),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            theDate,
                            style: TextStyle(
                                fontSize: 15.dp, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
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
