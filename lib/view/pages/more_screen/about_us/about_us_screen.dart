import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/model/about_us/about_us_model.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class AboutUsScreen extends StatefulWidget {
  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {

  @override
  void initState() {
    super.initState();
    AppCubit.get(context).getAboutUs();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: reusableAppBar(context: context, text: 'More'),

          body: state is AboutUsLoadingState
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xff0095D0),
                  ),
                )
              : Column(
                  children: [
                    containerBelowAppBar(text: 'About Us'),

                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            aboutUsWidget(page: aboutUsModel.page)
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
  Widget aboutUsWidget ({
    required Pageee? page,
}){
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 3.0.w, vertical: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.dp),
            child: SizedBox(
              width: double.infinity,
              child: Image.asset(
                  fit: BoxFit.cover,
                  'assets/images/laptop_mobile_image.png'),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            '${page!.description}',
            style: TextStyle(fontSize: 17.dp),
          )
        ],
      ),
    );
  }
}
