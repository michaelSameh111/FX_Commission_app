import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fx_commission_app/controller/cubit/login/login_cubit.dart';
import 'package:fx_commission_app/controller/shared_preferences.dart';
import 'package:fx_commission_app/view/pages/home_layout_screen.dart';
import 'package:fx_commission_app/view/pages/splash&auth/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    //CacheHelper.init();
    print('${CacheHelper.getData(key: 'username')} usernaaaamme');
    print('${CacheHelper.getData(key: 'password')} passwoordddd');

    super.initState();
    Timer(const Duration(seconds: 2), () {
      if (CacheHelper.getData(key: 'loggedin') == null) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const OnBoardingScreen()));
      } else {
        LoginCubit.get(context).userLogin(
            email: CacheHelper.getData(key: 'username'),
            password: CacheHelper.getData(key: 'password'),
            context: context);
        // Navigator.pushReplacement(context,
        //     MaterialPageRoute(builder: (context) => const HomeLayoutScreen()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2a2929),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset('assets/images/fx_logo_splash_screen.png')),
        ],
      ),
    );
  }
}
