import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/cubit/login/login_cubit.dart';
import 'package:fx_commission_app/controller/cubit/login/login_states.dart';
import 'package:fx_commission_app/view/pages/splash&auth/login_screen.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  GlobalKey<FormState> formKey = GlobalKey();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
  listener: (context, state) {},
  builder: (context, state) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 3.0.w, right: 3.0.w, top: 6.h, bottom: 2.h),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 1.2.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.dp),
                        color: const Color(0xff0095D0)),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sign up',
                        style: TextStyle(
                            fontSize: 22.dp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Enter your E-mail address then click send',
                        style: TextStyle(
                            color: const Color(0xff808080),
                            fontSize: 15.dp,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),

              SizedBox(
                height: 2.h,
              ),

              Expanded(
                child: SingleChildScrollView(
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
                        Text(
                          'First name*',
                          style: TextStyle(
                              fontSize: 15.dp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        defaultTextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'PLease, enter your first name';
                            }
                            return null;
                          },
                          textFormFieldController: firstNameController,
                            hintText: 'First name',
                            keyboardType: TextInputType.name),
                        SizedBox(
                          height: 2.h,
                        ),

                        Text(
                          'Last Name*',
                          style: TextStyle(
                              fontSize: 15.dp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        defaultTextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'PLease, enter your last name';
                            }
                            return null;
                          },
                          textFormFieldController: lastNameController,
                            hintText: 'Last Name',
                            keyboardType: TextInputType.name),
                        SizedBox(
                          height: 2.h,
                        ),

                        Text(
                          'Email*',
                          style: TextStyle(
                              fontSize: 15.dp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        defaultTextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'PLease, enter your email';
                            }
                            return null;
                          },
                          textFormFieldController: emailController,
                            hintText: 'Enter your email',
                            keyboardType: TextInputType.emailAddress),
                        SizedBox(
                          height: 2.h,
                        ),

                        Text(
                          'Phone Number*',
                          style: TextStyle(
                              fontSize: 15.dp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        defaultTextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'PLease, enter your phone number';
                            }
                            return null;
                          },
                          textFormFieldController: phoneNumberController,
                            hintText: 'Phone Number',
                            keyboardType: TextInputType.phone),
                        SizedBox(
                          height: 2.h,
                        ),

                        Text(
                          'Country*',
                          style: TextStyle(
                              fontSize: 15.dp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        defaultTextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'PLease, enter your country';
                            }
                            return null;
                          },
                          textFormFieldController: countryController,
                            hintText: 'Country', keyboardType: TextInputType.name),
                        SizedBox(
                          height: 2.h,
                        ),

                        Text(
                          'Password',
                          style: TextStyle(
                              fontSize: 15.dp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        defaultTextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'PLease, enter password';
                            }else if(value.length < 8)
                            {
                              return 'Password must be at least 8 characters';
                            }
                            return null;
                          },
                          textFormFieldController: passwordController,
                            hintText: 'Password',
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true),
                        SizedBox(
                          height: 2.h,
                        ),

                        Text(
                          'Password Confirmation *',
                          style: TextStyle(
                              fontSize: 15.dp, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        defaultTextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'PLease, confirm your password';
                            }else if(value != passwordController.text){
                              return 'Password doesn\'t match';
                            }
                            return null;
                          },
                          textFormFieldController: passwordConfirmationController,
                            hintText: 'Password Confirmation',
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true),
                        SizedBox(
                          height: 2.h,
                        ),

                        Center(
                          child: mainElevatedButton(
                            loading: state is RegisterLoadingState,
                              onPressed: (){
                              if(formKey.currentState?.validate() ??
                                  false){
                                LoginCubit.get(context).registerUser(
                                    firstName: firstNameController.text,
                                    lastname: lastNameController.text,
                                    email: emailController.text,
                                    phone: phoneNumberController.text,
                                    country: countryController.text,
                                    password: passwordController.text,
                                    passwordConfirmation: passwordConfirmationController.text,
                                    context: context);
                              }
                              },
                              width: 35.w, height: 5.h, text: 'Sign Up'),
                        ),

                        SizedBox(
                          height: 2.h,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account ?',
                              style: TextStyle(
                                fontSize: 15.dp,
                                color: Color(0xff646363),
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginScreen()));
                                },
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: const Color(0xff0095D0),
                                      fontSize: 15.dp),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  },
);
  }
}
