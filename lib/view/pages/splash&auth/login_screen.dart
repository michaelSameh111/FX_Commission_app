import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/login/login_states.dart';
import 'package:fx_commission_app/view/pages/splash&auth/forgot_password_screen.dart';
import 'package:fx_commission_app/view/pages/splash&auth/sign_up_screen.dart';
import 'package:fx_commission_app/controller/cubit/login/login_cubit.dart';
import '../../widgets/reusable_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //bool rememberMe = false;
  var formKey = GlobalKey<FormState>();
  IconData suffixIcon = Icons.visibility_off;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 10.h),
            child: SingleChildScrollView(
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
                            'Login',
                            style: TextStyle(
                                fontSize: 22.dp, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'You have an account ? Login here',
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
                    height: 4.h,
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12.dp),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xff0095D0),
                      ),
                      borderRadius: BorderRadius.circular(7.dp),
                    ),
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                                  return 'Please, enter your email';
                                }
                                return null;
                              },
                              textFormFieldController: loginEmailController,
                              hintText: 'Enter your email',
                              keyboardType: TextInputType.emailAddress),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            'Password*',
                            style: TextStyle(
                                fontSize: 15.dp, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),

                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0xffECECEC),
                              borderRadius: BorderRadius.circular(6.dp),
                              border: Border.all(
                                color: const Color(0xffC4C4C4),
                                width: 1.5,
                              ),
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.visiblePassword,
                              controller: loginPasswordController,
                              obscureText: LoginCubit.get(context).isPassword,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(12.dp),
                                border: InputBorder.none,
                                hintText: 'Enter your password',
                                hintStyle: TextStyle(
                                    color: const Color(0xff808080),
                                    fontSize: 15.dp),
                                suffixIcon: GestureDetector(
                                    onTap: () {
                                      LoginCubit.get(context)
                                          .changePasswordVisibility();
                                    },
                                    child: LoginCubit.get(context).isPassword
                                        ? const Icon(Icons.visibility_outlined)
                                        : const Icon(Icons.visibility_off_outlined)),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please, enter your password';
                                }
                                return null;
                              },
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                            ForgotPasswordScreen()));
                                  },
                                  child: Text(
                                    'Forgot password ?',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 13.dp),
                                  )),
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                side: const BorderSide(
                                  color: Color(0xffA2A2A2),
                                ),
                                value: rememberMe,
                                onChanged: (bool? value) {
                                  setState(() {
                                    rememberMe = value!;
                                  });
                                },
                                activeColor: const Color(0xff0095D0),
                                checkColor: Colors.white,
                              ),
                              Text(
                                'Remember me',
                                style: TextStyle(
                                    fontSize: 14.dp,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Center(
                            child: mainElevatedButton(
                                text: 'Login',
                                width: 35.w,
                                height: 5.h,
                                loading: state is LoginLoadingState,
                                onPressed: () {
                                  if (formKey.currentState?.validate() ??
                                      false) {
                                    LoginCubit.get(context).userLogin(
                                      email: loginEmailController.text,
                                      password: loginPasswordController.text,
                                      context: context,
                                    );
                                  }
                                }),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t have an account ?',
                                style: TextStyle(
                                  fontSize: 15.dp,
                                  color: const Color(0xff646363),
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const SignUpScreen()));
                                  },
                                  child: Text(
                                    'Sign up',
                                    style: TextStyle(
                                        color: const Color(0xff0095D0),
                                        fontSize: 15.dp),
                                  ))
                            ],
                          )
                        ],
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
