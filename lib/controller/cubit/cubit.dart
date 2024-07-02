import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/model/dio_helper.dart';
import 'package:fx_commission_app/model/end_points.dart';
import 'package:fx_commission_app/view/pages/brokers_screen/main_brokers_screen.dart';
import 'package:fx_commission_app/view/pages/home_layout_screen.dart';
import 'package:fx_commission_app/view/pages/more_screen/main_more_screen.dart';
import 'package:fx_commission_app/view/pages/profile_screen/main_profile_screen.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> screens = [
    // MainMarketScreen(),
    MainBrokersScreen(),
    MainProfileScreen(),
    MainMoreScreen(),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }

  //int counter = 1;

//   void minus (){
//   counter--;
//   emit(CounterMinusState());
// }

  // void plus (){
  //   counter++;
  //   emit(CounterPLusState());
  // }

  void userLogin({
    required email, //String
    required password, //String
    required BuildContext context,
  }) {
    emit(AppLoginLoadingState());
    DioHelper.postData(url: login, data: {'email': email, 'password': password}, token: '')
        .then((value) {
      print(value.data);
      emit(AppLoginSuccessState());
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeLayoutScreen()));
    }).catchError((error) {
      Fluttertoast.showToast(
          msg: 'Error occurred', backgroundColor: Colors.red);
      emit(AppLoginErrorState(error.toString()));
    });
  }
}
