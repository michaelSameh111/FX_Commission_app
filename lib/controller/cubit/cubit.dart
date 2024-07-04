import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/model/dio_helper.dart';
import 'package:fx_commission_app/model/end_points.dart';
import 'package:fx_commission_app/model/forex_news/forex_news.dart';
import 'package:fx_commission_app/model/login/login_model.dart';
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

  void getForexNews({
    required status,
    required forexNews,
    required String token,
  }) {
    emit(ForexNewsLoadingState());
    DioHelper.getData(
      url: forexNewsUrl,
      query: {'status': status, 'forex news': forexNews},
      token: loginDataModel.accessToken!,
    ).then((value) {
      forexNewsModel = ForexNewsModel.fromJson(value?.data);
      print('ForexNewsModel forex news ${forexNewsModel.forexNews}');
      print('ForexNewsModel status ${forexNewsModel.status}');

      emit(ForexNewsSuccessState());
    }).catchError((error) {
      Fluttertoast.showToast(
          msg: 'Please, check your email and password', backgroundColor: Colors.red);
      emit(ForexNewsErrorState(error.toString()));
    });
  }
}
