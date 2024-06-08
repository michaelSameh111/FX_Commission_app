import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/pages/more_screen/FAQs/faqs_screen.dart';
import 'package:fx_commission_app/view/pages/more_screen/advertise_with_us/advertise_with_us_screen.dart';
import 'package:fx_commission_app/view/pages/more_screen/blogs/blogs_screen.dart';
import 'package:fx_commission_app/view/pages/more_screen/services/services_screen.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class MainMoreScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 6.h,
              padding: EdgeInsets.symmetric(horizontal: 4.w),
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
              child: Text(
                'More',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.dp,
                    color: const Color(0xff0379A8)),
              ),
            ), //customized containerBelowAppBar

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 4.h),
              child: Container(
                width: double.infinity,
                height: 51.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.dp),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      BlogsScreen()));
                        },
                        child: Row(
                          children: [
                            const Icon(
                              Icons.newspaper,
                              color: Color(0xff0095D0),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              'Blogs',
                              style: TextStyle(fontSize: 15.dp),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: const Color(0xffA2A2A2),
                              size: 17.dp,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 1.h,),
                      const Divider(
                        color: Color(0xffF5F4F4),
                      ),
                      SizedBox(height: 1.h,),

                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             PaymentHistoryScreen()));
                        },
                        child: Row(
                          children: [
                            const Icon(
                              Icons.auto_graph,
                              color: Color(0xff0095D0),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              'Forex',
                              style: TextStyle(fontSize: 15.dp),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: const Color(0xffA2A2A2),
                              size: 17.dp,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 1.h,),
                      const Divider(
                        color: Color(0xffF5F4F4),
                      ),
                      SizedBox(height: 1.h,),

                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             ReferralScreen()));
                        },
                        child: Row(
                          children: [
                            const Icon(
                              Icons.wine_bar_outlined,
                              color: Color(0xff0095D0),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              'Loyalty Programs',
                              style: TextStyle(fontSize: 15.dp),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: const Color(0xffA2A2A2),
                              size: 17.dp,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 1.h,),
                      const Divider(
                        color: Color(0xffF5F4F4),
                      ),
                      SizedBox(height: 1.h,),

                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             InactiveFeesScreen()));
                        },
                        child: Row(
                          children: [
                            const Icon(
                              Icons.supervised_user_circle_rounded,
                              color: Color(0xff0095D0),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              'About Us',
                              style: TextStyle(fontSize: 15.dp),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: const Color(0xffA2A2A2),
                              size: 17.dp,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 1.h,),
                      const Divider(
                        color: Color(0xffF5F4F4),
                      ),
                      SizedBox(height: 1.h,),

                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             RegisteredFromMyReferralScreen()));
                        },
                        child: Row(
                          children: [
                            const Icon(
                              Icons.headset_mic,
                              color: Color(0xff0095D0),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              'Contact Us',
                              style: TextStyle(fontSize: 15.dp),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: const Color(0xffA2A2A2),
                              size: 17.dp,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 1.h,),
                      const Divider(
                        color: Color(0xffF5F4F4),
                      ),
                      SizedBox(height: 1.h,),

                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      AdvertiseWithUsScreen()));
                        },
                        child: Row(
                          children: [
                            const Icon(
                              Icons.fiber_new_sharp,
                              color: Color(0xff0095D0),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              'Advertise With Us',
                              style: TextStyle(fontSize: 15.dp),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: const Color(0xffA2A2A2),
                              size: 17.dp,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 1.h,),
                      const Divider(
                        color: Color(0xffF5F4F4),
                      ),
                      SizedBox(height: 1.h,),

                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  ServicesScreen()));
                        },
                        child: Row(
                          children: [
                            const Icon(
                              Icons.handshake_rounded,
                              color: Color(0xff0095D0),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              'Services',
                              style: TextStyle(fontSize: 15.dp),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: const Color(0xffA2A2A2),
                              size: 17.dp,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 1.h,),
                      const Divider(
                        color: Color(0xffF5F4F4),
                      ),
                      SizedBox(height: 1.h,),

                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  FaqsScreen()));
                        },
                        child: Row(
                          children: [
                            const Icon(
                              Icons.fax_outlined,
                              color: Color(0xff0095D0),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              'FAQs',
                              style: TextStyle(fontSize: 15.dp),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: const Color(0xffA2A2A2),
                              size: 17.dp,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 4.h),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.dp),
                    color: Colors.white),
                child: InkWell(
                  onTap: (){},
                  child: Row(
                    children: [
                      Text('How to register for a trading account ?',
                      style: TextStyle(
                        fontSize: 15.dp,
                        fontWeight: FontWeight.bold
                      ),),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: const Color(0xffA2A2A2),
                        size: 17.dp,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
