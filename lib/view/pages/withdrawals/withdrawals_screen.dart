import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/pages/withdrawals/add_new_payment_method_screen.dart';
import 'package:fx_commission_app/view/pages/withdrawals/add_request_screen.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class   WithdrawalsScreen extends StatelessWidget {
  String minimum = '\$5.00';
  String fees = 'xxx';
  String withdrawalData = 'xxx';
  String theAmount = '\$5.00';
  String theDate = 'xxx';
  String theCondition = 'xxxx';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'My Profile'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            containerBelowAppBar(text: 'Withdrawals'),
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
                    Center(
                      child: Text(
                        'Withdrawal Methods',
                        style: TextStyle(
                            fontSize: 18.dp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Row(
                        children: [
                          Text(
                            'Withdrawal\nMethod',
                            style: TextStyle(
                                fontSize: 15.dp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff0095D0)),
                          ),
                          SizedBox(
                            width: 19.w,
                          ),
                          Container(
                            width: 0.3.w,
                            height: 10.h,
                            color: const Color(0xffC4C4C4),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            'Vodafone Cash (only\nfor customers\nin Egypt)',
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
                            'Minimum',
                            style: TextStyle(
                                fontSize: 15.dp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff0095D0)),
                          ),
                          SizedBox(
                            width: 22.w,
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
                            minimum,
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
                            'Withdrawal\nData	',
                            style: TextStyle(
                                fontSize: 15.dp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff0095D0)),
                          ),
                          SizedBox(
                            width: 19.w,
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
                            withdrawalData,
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
                            'Delete	',
                            style: TextStyle(
                                fontSize: 15.dp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff0095D0)),
                          ),
                          SizedBox(
                            width: 26.3.w,
                          ),
                          Container(
                            width: 0.3.w,
                            height: 5.h,
                            color: const Color(0xffC4C4C4),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Icon(
                            Icons.cancel_outlined,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
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
                                builder: (context) =>
                                    AddNewPaymentMethodScreen()));
                      },
                      text: 'Add new payment method',
                    )
                  ],
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
                    Center(
                      child: Text(
                        'Withdrawal Requests',
                        style: TextStyle(
                            fontSize: 18.dp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Row(
                        children: [
                          Text(
                            'Withdrawal\nMethod',
                            style: TextStyle(
                                fontSize: 15.dp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff0095D0)),
                          ),
                          SizedBox(
                            width: 19.w,
                          ),
                          Container(
                            width: 0.3.w,
                            height: 10.h,
                            color: const Color(0xffC4C4C4),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            'Vodafone Cash (only\nfor customers\nin Egypt)',
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
                            'The Amount',
                            style: TextStyle(
                                fontSize: 15.dp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff0095D0)),
                          ),
                          SizedBox(
                            width: 17.2.w,
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
                            theAmount,
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
                            'The Date',
                            style: TextStyle(
                                fontSize: 15.dp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff0095D0)),
                          ),
                          SizedBox(
                            width: 22.8.w,
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
                    Divider(
                      thickness: 0.3.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Row(
                        children: [
                          Text(
                            'The\nCondition	',
                            style: TextStyle(
                                fontSize: 15.dp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff0095D0)),
                          ),
                          SizedBox(
                            width: 20.6.w,
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
                            theCondition,
                            style: TextStyle(
                                fontSize: 15.dp, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
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
                                builder: (context) =>
                                    AddRequestScreen()));
                      },
                      text: 'Add a request',
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
