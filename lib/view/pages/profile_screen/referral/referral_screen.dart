import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class ReferralScreen extends StatelessWidget {
  String totalPayments = '0.0 \$';
  String amount = '\$5.00';
  String accountNumber = '0';
  String brokerName = 'xxx';
  String paymentDate = 'xxx';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'My Profile'),

      body: SingleChildScrollView(
        child: Column(
          children: [
            containerBelowAppBar(text: 'Referral'),

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
                    Text(
                      'Copy the link and start making money by inviting your friends.',
                      style: TextStyle(
                          fontSize: 15.dp, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    GestureDetector(
                      onTap: () async {
                        final url = Uri.parse('https://www.fxcommission.com/via/5793');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url, mode: LaunchMode.externalApplication);
                        }
                      },
                      child: Text(
                        'https://www.fxcommission.com/via/5793',
                        style: TextStyle(
                          color: const Color(0xff0379A8),
                            fontSize: 15.dp, fontWeight: FontWeight.w500),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      'Your profits',
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
                    ),
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
                            'Amount',
                            style: TextStyle(
                                fontSize: 15.dp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff0095D0)),
                          ),
                          SizedBox(width: 25.w,),
                          Container(
                            width: 0.3.w,
                            height: 5.h,
                            color: const Color(0xffC4C4C4),
                          ),
                          SizedBox(width: 5.w,),
                          Text(
                            amount,
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
                            'Account\nNumber',
                            style: TextStyle(
                                fontSize: 15.dp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff0095D0)),
                          ),
                          SizedBox(width: 24.2.w,),
                          Container(
                            width: 0.3.w,
                            height: 5.h,
                            color: const Color(0xffC4C4C4),
                          ),
                          SizedBox(width: 5.w,),
                          Text(
                            accountNumber,
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
                            'Broker',
                            style: TextStyle(
                                fontSize: 15.dp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xff0095D0)),
                          ),
                          SizedBox(width: 27.2.w,),
                          Container(
                            width: 0.3.w,
                            height: 5.h,
                            color: const Color(0xffC4C4C4),
                          ),
                          SizedBox(width: 5.w,),
                          Text(
                            brokerName,
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
                          SizedBox(width: 23.4.w,),
                          Container(
                            width: 0.3.w,
                            height: 5.h,
                            color: const Color(0xffC4C4C4),
                          ),
                          SizedBox(width: 5.w,),
                          Text(
                            paymentDate,
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
