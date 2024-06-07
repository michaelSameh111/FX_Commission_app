import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class LoyaltyProgramScreen extends StatelessWidget {
  const LoyaltyProgramScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'My Profile'),

      body: SingleChildScrollView(
        child: Column(
          children: [
            containerBelowAppBar(text: 'Loyalty Program'),

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
                    Text('Your points at loyalty program :',
                    style: TextStyle(
                      fontSize: 15.dp,
                      fontWeight: FontWeight.w500
                    ),),
                    Text('0.000 point',
                      style: TextStyle(
                        color: const Color(0xff0379A8),
                          fontSize: 15.dp,
                          fontWeight: FontWeight.w500
                      ),),
                    SizedBox(height: 3.h,),
                    Center(
                      child: Container(
                        width: 40.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: const Color(0xff0095D0))
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('0',
                              style: TextStyle(
                                color: const Color(0xff0095D0),
                                fontSize: 15.dp,
                                fontWeight: FontWeight.w500
                              ),),
                            SizedBox(width: 1.w,),
                            Text('Point',
                              style: TextStyle(
                                  color: const Color(0xff0095D0),
                                  fontSize: 15.dp,
                                  fontWeight: FontWeight.w500
                              ),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h,),
                    Center(
                      child: Container(
                        width: 0.5.w,
                        height: 10.h,
                        color: const Color(0xff0095D0),
                      ),
                    ),
                    SizedBox(height: 1.h,),
                    Center(
                      child: Text('Bronze Client',
                      style: TextStyle(
                        fontSize: 15.dp,
                        fontWeight: FontWeight.w500
                      ),),
                    ),
                    SizedBox(height: 0.3.h,),
                    Center(
                      child: Container(
                        width: 40.w,
                        height: 5.h,
                        decoration: const BoxDecoration(
                            color: Color(0xff0095D0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('280',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.dp,
                                  fontWeight: FontWeight.w500
                              ),),
                            SizedBox(width: 1.w,),
                            Text('Points',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.dp,
                                  fontWeight: FontWeight.w500
                              ),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h,),
                    Center(
                      child: Container(
                        width: 0.5.w,
                        height: 10.h,
                        color: const Color(0xff0095D0),
                      ),
                    ),
                    SizedBox(height: 1.h,),
                    Center(
                      child: Text('Silver Client',
                        style: TextStyle(
                            fontSize: 15.dp,
                            fontWeight: FontWeight.w500
                        ),),
                    ),
                    SizedBox(height: 0.3.h,),
                    Center(
                      child: Container(
                        width: 40.w,
                        height: 5.h,
                        decoration: const BoxDecoration(
                          color: Color(0xff0095D0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('560',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.dp,
                                  fontWeight: FontWeight.w500
                              ),),
                            SizedBox(width: 1.w,),
                            Text('Points',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.dp,
                                  fontWeight: FontWeight.w500
                              ),),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h,),
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
