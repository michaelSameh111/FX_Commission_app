import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class LoyaltyProgramsScreen extends StatefulWidget {
  @override
  State<LoyaltyProgramsScreen> createState() => _LoyaltyProgramsScreenState();
}

class _LoyaltyProgramsScreenState extends State<LoyaltyProgramsScreen> {
//   String question =
//       'What is the Loyalty program offered by FXCommission and its mechanism?';
//
//   String answer =
//       '''FXCommission offers a loyalty program to our existing and new valued clients who continuously show their trust and loyalty in trading with us. FXCommission merely offers this loyalty program to keep the passion of their valued clients in achieving on going fruitful success together.
//
// For new customers, simply you must activate your membership in our website, open and activate your trading account, activate the loyalty program and finally start trading and get the points of the loyalty program.
//
// for old customers, all what you need is to activate the program from the control panel of your trading account in our site and the program will immediately calculate the points for any new commissions yield after the time of activation of the service.''';

  String noteTitle = 'Alive Action Service';

  String note =
      'Trading commissions will be deposited to our valued clients’ accounts on our site every Saturday, i.e. once a week. Immediately after deposit, the loyalty points will be automatically calculated by the special software as a follow, \$1=points in the loyalty program.';

  String exampleTitle = 'For example :';

  String theExample =
      'if a client traded during the week and earned \$100 as a commission, which is automatically exchanged to 100 points in the loyalty program.';

  @override
  void initState() {
    super.initState();
    AppCubit.get(context).getLoyaltyPrograms();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: reusableAppBar(context: context, text: 'More'),
          body: state is LoyaltyProgramsLoadingState
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xff0095D0),
                  ),
                )
              : Column(
                  children: [
                    containerBelowAppBar(text: 'Loyalty Programs'),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 3.0.w, vertical: 4.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.dp),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Image.network(
                                        fit: BoxFit.cover,
                                        '${loyaltyProgramsModel.page!.image}',
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                const Text(
                                          'no image sent',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  // Text(
                                  //   question,
                                  //   style: TextStyle(
                                  //       fontWeight: FontWeight.bold,
                                  //       fontSize: 18.dp),
                                  // ),
                                  // SizedBox(
                                  //   height: 2.h,
                                  // ),
                                  Text(
                                    '${loyaltyProgramsModel.page!.description}',
                                    style: TextStyle(
                                        color: const Color(0xff646363),
                                        fontSize: 16.dp),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.dp),
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Image.network(
                                          fit: BoxFit.cover,
                                          '${loyaltyProgramsModel.page!.image}'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Text(
                                    noteTitle,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18.dp),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Text(
                                    note,
                                    style: TextStyle(
                                        color: const Color(0xff646363),
                                        fontSize: 16.dp),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Text(
                                    exampleTitle,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.dp),
                                  ),
                                  Text(
                                    theExample,
                                    style: TextStyle(
                                        color: const Color(0xff646363),
                                        fontSize: 16.dp),
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
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
}
