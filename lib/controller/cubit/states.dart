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


class FxCommNewsLoadingState extends AppStates {}

class FxCommNewsSuccessState extends AppStates {}

class FxCommNewsErrorState extends AppStates {
  final String error;

  FxCommNewsErrorState(this.error);
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