import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class ContactUsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: reusableAppBar(context: context,text: 'More'),

      body: Stack(
        children: [
          SingleChildScrollView(
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
                    'Contact Us',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.dp,
                        color: const Color(0xff0379A8)),
                  ),
                ), //customized containerBelowAppBar

                Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/contact_us_background_image.png',),
                  fit: BoxFit.cover,)
                ),
              ),
                // Positioned.fill(
                //   child: Image.asset(
                //     width: double.infinity,
                //     'assets/images/contact_us_background_image.png',
                //     fit: BoxFit.cover,
                //   ),
                // ),
              ],
            ),
          ),
        ]
      ),
    );
  }
}
