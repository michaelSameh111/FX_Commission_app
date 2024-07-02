abstract class AppStates {}

class AppInitialState extends AppStates {}

class AppLoginLoadingState extends AppStates {}

class AppLoginSuccessState extends AppStates {}

class AppLoginErrorState extends AppStates {
  final String error;

  AppLoginErrorState(this.error);
}

class AppChangeBottomNavBarState extends AppStates {}


// class CounterMinusState extends FxStates{
// final int counter;
// CounterMinusState(this.counter);
// } video 85 min. 30

//class CounterPlusState extends FxStates{}