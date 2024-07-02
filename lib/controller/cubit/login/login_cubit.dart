import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    DioHelper.postData(url: login, data: {'email': email, 'password': password}, token: '')
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
}