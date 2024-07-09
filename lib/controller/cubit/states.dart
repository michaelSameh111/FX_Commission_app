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