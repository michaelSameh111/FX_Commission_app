import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/model/dio_helper.dart';
import 'package:fx_commission_app/model/end_points.dart';
import 'package:fx_commission_app/model/forex_course/forex_course_model.dart';
import 'package:fx_commission_app/model/forex_news/forex_news_model.dart';
import 'package:fx_commission_app/view/pages/brokers_screen/main_brokers_screen.dart';
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

  void getForexNews() {
    emit(ForexNewsLoadingState());
    DioHelper.getData(
      url: forexNewsUrl,
      token: loginDataModel.accessToken,
    ).then((value) {
      forexNewsModel = ForexNewsModel.fromJson(value?.data);
      print('ForexNewsModel forex newssssss ${forexNewsModel.forexNews}');
      print('createdddddddd ${forexNewsModel.forexNews?[1]}');
      print('ForexNewsModel statusss ${forexNewsModel.status}');

      emit(ForexNewsSuccessState());
    }).catchError((error) {
      print('error (getForexNews method)');
      // Fluttertoast.showToast(
      //     msg: 'error (getForexNews method)', backgroundColor: Colors.red);
      emit(ForexNewsErrorState(error.toString()));
    });
  }

  void getForexCourse(){
    emit(ForexCourseLoadingState());
    DioHelper.getData(
        url: forexCourseUrl,
    ).then((value){
      forexCourseModel = ForexCourseModel.fromJson(value?.data);
      print('we have got forex course dataaaaaa here : ${value?.data}');

      emit(ForexCourseSuccessState());
    }).catchError((error){
      print('error (getForexCourse methoooooooooooood)');
      print(error.toString());
      //Print(StackTrace);
      emit(ForexCourseErrorState(error.toString()));
    });
  }
}
