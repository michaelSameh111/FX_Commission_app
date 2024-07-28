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
import 'package:fx_commission_app/model/companies/companies_model.dart';
import 'package:fx_commission_app/controller/dio_helper.dart';
import 'package:fx_commission_app/model/companies/company_show_model.dart';
import 'package:fx_commission_app/model/crypto_news/crypto_news_model.dart';
import 'package:fx_commission_app/model/end_points.dart';
import 'package:fx_commission_app/model/forex_course/forex_course_model.dart';
import 'package:fx_commission_app/model/forex_news/forex_news_model.dart';
import 'package:fx_commission_app/model/loyalty_program/loyalty_program_model.dart';
import 'package:fx_commission_app/model/services/services_model.dart';
import 'package:fx_commission_app/model/trading_accounts/trading_accounts_model.dart';
import 'package:fx_commission_app/view/pages/brokers_screen/main_brokers_screen.dart';
import 'package:fx_commission_app/view/pages/more_screen/main_more_screen.dart';
import 'package:fx_commission_app/view/pages/profile_screen/main_profile_screen.dart';
import 'package:fx_commission_app/view/pages/splash&auth/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../model/payments_logs/payments_logs_model.dart';

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

  void getForexCourse() {
    emit(ForexCourseLoadingState());
    DioHelper.getData(
      url: forexCourseUrl,
    ).then((value) {
      forexCourseModel = ForexCourseModel.fromJson(value?.data);
      print('we have got forex course dataaaaaa here : ${value?.data}');

      emit(ForexCourseSuccessState());
    }).catchError((error, stackTrace) {
      print('error (getForexCourse methoooooooooooood)');
      print(error.toString());
      print('stack trace : $stackTrace');

      emit(ForexCourseErrorState(error.toString()));
    });
  }

  void getAnalysisAndInsights() {
    emit(AnalysisAndInsightsLoadingState());

    DioHelper.getData(url: analysisAndInsightsUrl).then((value) {
      analysisAndInsightsModel = AnalysisAndInsightsModel.fromJson(value?.data);
      print('we have got analysis and insights dataaaaaa heeeeeeeere');

      emit(AnalysisAndInsightsSuccessState());
    }).catchError((error, stackTrace) {
      print('error (getAnalysisAndInsights methoooooooooooood)');
      print(error.toString());
      print('stack trace : $stackTrace');

      emit(AnalysisAndInsightsErrorState(error));
    });
  }

  void getServices() {
    emit(ServicesLoadingState());

    DioHelper.getData(url: servicesUrl).then((value) {
      servicesModel = ServicesModel.fromJson(value?.data);
      print('we have got services dataaaaaa heeeeeeeere');

      emit(ServicesSuccessState());
    }).catchError((error, stackTrace) {
      print('error (getServices methoooooooooooood)');
      print(error.toString());
      print('stack trace : $stackTrace');

      emit(ServicesErrorState(error));
    });
  }

  void getLoyaltyPrograms() {
    emit(LoyaltyProgramsLoadingState());

    DioHelper.getData(url: loyaltyProgramsUrl).then((value) {
      loyaltyProgramsModel = LoyaltyProgramModel.fromJson(value?.data);
      print('we have got loyalty programs dataaaaaa heeeeeeeere');

      emit(LoyaltyProgramsSuccessState());
    }).catchError((error, stackTrace) {
      print('error (getLoyaltyPrograms methoooooooooooood)');
      print(error.toString());
      print('stack trace : $stackTrace');

      emit(LoyaltyProgramsErrorState(error));
    });
  }

  void getLastNews() {
    emit(LastNewsLoadingState());

    DioHelper.getData(url: lastNewsUrl).then((value) {
      lastNewsModel = LastNewsModel.fromJson(value?.data);
      print('we have got last news dataaaaaa heeeeeeeere');

      emit(LastNewsSuccessState());
    }).catchError((error, stackTrace) {
      print('error (getLastNews methoooooooooooood)');
      print(error.toString());
      print('stack trace : $stackTrace');

      emit(LastNewsErrorState(error));
    });
  }

  void getCryptoNews() {
    emit(CryptoNewsLoadingState());

    DioHelper.getData(url: cryptoNewsUrl).then((value) {
      cryptoNewsModel = CryptoNewsModel.fromJson(value?.data);
      print('we have got crypto news dataaaaaa heeeeeeeere');

      emit(CryptoNewsSuccessState());
    }).catchError((error, stackTrace) {
      print('error (getCryptoNews methoooooooooooood)');
      print(error.toString());
      print('stack trace : $stackTrace');

      emit(CryptoNewsErrorState(error));
    });
  }

  void getBrokerNews() {
    emit(BrokerNewsLoadingState());

    DioHelper.getData(url: brokerNewsUrl).then((value) {
      brokerNewsModel = BrokerNewsModel.fromJson(value?.data);
      print('we have got broker news dataaaaaa heeeeeeeere');

      emit(BrokerNewsSuccessState());
    }).catchError((error, stackTrace) {
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

  void postContactUs({
    required String name,
    required String email,
    required String phone,
    required String subject,
    required String message,
    required BuildContext context,
  }) async {
    emit(ContactUsLoadingState());

    try {
      FormData formData = FormData.fromMap({
        'name': name,
        'email': email,
        'phone': phone,
        'subject': subject,
        'message': message,
      });

      Response response = await DioHelper.postData(
        url: contactUsUrl,
        data: formData,
      );

      emit(ContactUsSuccessState());
      print('MESSAGE SENT SUCCESSFULLYYY ${response.data}');

      if (state is ContactUsSuccessState) {
        contactUsSuccessDialog(context);
      }
    } catch (error) {
      if (error is DioException) {
        print('Error message: ${error.message}');
        print('Stacktrace: ${error.stackTrace}');
      } else {
        print('Error: $error');
      }
      emit(ContactUsErrorState(error.toString()));
    }
  }

  void contactUsSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          //  title: const Text('We have received your message and will contact you shortly.'),
          content: Text(
            'We have received your message and will contact you shortly.',
            style: TextStyle(fontSize: 18.dp),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                      color: const Color(0xff0095D0), fontSize: 18.dp),
                ))
          ],
        );
      },
    );
  }

  void postEditAccount({
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String country,
    required String password,
    required String passwordConfirmation,
    //required String image,
    required BuildContext context,
  }) async {
    emit(EditAccountLoadingState());

    try {
      FormData formData = FormData.fromMap({
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'phone': phone,
        'country': country,
        'password': password,
        'password_confirmation': passwordConfirmation,
        // 'image': image,
      });

      Response response = await DioHelper.postData(
          url: editAccountUrl,
          data: formData,
          token: loginDataModel.accessToken);

      print('token now ${loginDataModel.accessToken}');
      emit(EditAccountSuccessState());
      print('ACCOUNT EDITED SUCCESSFULLYYY ${response.data}');

      if (state is EditAccountSuccessState) {
        editAccountSuccessDialog(context);
      }
    } catch (error) {
      if (error is DioException) {
        print(error.response!.data);
        print('token nowww ${loginDataModel.accessToken}');

        print('Error message: ${error.message}');
        print('Stacktrace: ${error.stackTrace}');
      } else {
        print('Error: $error');
      }
      emit(EditAccountErrorState(error.toString()));
    }
  }

  void editAccountSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(
            'Account edited successfully.',
            style: TextStyle(fontSize: 18.dp),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Ok',
                  style: TextStyle(
                      color: const Color(0xff0095D0), fontSize: 18.dp),
                ))
          ],
        );
      },
    );
  }

  void postTradingAccounts({
    required BuildContext context,
  }) async {
    emit(TradingAccountsLoadingState());
    try {
      // FormData formData = FormData.fromMap({});
      Response response = await DioHelper.postData(
        url: tradingAccountsUrl,
        token: loginDataModel.accessToken,
      ).then((value) async {
        tradingAccountsModel = TradingAccountsModel.fromJson(value.data);
        emit(TradingAccountsSuccessState());
        return value;
      });

      print('GOT TRADING ACCOUNTS SUCCESSFULLYYY ${response.data}');
    } catch (error) {
      if (error is DioException) {
        print(error.response!.data);

        print('Error message: ${error.message}');
        print('Stacktrace: ${error.stackTrace}');
      } else {
        print('Error: ${error.toString()}');
      }
      emit(TradingAccountsErrorState(error.toString()));
    }
  }


  void postAddTradingAccount({
    required int companyId,
    required int accountNumber,
    required BuildContext context,
  }) async {
    emit(AddTradingAccountLoadingState());

    try {
      FormData formData = FormData.fromMap({
        'company': companyId,
        'account_url': accountNumber,
      });

      Response response = await DioHelper.postData(
          url: addTradingAccountUrl,
          data: formData,
          token: loginDataModel.accessToken);

      emit(AddTradingAccountSuccessState());
      print('ACCOUNT ADDED SUCCESSFULLYYY ${response.data}');

      if (state is AddTradingAccountSuccessState) {
        addTradingAccountSuccessDialog(context);
      }
    } catch (error) {
      if (error is DioException) {
        print(error.response!.data);
        print('token nowww ${loginDataModel.accessToken}');

        print('Error message: ${error.message}');
        print('Stacktrace: ${error.stackTrace}');
      } else {
        print('Error: $error');
      }
      emit(AddTradingAccountErrorState(error.toString()));
    }
  }

  void addTradingAccountSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Text(
            'Account added successfully and in review.',
            style: TextStyle(fontSize: 18.dp),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Ok',
                  style: TextStyle(
                      color: const Color(0xff0095D0), fontSize: 18.dp),
                ))
          ],
        );
      },
    );
  }


  void getCompanies() {
    emit(CompaniesLoadingState());
    DioHelper.getData(
      url: companiesUrl,
    ).then((value) {
      companiesModel = CompaniesModel.fromJson(value?.data);
      print('we have companies dataaaaaa heeeeeeeere');

      emit(CompaniesSuccessState());
    }).catchError((error, stackTrace) {
      print('error (getCompanies method)');
      print(error.toString());
      print('stack trace : $stackTrace');

      emit(CompaniesErrorState(error.toString()));
    });
  }

  void getOneCompanyShow({required int? id}) {
    emit(CompanyShowLoadingState());
    DioHelper.getData(url: companyShowUrl, id: id).then((value) {
      companyShowModel = CompanyShowModel.fromJson(value?.data);
      print('we have company show dataaaaaa heeeeeeeere');

      emit(CompanyShowSuccessState());
    }).catchError((error, stackTrace) {
      print('error (getCompanyShow method)');
      print(error.toString());
      print('stack trace : $stackTrace');

      emit(CompanyShowErrorState(error.toString()));
    });
  }

  Future<CompanyShowModel?> getCompanyShow(
      {required int? oneCompanyId,
      required CompanyShowModel companyShowModel}) {
    emit(GetOneCompanyLoadingState());
    return DioHelper.getData(url: companyShowUrl, id: oneCompanyId)
        .then((value) {
      companyShowModel = CompanyShowModel.fromJson(value!.data);
      print(value.data);
      emit(GetOneCompanySuccessState());
      return companyShowModel;
    }).catchError((error) {
      if (error is DioException) {
        if (error.response != null) {
          print(error.response!.data);
        }
        emit(GetOneCompanyErrorState(error.toString()));
      }
      return companyShowModel;
    });

    // DioHelper.getData(
    //     url: companyShowUrl,
    //     id: oneCompanyId
    // ).then((value) {
    //   companyShowModel = CompanyShowModel.fromJson(value?.data);
    //   print('we have company show dataaaaaa heeeeeeeere');
    //
    //   emit(GetOneCompanySuccessState());
    // }).catchError((error, stackTrace) {
    //   print('error (getCompanyShow method)');
    //   print(error.toString());
    //   print('stack trace : $stackTrace');
    //
    //   emit(GetOneCompanyErrorState(error.toString()));
    // });
  }


  void getPaymentsLogs() {
    emit(PaymentsLogsLoadingState());
    DioHelper.getData(
      url: paymentsLogsUrl,
      token: loginDataModel.accessToken,
    ).then((value) {
      paymentsLogsModel = PaymentsLogsModel.fromJson(value?.data);
      print('we have payments logs dataaaaaa heeeeeeeere');

      emit(PaymentsLogsSuccessState());
    }).catchError((error, stackTrace) {
      print('error (getPaymentsLogs method)');
      print(error.toString());
      print('stack trace : $stackTrace');

      emit(PaymentsLogsErrorState(error.toString()));
    });
  }


  void logout(BuildContext context) async {
    // Obtain shared preferences
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Clear user session data
    await prefs.clear();

    // Navigate to the login screen
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => LoginScreen()),
      (Route<dynamic> route) => false,
    );
    loginEmailController.clear();
    loginPasswordController.clear();
  }
}
