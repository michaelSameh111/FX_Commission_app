import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class RegisteredFromMyReferralScreen extends StatefulWidget {

  @override
  State<RegisteredFromMyReferralScreen> createState() => _RegisteredFromMyReferralScreenState();
}

class _RegisteredFromMyReferralScreenState extends State<RegisteredFromMyReferralScreen> {
  String totalPayments = '0.0 \$';
  String userName = 'ABC';
  String registeredThrough = 'XYZ';
  String registeredAt = 'xxx';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'My Profile'),

      body: SingleChildScrollView(
        child: Column(
          children: [
            containerBelowAppBar(text: 'Registered from my referral'),
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
                    Row(
                      children: [
                        Text(
                          'Total Payments : ',
                          style: TextStyle(
                              fontSize: 15.dp, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          totalPayments,
                          style: TextStyle(
                              fontSize: 15.dp, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      'Sort by date',
                      style: TextStyle(
                          fontSize: 15.dp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    const Row(
                      children: [
                        startDateTextFormField(),
                        Spacer(),
                        endDateTextFormField()
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Center(
                      child: mainElevatedButton(
                          onPressed: () {},
                          width: 35.w,
                          height: 5.h,
                          text: 'Find'),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.0.w,),
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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Row(
                        children: [
                          Text(
                            'User Name',
                            style: TextStyle(
                                fontSize: 15.dp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff0095D0)),
                          ),
                          SizedBox(width: 19.2.w,),
                          Container(
                            width: 0.3.w,
                            height: 5.h,
                            color: const Color(0xffC4C4C4),
                          ),
                          SizedBox(width: 5.w,),
                          Text(
                            userName,
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
                            'Registered\nthrough',
                            style: TextStyle(
                                fontSize: 15.dp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff0095D0)),
                          ),
                          SizedBox(width: 19.6.w,),
                          Container(
                            width: 0.3.w,
                            height: 5.h,
                            color: const Color(0xffC4C4C4),
                          ),
                          SizedBox(width: 5.w,),
                          Text(
                            registeredThrough,
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
                            'Registered\nat',
                            style: TextStyle(
                                fontSize: 15.dp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff0095D0)),
                          ),
                          SizedBox(width: 19.8.w,),
                          Container(
                            width: 0.3.w,
                            height: 5.h,
                            color: const Color(0xffC4C4C4),
                          ),
                          SizedBox(width: 5.w,),
                          Text(
                            registeredAt,
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
