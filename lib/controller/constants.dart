import 'package:flutter/material.dart';
import 'package:fx_commission_app/model/FAQs/faqs_model.dart';
import 'package:fx_commission_app/model/about_us/about_us_model.dart';
import 'package:fx_commission_app/model/advertise_with_us/advertise_with_us_model.dart';
import 'package:fx_commission_app/model/analysis_and_insights/analysis_and_insights_model.dart';
import 'package:fx_commission_app/model/blogs/last_news/last_news_model.dart';
import 'package:fx_commission_app/model/broker_news/broker_news_model.dart';
import 'package:fx_commission_app/model/companies/companies_model.dart';
import 'package:fx_commission_app/model/companies/company_show_model.dart';
import 'package:fx_commission_app/model/crypto_news/crypto_news_model.dart';
import 'package:fx_commission_app/model/forex_course/forex_course_model.dart';
import 'package:fx_commission_app/model/forex_news/forex_news_model.dart';
import 'package:fx_commission_app/model/login/login_model.dart';
import 'package:fx_commission_app/model/loyalty_program_more_screen/loyalty_program_more_screen_model.dart';
import 'package:fx_commission_app/model/loyalty_program_profile_screen/loyalty_program_profile_screen_model.dart';
import 'package:fx_commission_app/model/payments_logs/payments_logs_model.dart';
import 'package:fx_commission_app/model/services/services_model.dart';
import 'package:fx_commission_app/model/trading_accounts/add_trading_account_model.dart';
import 'package:fx_commission_app/model/trading_accounts/trading_accounts_model.dart';
import 'package:intl/intl.dart';

LoginDataModel loginDataModel = LoginDataModel();

ForexNewsModel forexNewsModel = ForexNewsModel();

CryptoNewsModel cryptoNewsModel = CryptoNewsModel();

ForexCourseModel forexCourseModel = ForexCourseModel();

AnalysisAndInsightsModel analysisAndInsightsModel = AnalysisAndInsightsModel();

ServicesModel servicesModel = ServicesModel();

LoyaltyProgramMoreScreenModel loyaltyProgramsMoreScreenModel = LoyaltyProgramMoreScreenModel();

LastNewsModel lastNewsModel = LastNewsModel();

BrokerNewsModel brokerNewsModel = BrokerNewsModel();

AboutUsModel aboutUsModel = AboutUsModel();

AdvertiseWithUsModel advertiseWithUsModel = AdvertiseWithUsModel();

CompaniesModel companiesModel = CompaniesModel();

CompanyShowModel companyShowModel = CompanyShowModel();

FaqsModel faqsModel = FaqsModel();

TextEditingController loginEmailController = TextEditingController();

TextEditingController loginPasswordController = TextEditingController();

bool rememberMe = false;

TradingAccountsModel tradingAccountsModel = TradingAccountsModel();

AddTradingAccountModel addTradingAccountModel = AddTradingAccountModel();

PaymentsLogsModel paymentsLogsModel = PaymentsLogsModel();

String formatDate(String dateString) {
  DateTime dateTime = DateTime.parse(dateString);
  return DateFormat('yyyy-MM-dd').format(dateTime);
}

LoyaltyProgramProfileScreenModel loyaltyProgramProfileScreenModel = LoyaltyProgramProfileScreenModel();