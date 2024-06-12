import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/pages/brokers_screen/main_brokers_screen.dart';
import 'package:fx_commission_app/view/pages/login_screen.dart';
import 'package:fx_commission_app/view/pages/more_screen/main_more_screen.dart';
import 'package:fx_commission_app/view/pages/on_boarding_screen.dart';
import 'package:fx_commission_app/view/pages/profile_screen/main_profile_screen.dart';
import 'package:fx_commission_app/view/pages/splash_screen.dart';

import 'view/pages/brokers_screen/brokers_new_account_screen.dart';

void main() {
  // debugPaintSizeEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
      builder: (BuildContext, Orientation, ScreenType) {
        return MaterialApp(
          home: MainBrokersScreen(),
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
