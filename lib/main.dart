import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/cubit/bloc_observer.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/controller/shared_preferences.dart';
import 'package:fx_commission_app/controller/dio_helper.dart';
import 'package:fx_commission_app/view/pages/brokers_screen/main_brokers_screen.dart';
import 'package:fx_commission_app/view/pages/splash&auth/forgot_password_screen.dart';
import 'package:fx_commission_app/view/pages/home_layout_screen.dart';
import 'package:fx_commission_app/view/pages/splash&auth/get_your_code_screen.dart';
import 'package:fx_commission_app/view/pages/splash&auth/login_screen.dart';
import 'package:fx_commission_app/view/pages/more_screen/forex/forex_screen.dart';
import 'package:fx_commission_app/view/pages/more_screen/main_more_screen.dart';
import 'package:fx_commission_app/view/pages/profile_screen/main_profile_screen.dart';
import 'package:fx_commission_app/view/pages/profile_screen/registered_from_my_referral/registered_from_my_referral_screen.dart';
import 'package:fx_commission_app/view/pages/splash&auth/sign_up_screen.dart';
import 'package:fx_commission_app/view/pages/splash&auth/splash_screen.dart';
import 'controller/cubit/login/login_cubit.dart';
import 'view/pages/brokers_screen/brokers_new_account_screen.dart';
import 'view/pages/splash&auth/on_boarding_screen.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  // debugPaintSizeEnabled = false;
  DioHelper.init();
  Bloc.observer = MyBlocObserver();
  await CacheHelper.init();

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>(
          create: (context) => LoginCubit(),
        ),
        BlocProvider<AppCubit>(
          create: (context) => AppCubit(),
        ),
      ],
      child: FlutterSizer(
        builder: (context, orientation, screenType) {
          return MaterialApp(
            home: const SplashScreen(),
            debugShowCheckedModeBanner: false,
            color: Colors.red,
            theme: ThemeData(
              scaffoldBackgroundColor: const Color(0xffededec),
              primaryColor: const Color(0xff0095D0),
              //  primarySwatch: ,
            ),
          );
        },
      ),
    );
  }
}
