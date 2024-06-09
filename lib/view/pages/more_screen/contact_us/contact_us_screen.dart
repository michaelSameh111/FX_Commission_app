import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            'assets/images/contact_us_background_image.png',
          ),
          fit: BoxFit.fill,
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: reusableAppBar(context: context, text: 'More'),
          body: Stack(children: [
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

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 4.h),
                    child: Column(
                      children: [
                        Text('If you got any questions ...\nPlease don’t hesitate to send us a message',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.dp
                        ),),
                        SizedBox(height: 2.h,),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.0.w, vertical: 2.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.dp),
                            color: const Color(0xff50585e),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Full Name*',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.dp
                              ),),
                              SizedBox(
                                height: 1.h,
                              ),
                              defaultTextFormField(
                                  hintText: 'Enter your name',
                                  keyboardType: TextInputType.name),
                              SizedBox(
                                height: 2.h,
                              ),

                              Text('Email*',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.dp
                                ),),
                              SizedBox(
                                height: 1.h,
                              ),
                              defaultTextFormField(
                                  hintText: 'Enter your email',
                                  keyboardType: TextInputType.emailAddress),
                              SizedBox(
                                height: 2.h,
                              ),

                              Text('Phone Number *',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.dp
                                ),),
                              SizedBox(
                                height: 1.h,
                              ),
                              defaultTextFormField(
                                  hintText: 'Mobile Number',
                                  keyboardType: TextInputType.number),
                              SizedBox(
                                height: 2.h,
                              ),

                              Text('Subject*',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.dp
                                ),),
                              SizedBox(
                                height: 1.h,
                              ),
                              defaultTextFormField(
                                  hintText: 'Write subject title',
                                  keyboardType: TextInputType.name),
                              SizedBox(
                                height: 2.h,
                              ),

                              Text('Message*',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.dp
                                ),),
                              SizedBox(
                                height: 1.h,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: const Color(0xffECECEC), // Set the background color
                                  borderRadius: BorderRadius.circular(6.dp), // Set the border radius
                                  border: Border.all(
                                    color: const Color(0xffC4C4C4), // Set the border color
                                    width: 1.5, // Set the border width
                                  ),
                                ),
                                child: TextFormField(maxLines: 4,
                                  keyboardType: TextInputType.text,
                                 // controller: textFormFieldController,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(12.dp),
                                      border: InputBorder.none,
                                      hintText: 'Enter your message...',
                                      hintStyle:
                                      TextStyle(color: const Color(0xff808080), fontSize: 15.dp)),
                                ),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),

                              Center(
                                child: mainElevatedButton(
                                  onPressed: (){},
                                  width: 35.w,
                                  height: 5.h,
                                  text: 'Send',
                                ),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
