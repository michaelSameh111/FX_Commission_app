import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'My Profile'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            containerBelowAppBar(text: 'Edit my profile'),
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
                     child: Text('Change Personal Information',
                     style: TextStyle(
                       fontSize: 18.dp,
                       fontWeight: FontWeight.bold
                     ),),
                   ),
                    SizedBox(height: 3.h,),
                    InkWell(
                      onTap: (){
                        //upload picture
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Color(0xff0095D0)
                          )
                        ),
                        child: CircleAvatar(
                          radius: 10.w,
                          backgroundColor: Colors.white,
                          child: const Icon(Icons.upload,
                          color: Color(0xff0095D0),),
                        ),
                      ),
                    ),
                    TextButton(
                        onPressed: (){
                          //upload photo
                        },
                        child: Text('Upload your photo',
                        style: TextStyle(
                          color: Color(0xff808080)
                        ),)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Full Name*',
                          style:
                          TextStyle(fontSize: 15.dp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        defaultTextFormField(
                            hintText: 'Enter your name',
                            keyboardType: TextInputType.name),
                        SizedBox(
                          height: 2.h,
                        ),

                        Text(
                          'Last name',
                          style:
                          TextStyle(fontSize: 15.dp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        defaultTextFormField(
                            hintText: 'Enter your name',
                            keyboardType: TextInputType.name),
                        SizedBox(
                          height: 2.h,
                        ),

                        Text(
                          'Mobile number',
                          style:
                          TextStyle(fontSize: 15.dp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        defaultTextFormField(
                            hintText: 'Mobile Number',
                            keyboardType: TextInputType.number),
                        SizedBox(
                          height: 2.h,
                        ),

                        Text(
                          'Country',
                          style:
                          TextStyle(fontSize: 15.dp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        defaultTextFormField(
                            hintText: 'Country',
                            keyboardType: TextInputType.number),
                        SizedBox(
                          height: 2.h,
                        ),
                      ],
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
                      child: Text('Change account information',
                        style: TextStyle(
                            fontSize: 18.dp,
                            fontWeight: FontWeight.bold
                        ),),
                    ),
                    SizedBox(height: 3.h,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Full name',
                          style:
                          TextStyle(fontSize: 15.dp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        defaultTextFormField(
                            hintText: 'Ahmed Mohamed',
                            keyboardType: TextInputType.name),
                        SizedBox(
                          height: 2.h,
                        ),

                        Text(
                          'Email',
                          style:
                          TextStyle(fontSize: 15.dp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        defaultTextFormField(
                            hintText: 'ahmed.moham66@gmail.com',
                            keyboardType: TextInputType.emailAddress),
                        SizedBox(
                          height: 2.h,
                        ),

                        Text(
                          'Password',
                          style:
                          TextStyle(fontSize: 15.dp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        defaultTextFormField(
                          obscureText: true,
                            hintText: 'Your password',
                            keyboardType: TextInputType.visiblePassword),
                        SizedBox(
                          height: 2.h,
                        ),

                        Text(
                          'Confirm password',
                          style:
                          TextStyle(fontSize: 15.dp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        defaultTextFormField(
                            obscureText: true,
                            hintText: 'Confirm password',
                            keyboardType: TextInputType.visiblePassword),
                        SizedBox(
                          height: 2.h,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: mainElevatedButton(
                  text: 'Done',
                  width: 35.w,
                  height: 5.h
              ),
            ),
            SizedBox(
              height: 3.h,
            ),

          ],
        ),
      ),
    );
  }
}
