import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/model/analysis_and_insights/analysis_and_insights_model.dart';
import 'package:fx_commission_app/model/blogs/last_news/last_news_model.dart';
import 'package:fx_commission_app/model/dio_helper.dart';
import 'package:fx_commission_app/model/end_points.dart';
import 'package:fx_commission_app/model/forex_course/forex_course_model.dart';
import 'package:fx_commission_app/model/forex_news/forex_news_model.dart';
import 'package:fx_commission_app/model/loyalty_program/loyalty_program_model.dart';
import 'package:fx_commission_app/model/services/services_model.dart';
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
    }).catchError((error, stackTrace) {
      print('error (getForexNews method)');
      print(error.toString());
      print('stack trace : $stackTrace');

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
    }).catchError((error, stackTrace){
      print('error (getForexCourse methoooooooooooood)');
      print(error.toString());
      print('stack trace : $stackTrace');

      emit(ForexCourseErrorState(error.toString()));
    });
  }

  void getAnalysisAndInsights(){
    emit(AnalysisAndInsightsLoadingState());

    DioHelper.getData(
        url: analysisAndInsightsUrl
    ).then((value){
          analysisAndInsightsModel = AnalysisAndInsightsModel.fromJson(value?.data);
          print('we have got analysis and insights dataaaaaa heeeeeeeere');

          emit(AnalysisAndInsightsSuccessState());
    }).catchError((error, stackTrace){
      print('error (getAnalysisAndInsights methoooooooooooood)');
      print(error.toString());
      print('stack trace : $stackTrace');

      emit(AnalysisAndInsightsErrorState(error));
    });
  }

  void getServices (){
    emit(ServicesLoadingState());

    DioHelper.getData(
        url: servicesUrl
    ).then((value){
      servicesModel = ServicesModel.fromJson(value?.data);
      print('we have got services dataaaaaa heeeeeeeere');

      emit(ServicesSuccessState());
    }).catchError((error, stackTrace){
      print('error (getServices methoooooooooooood)');
      print(error.toString());
      print('stack trace : $stackTrace');

      emit(ServicesErrorState(error));
    });
  }

  void getLoyaltyPrograms (){
    emit(LoyaltyProgramsLoadingState());

    DioHelper.getData(
        url: loyaltyProgramsUrl
    ).then((value){
      loyaltyProgramsModel = LoyaltyProgramModel.fromJson(value?.data);
      print('we have got loyalty programs dataaaaaa heeeeeeeere');

      emit(LoyaltyProgramsSuccessState());
    }).catchError((error, stackTrace){
      print('error (getLoyaltyPrograms methoooooooooooood)');
      print(error.toString());
      print('stack trace : $stackTrace');

      emit(LoyaltyProgramsErrorState(error));
    });
  }

  void getLastNews (){
    emit(LastNewsLoadingState());

    DioHelper.getData(
        url: lastNewsUrl
    ).then((value){
      lastNewsModel = LastNewsModel.fromJson(value?.data);
      print('we have got last news dataaaaaa heeeeeeeere');

      emit(LastNewsSuccessState());
    }).catchError((error, stackTrace){
      print('error (getLastNews methoooooooooooood)');
      print(error.toString());
      print('stack trace : $stackTrace');

      emit(LastNewsErrorState(error));
    });
  }

}
