import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/model/advertise_with_us/advertise_with_us_model.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class AdvertiseWithUsScreen extends StatefulWidget {
  @override
  State<AdvertiseWithUsScreen> createState() => _AdvertiseWithUsScreenState();
}

class _AdvertiseWithUsScreenState extends State<AdvertiseWithUsScreen> {
  @override
  void initState() {
    super.initState();
    AppCubit.get(context).getAdvertiseWithUs();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: reusableAppBar(context: context, text: 'More'),
          body: state is AdvertiseWithUsLoadingState
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xff0095D0),
                  ),
                )
              : Column(
                  children: [
                    containerBelowAppBar(text: 'Advertise with us'),

                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 3.0.w, vertical: 4.h),
                              child: Column(
                                children: [
                                  advertiseWithUsWidget(page: advertiseWithUsModel.page)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }
  Widget advertiseWithUsWidget ({
    required AdvPage? page
}){
    return Text(
      '${page!.description}',
      style: TextStyle(fontSize: 17.dp),
    );

  }
}
