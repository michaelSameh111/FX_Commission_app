import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/view/pages/brokers_screen/main_brokers_screen.dart';
import 'package:fx_commission_app/view/pages/more_screen/main_more_screen.dart';
import 'package:fx_commission_app/view/pages/profile_screen/main_profile_screen.dart';

class AppCubit extends Cubit <AppStates>{
  AppCubit () : super (AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List <Widget> screens = [
    // MainMarketScreen(),
    MainBrokersScreen(),
    MainProfileScreen(),
    MainMoreScreen(),
  ];

  void changeIndex (int index){
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

}