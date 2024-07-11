import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/model/FAQs/faqs_model.dart';
import 'package:fx_commission_app/model/about_us/about_us_model.dart';
import 'package:fx_commission_app/model/advertise_with_us/advertise_with_us_model.dart';
import 'package:fx_commission_app/model/analysis_and_insights/analysis_and_insights_model.dart';
import 'package:fx_commission_app/model/blogs/last_news/last_news_model.dart';
import 'package:fx_commission_app/model/broker_news/broker_news_model.dart';
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

  void getFxCommNews (){
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

  void getBrokerNews (){
    emit(BrokerNewsLoadingState());

    DioHelper.getData(
        url: brokerNewsUrl
    ).then((value){
      brokerNewsModel = BrokerNewsModel.fromJson(value?.data);
      print('we have got broker news dataaaaaa heeeeeeeere');

      emit(BrokerNewsSuccessState());
    }).catchError((error, stackTrace){
      print('error (getBrokerNews methoooooooooooood)');
      print(error.toString());
      print('stack trace : $stackTrace');

      emit(BrokerNewsErrorState(error));
    });
  }

  void getAboutUs() {
    emit(AboutUsLoadingState());
    DioHelper.getData(
      url: aboutUsUrl,
    ).then((value) {
      aboutUsModel = AboutUsModel.fromJson(value?.data);
      print('we have about us dataaaaaa heeeeeeeere');


      emit(AboutUsSuccessState());
    }).catchError((error, stackTrace) {
      print('error (getAboutUs method)');
      print(error.toString());
      print('stack trace : $stackTrace');

      emit(AboutUsErrorState(error.toString()));
    });
  }

  void getAdvertiseWithUs() {
    emit(AdvertiseWithUsLoadingState());
    DioHelper.getData(
      url: advertiseWithUsUrl,
    ).then((value) {
      advertiseWithUsModel = AdvertiseWithUsModel.fromJson(value?.data);
      print('we have advertise with us dataaaaaa heeeeeeeere');


      emit(AdvertiseWithUsSuccessState());
    }).catchError((error, stackTrace) {
      print('error (getAdvertiseWithUs method)');
      print(error.toString());
      print('stack trace : $stackTrace');

      emit(AdvertiseWithUsErrorState(error.toString()));
    });
  }

  void getFaqs() {
    emit(FaqsLoadingState());
    DioHelper.getData(
      url: faqsUrl,
    ).then((value) {
      faqsModel = FaqsModel.fromJson(value?.data);
      print('we have faqs dataaaaaa heeeeeeeere');


      emit(FaqsSuccessState());
    }).catchError((error, stackTrace) {
      print('error (getFaqs method)');
      print(error.toString());
      print('stack trace : $stackTrace');

      emit(FaqsErrorState(error.toString()));
    });
  }

  void postContactUs ({
    required String name,
    required String email,
    required String phone,
    required String subject,
    required String message,
    required BuildContext context,
  }) async {
    emit(ContactUsLoadingState());

    try{
      FormData formData = FormData.fromMap({
        'name' : name,
        'email' : email,
        'phone' : phone,
        'subject' : subject,
        'message' : message,
      });

      Response response = await DioHelper.postData(
        url: contactUsUrl,
        data: formData,
      );

      emit(ContactUsSuccessState());
      print('MESSAGE SENT SUCCESSFULLYYY ${response.data}');

      if(state is ContactUsSuccessState){
        showRegistrationSuccessDialog(context);
      }

    }catch (error) {
      if(error is DioException)
      {
        print('Error message: ${error.message}');
        print('Stacktrace: ${error.stackTrace}');

        // if(error.response != null){
        //   print('Errorrrrr : ${error.response}');
        //   if(error.response?.statusCode == 400){
        //     var errors = error.response?.data['errors'];
        //     if(errors != null){
        //       if(errors.containsKey('email') && errors.containsKey('phone'))
        //       {
        //         Fluttertoast.showToast(
        //           msg: 'Email & Phone are already taken',
        //           toastLength: Toast.LENGTH_LONG,
        //           gravity: ToastGravity.BOTTOM,
        //           backgroundColor: Colors.red,
        //           textColor: Colors.white,
        //           fontSize: 16.dp,
        //         );
        //       }
        //       else if(errors.containsKey('email'))
        //       {
        //         Fluttertoast.showToast(
        //           msg: 'Email is already taken',
        //           toastLength: Toast.LENGTH_SHORT,
        //           gravity: ToastGravity.BOTTOM,
        //           backgroundColor: Colors.red,
        //           textColor: Colors.white,
        //           fontSize: 16.dp,
        //         );
        //       }
        //       else if(errors.containsKey('phone'))
        //       {
        //         Fluttertoast.showToast(
        //           msg: 'Phone is already taken',
        //           toastLength: Toast.LENGTH_SHORT,
        //           gravity: ToastGravity.BOTTOM,
        //           backgroundColor: Colors.red,
        //           textColor: Colors.white,
        //           fontSize: 16.dp,
        //         );
        //       }
        //     }
        //   } else {
        //     print('Error response data: ${error.response?.data}');
        //   }
        // }
      }
      else {
        print('Error: $error');
      }
      emit(ContactUsErrorState(error.toString()));
    }
  }

  void showRegistrationSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('We have received your message and will contact you shortly.'),
          //content: const Text('You have registered successfully.'),
          actions: [
            TextButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text('Login',
                  style: TextStyle(
                      color: const Color(0xff0095D0),
                      fontSize: 15.dp
                  ),))
          ],
        );
      },
    );
  }
}
