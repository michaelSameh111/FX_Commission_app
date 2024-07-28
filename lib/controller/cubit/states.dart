abstract class AppStates {}

class AppInitialState extends AppStates {}

class AppLoginLoadingState extends AppStates {}

class AppLoginSuccessState extends AppStates {}

class AppLoginErrorState extends AppStates {
  final String error;

  AppLoginErrorState(this.error);
}

class AppChangeBottomNavBarState extends AppStates {}


class ForexNewsLoadingState extends AppStates {}

class ForexNewsSuccessState extends AppStates {}

class ForexNewsErrorState extends AppStates {
  final String error;

  ForexNewsErrorState(this.error);
}


class CryptoNewsLoadingState extends AppStates {}

class CryptoNewsSuccessState extends AppStates {}

class CryptoNewsErrorState extends AppStates {
  final String error;

  CryptoNewsErrorState(this.error);
}


class ForexCourseLoadingState extends AppStates {}

class ForexCourseSuccessState extends AppStates {}

class ForexCourseErrorState extends AppStates {
  final String error;

  ForexCourseErrorState(this.error);
}


class AnalysisAndInsightsLoadingState extends AppStates {}

class AnalysisAndInsightsSuccessState extends AppStates {}

class AnalysisAndInsightsErrorState extends AppStates {
  final String error;

  AnalysisAndInsightsErrorState(this.error);
}


class ServicesLoadingState extends AppStates {}

class ServicesSuccessState extends AppStates {}

class ServicesErrorState extends AppStates {
  final String error;

  ServicesErrorState(this.error);
}


class LoyaltyProgramsLoadingState extends AppStates {}

class LoyaltyProgramsSuccessState extends AppStates {}

class LoyaltyProgramsErrorState extends AppStates {
  final String error;

  LoyaltyProgramsErrorState(this.error);
}


class LastNewsLoadingState extends AppStates {}

class LastNewsSuccessState extends AppStates {}

class LastNewsErrorState extends AppStates {
  final String error;

  LastNewsErrorState(this.error);
}


class BrokerNewsLoadingState extends AppStates {}

class BrokerNewsSuccessState extends AppStates {}

class BrokerNewsErrorState extends AppStates {
  final String error;

  BrokerNewsErrorState(this.error);
}


class AboutUsLoadingState extends AppStates {}

class AboutUsSuccessState extends AppStates {}

class AboutUsErrorState extends AppStates {
  final String error;

  AboutUsErrorState(this.error);
}


class AdvertiseWithUsLoadingState extends AppStates {}

class AdvertiseWithUsSuccessState extends AppStates {}

class AdvertiseWithUsErrorState extends AppStates {
  final String error;

  AdvertiseWithUsErrorState(this.error);
}


class FaqsLoadingState extends AppStates {}

class FaqsSuccessState extends AppStates {}

class FaqsErrorState extends AppStates {
  final String error;

  FaqsErrorState(this.error);
}


class ContactUsLoadingState extends AppStates {}

class ContactUsSuccessState extends AppStates {}

class ContactUsErrorState extends AppStates {
  final String error;

  ContactUsErrorState(this.error);
}


class EditAccountLoadingState extends AppStates {}

class EditAccountSuccessState extends AppStates {}

class EditAccountErrorState extends AppStates {
  final String error;

  EditAccountErrorState(this.error);
}



class CompaniesLoadingState extends AppStates {}

class CompaniesSuccessState extends AppStates {}

class CompaniesErrorState extends AppStates {
  final String error;

  CompaniesErrorState(this.error);
}


class CompanyShowLoadingState extends AppStates {}

class CompanyShowSuccessState extends AppStates {}

class CompanyShowErrorState extends AppStates {
  final String error;

  CompanyShowErrorState(this.error);
}


class GetOneCompanyLoadingState extends AppStates {}

class GetOneCompanySuccessState extends AppStates {}

class GetOneCompanyErrorState extends AppStates {
  final String error;

  GetOneCompanyErrorState(this.error);
}


class TradingAccountsLoadingState extends AppStates {}

class TradingAccountsSuccessState extends AppStates {}

class TradingAccountsErrorState extends AppStates {
  final String error;

  TradingAccountsErrorState(this.error);
}


class AddTradingAccountLoadingState extends AppStates {}

class AddTradingAccountSuccessState extends AppStates {}

class AddTradingAccountErrorState extends AppStates {
  final String error;

  AddTradingAccountErrorState(this.error);
}


class PaymentsLogsLoadingState extends AppStates {}

class PaymentsLogsSuccessState extends AppStates {}

class PaymentsLogsErrorState extends AppStates {
  final String error;

  PaymentsLogsErrorState(this.error);
}
