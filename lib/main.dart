import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/pages/login_screen.dart';
import 'package:fx_commission_app/view/pages/main_profile_screen.dart';
import 'package:fx_commission_app/view/pages/sign_up_screen.dart';
import 'package:fx_commission_app/view/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
      builder: (BuildContext, Orientation, ScreenType) {
        return MaterialApp(
          //theme: ThemeData(useMaterial3: true),
          home: MainProfileScreen(),
          debugShowCheckedModeBanner: false,
          color: Colors.red,
          theme: ThemeData(
            scaffoldBackgroundColor: Color(0xffededec),
            primaryColor: Color(0xff0095D0)
          ),
        );
      },
    );
  }
}
