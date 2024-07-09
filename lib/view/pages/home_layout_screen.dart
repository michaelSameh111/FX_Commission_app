import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';

class HomeLayoutScreen extends StatelessWidget {
  const HomeLayoutScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: BlocConsumer <AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          AppCubit cubit = AppCubit.get(context);

          return Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                selectedItemColor: const Color(0xff0379A8),
                unselectedItemColor: const Color(0xffA2A2A2),
                currentIndex: cubit.currentIndex,
                onTap: (int index) {
                  cubit.changeIndex(index);
                  // setState(() {
                  //currentIndex = index;
                  // });
                },
                items: const [
                  // BottomNavigationBarItem(
                  //   icon: Icon(Icons.monetization_on),
                  //   label: 'Market',
                  // ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search_off), label: 'Brokers'),
                  BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.view_headline_sharp),
                    label: 'More',
                  ),
                ],
              ),
              body: cubit.screens[cubit.currentIndex]
          );
        },
      ),
    );
  }
}
