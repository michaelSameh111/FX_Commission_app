import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/pages/login_screen.dart';
import 'package:fx_commission_app/view/pages/more_screen/main_more_screen.dart';
import 'package:fx_commission_app/view/pages/profile_screen/main_profile_screen.dart';
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
          home: MainMoreScreen(),
          debugShowCheckedModeBanner: false,
          color: Colors.red,
          theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xffededec),
            primaryColor: const Color(0xff0095D0),
          ),
        );
      },
    );
  }
}
