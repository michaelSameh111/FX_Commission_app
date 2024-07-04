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