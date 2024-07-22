import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController mobileNumberController = TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController fullNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void initState() {
    emailController.text = loginDataModel.userName!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer <AppCubit, AppStates>(
  listener: (context, state) {},
  builder: (context, state) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'My Profile'),
      body: Column(
        children: [
          containerBelowAppBar(text: 'Edit my profile'),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
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
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: const Color(0xff0095D0)
                                    )
                                  ),
                                  child: CircleAvatar(
                                    radius: 10.w,
                                    backgroundColor: Colors.white,
                                    child: const Icon(Icons.upload,
                                    color: Color(0xff0095D0),),
                                  ),
                                ),
                                SizedBox(height: 2.h,),
                                Text(
                                  'Upload your photo',
                                  style: TextStyle(
                                      color: Color(0xff808080),
                                    fontWeight: FontWeight.bold
                                  ),)
                              ],
                            ),
                          ),
                          SizedBox(height: 1.h,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'First Name*',
                                style:
                                TextStyle(fontSize: 15.dp, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              defaultTextFormField(
                                textFormFieldController: firstNameController,
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
                                textFormFieldController: lastNameController,
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
                                textFormFieldController: mobileNumberController,
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
                                textFormFieldController: countryController,
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
                                textFormFieldController: fullNameController,
                                  hintText: '${loginDataModel.userName}',
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
                                textFormFieldController: emailController,
                                 // hintText: 'ahmed.moham66@gmail.com',

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
                                textFormFieldController: passwordController,
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
                                textFormFieldController: confirmPasswordController,
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
                      loading: state is EditAccountLoadingState,
                      onPressed: (){
                        AppCubit.get(context).postEditAccount(
                            firstName: firstNameController.text,
                            lastName: lastNameController.text,
                            email: emailController.text,
                            phone: mobileNumberController.text,
                            country: countryController.text,
                            password: passwordController.text,
                            passwordConfirmation: confirmPasswordController.text,
                           // image: ,
                            context: context);
                      },
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
          ),

        ],
      ),
    );
  },
);
  }
}
