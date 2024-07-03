import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fx_commission_app/controller/cubit/login/login_states.dart';
import 'package:fx_commission_app/model/dio_helper.dart';
import 'package:fx_commission_app/view/pages/home_layout_screen.dart';
import '../../../model/end_points.dart';

class LoginCubit extends Cubit <LoginStates>{
  LoginCubit() : super (LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  void userLogin({
    required email, //String
    required password, //String
    required BuildContext context,
  }) {
    emit(LoginLoadingState());
    DioHelper.postData(
        url: login,
        data: {
          'email': email,
          'password': password
        },
        token: '')
        .then((value) {
      print(value.data);
      emit(LoginSuccessState());
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeLayoutScreen()));
    }).catchError((error) {
      Fluttertoast.showToast(
          msg: 'Please, check your email and password', backgroundColor: Colors.red);
      emit(LoginErrorState(error.toString()));
    });
  }

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;
  void changePasswordVisibility (){
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(ChangePasswordVisibilityState());
  }


  void registerUser ({
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

    try{
      FormData formData = FormData.fromMap({
        'first_name' : firstName,
        'last_name' : lastname,
        'email' : email,
        'phone' : phone,
        'country' : country,
        'password' : password,
        'password_confirmation' : passwordConfirmation,
      });

          Response response = await DioHelper.postData(
              url: register,
              data: formData,
          );

          emit(RegisterSuccessState());
          // if(state is RegisterSuccessState){
          //   userLogin(email: email, password: password, context: context);
          // }
            }catch (error) {
      if(error is DioException){
        print('Error message: ${error.message}');
        print('Stacktrace: ${error.stackTrace}');

        if(error.response != null){
          print('Errorrrrr : ${error.response}');
          if(error.response?.statusCode == 400){
            var errors = error.response?.data['errors'];
            if(errors != null){
              if(errors.containsKey('email') && errors.containsKey('phone'))
              {
                Fluttertoast.showToast(
                  msg: 'Email & Phone are already taken',
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.dp,
                );
              }
              else if(errors.containsKey('email'))
              {
                Fluttertoast.showToast(
                  msg: 'Email is already taken',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.dp,
                );
              }
              else if(errors.containsKey('phone'))
              {
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
      }else {
        print('Error: $error');
      }
      emit(RegisterErrorState(error.toString()));
    }
  }
}