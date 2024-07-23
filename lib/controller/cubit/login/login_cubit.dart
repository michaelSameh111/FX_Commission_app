import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/login/login_states.dart';
import 'package:fx_commission_app/controller/shared_preferences.dart';
import 'package:fx_commission_app/controller/dio_helper.dart';
import 'package:fx_commission_app/model/login/login_model.dart';
import 'package:fx_commission_app/view/pages/home_layout_screen.dart';
import '../../../model/end_points.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  void userLogin({
    required email, //String
    required password, //String
    required BuildContext context,
  }) {
    emit(LoginLoadingState());
    DioHelper.postData(
            url: loginUrl,
            data: {'email': email, 'password': password},
            //token: ''
    )

        .then((value) {
      loginDataModel = LoginDataModel.fromJson(value.data);
    // print(loginDataModel.accessToken);

      emit(LoginSuccessState());
    //  print('ay 7aga ya mo7a awel marraaaa');
      print('token enteredddd ${loginDataModel.accessToken}');


      if (state is LoginSuccessState) {
        if (rememberMe == true) {
          CacheHelper.saveData(
              key: 'username', value: loginEmailController.text);
          CacheHelper.saveData(
              key: 'password', value: loginPasswordController.text);
          CacheHelper.saveData(key: 'loggedin', value: true);
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => HomeLayoutScreen()));
         // print('ay 7aga ya mo7a tany marrraaa');
        }
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => HomeLayoutScreen()));
      }
    }).catchError((error, stackTrace) {
     if(error is DioException){
       print(error.response!.data);
     }
        // ScaffoldMessenger.of(context).showSnackBar(
        //   SnackBar(
        //     content: Container(
        //       alignment: Alignment.center,
        //       decoration: BoxDecoration(
        //           color: Colors.red, borderRadius: BorderRadius.circular(20)),
        //       height: 5.h,
        //       child: const Text('Your Username or Password is Incorrect'),
        //     ),
        //     behavior: SnackBarBehavior.floating,
        //     backgroundColor: Colors.transparent,
        //     elevation: 0,
        //   ),
        // );
      print(error.toString());
      print(stackTrace);
      Fluttertoast.showToast(
          msg: 'Please, check your email and password',
          backgroundColor: Colors.red);
      emit(LoginErrorState(error.toString()));
    });
  }

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;
  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(ChangePasswordVisibilityState());
  }

  void registerUser({
    required String firstName,
    required String lastname,
    required String email,
    required String phone,
    required String country,
    required String password,
    required String passwordConfirmation,
    required BuildContext context,
  }) async {
    emit(RegisterLoadingState());

    try {
      FormData formData = FormData.fromMap({
        'first_name': firstName,
        'last_name': lastname,
        'email': email,
        'phone': phone,
        'country': country,
        'password': password,
        'password_confirmation': passwordConfirmation,
      });

      Response response = await DioHelper.postData(
        url: registerUrl,
        data: formData,
      );

      emit(RegisterSuccessState());
      if (state is RegisterSuccessState) {
        showRegistrationSuccessDialog(context);
      }
    } catch (error) {
      if (error is DioException) {
        print('Error message: ${error.message}');
        print('Stacktrace: ${error.stackTrace}');

        if (error.response != null) {
          print('Errorrrrr : ${error.response}');
          if (error.response?.statusCode == 400) {
            var errors = error.response?.data['errors'];
            if (errors != null) {
              if (errors.containsKey('email') && errors.containsKey('phone')) {
                Fluttertoast.showToast(
                  msg: 'Email & Phone are already taken',
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.dp,
                );
              } else if (errors.containsKey('email')) {
                Fluttertoast.showToast(
                  msg: 'Email is already taken',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.dp,
                );
              } else if (errors.containsKey('phone')) {
                Fluttertoast.showToast(
                  msg: 'Phone is already taken',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.dp,
                );
              }
            }
          } else {
            print('Error response data: ${error.response?.data}');
          }
        }
      } else {
        print('Error: $error');
      }
      emit(RegisterErrorState(error.toString()));
    }
  }

  void showRegistrationSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Registration successful'),
          content: const Text('You have registered successfully.'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeLayoutScreen()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: const Color(0xff0095D0), fontSize: 15.dp),
                ))
          ],
        );
      },
    );
  }
}
