import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/controller/cubit/login/login_cubit.dart';
import 'package:fx_commission_app/controller/cubit/login/login_states.dart';
import 'package:fx_commission_app/view/pages/profile_screen/edit_profile_screen.dart';
import 'package:fx_commission_app/view/pages/profile_screen/inactive_fees/inactive_fees_screen.dart';
import 'package:fx_commission_app/view/pages/profile_screen/loyalty_program_profile_screen/loyalty_program_profile_screen.dart';
import 'package:fx_commission_app/view/pages/profile_screen/payment_logs/payment_logs_screen.dart';
import 'package:fx_commission_app/view/pages/profile_screen/referral/referral_screen.dart';
import 'package:fx_commission_app/view/pages/profile_screen/referral_codes/referral_codes_screen.dart';
import 'package:fx_commission_app/view/pages/profile_screen/registered_from_my_referral/registered_from_my_referral_screen.dart';
import 'package:fx_commission_app/view/pages/profile_screen/trading_accounts/trading_accounts_screen.dart';
import 'withdrawals/withdrawals_screen.dart';

class MainProfileScreen extends StatelessWidget {
  const MainProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: state is LoginLoadingState
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xff0095D0),
                  ),
                )
              : Padding(
                  padding: EdgeInsets.only(
                    left: 3.0.w,
                    right: 3.0.w,
                    top: 6.h,
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12.dp),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.dp),
                            color: Colors.white),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.dp),
                                  topRight: Radius.circular(10.dp)),
                              child: Image.network(
                                fit: BoxFit.fill,
                                //width: double.infinity,
                                height: 8.h,
                                '${loginDataModel.userImage}',
                                errorBuilder: (context, error, stackTrace) =>
                                    Text('no image returned'),
                              ),
                            ),
                            SizedBox(
                              width: 6.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${loginDataModel.userName}',
                                  style: TextStyle(
                                      color: const Color(0xff0095D0),
                                      fontSize: 25.dp,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    EditProfileScreen()));
                                      },
                                      child: Icon(
                                        Icons.mode_edit_outline_outlined,
                                        size: 23.dp,
                                        color: const Color(0xff646363),
                                      ),
                                    ),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      EditProfileScreen()));
                                        },
                                        child: Text(
                                          'Edit my profile',
                                          style: TextStyle(
                                              color: const Color(0xff646363),
                                              fontSize: 16.dp),
                                        ))
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 1.2.w,
                                    height: 10.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(15.dp),
                                        color: const Color(0xff0095D0)),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Client Area',
                                        style: TextStyle(
                                            fontSize: 22.dp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Welcome, your current balance is ${loginDataModel.userBalance}',
                                        style: TextStyle(
                                            color: const Color(0xff808080),
                                            fontSize: 15.dp,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 4.h,
                              ),
                              Container(
                                width: double.infinity,
                                //height: 54.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.dp),
                                    color: Colors.white),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5.w, vertical: 2.h),
                                  child: Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const TradingAccountsScreen()));
                                        },
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.currency_exchange,
                                              color: Color(0xff0095D0),
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Text(
                                              'Trading Accounts',
                                              style: TextStyle(fontSize: 15.dp),
                                            ),
                                            const Spacer(),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: const Color(0xffA2A2A2),
                                              size: 17.dp,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      const Divider(
                                        color: Color(0xffF5F4F4),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      PaymentHistoryScreen()));
                                        },
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.auto_graph,
                                              color: Color(0xff0095D0),
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Text(
                                              'Payments Log',
                                              style: TextStyle(fontSize: 15.dp),
                                            ),
                                            const Spacer(),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: const Color(0xffA2A2A2),
                                              size: 17.dp,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      const Divider(
                                        color: Color(0xffF5F4F4),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ReferralScreen()));
                                        },
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.home_mini,
                                              color: Color(0xff0095D0),
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Text(
                                              'Referral',
                                              style: TextStyle(fontSize: 15.dp),
                                            ),
                                            const Spacer(),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: const Color(0xffA2A2A2),
                                              size: 17.dp,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      const Divider(
                                        color: Color(0xffF5F4F4),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      InactiveFeesScreen()));
                                        },
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.attach_money,
                                              color: Color(0xff0095D0),
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Text(
                                              'Inactive Fees',
                                              style: TextStyle(fontSize: 15.dp),
                                            ),
                                            const Spacer(),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: const Color(0xffA2A2A2),
                                              size: 17.dp,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      const Divider(
                                        color: Color(0xffF5F4F4),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      RegisteredFromMyReferralScreen()));
                                        },
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.money_rounded,
                                              color: Color(0xff0095D0),
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Text(
                                              'Registered from my referral',
                                              style: TextStyle(fontSize: 15.dp),
                                            ),
                                            const Spacer(),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: const Color(0xffA2A2A2),
                                              size: 17.dp,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      const Divider(
                                        color: Color(0xffF5F4F4),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      WithdrawalsScreen()));
                                        },
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.add_card_sharp,
                                              color: Color(0xff0095D0),
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Text(
                                              'Withdrawals',
                                              style: TextStyle(fontSize: 15.dp),
                                            ),
                                            const Spacer(),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: const Color(0xffA2A2A2),
                                              size: 17.dp,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      const Divider(
                                        color: Color(0xffF5F4F4),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ReferralCodesScreen()));
                                        },
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.qr_code,
                                              color: Color(0xff0095D0),
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Text(
                                              'Referral Codes',
                                              style: TextStyle(fontSize: 15.dp),
                                            ),
                                            const Spacer(),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: const Color(0xffA2A2A2),
                                              size: 17.dp,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      const Divider(
                                        color: Color(0xffF5F4F4),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const LoyaltyProgramProfileScreen()));
                                        },
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.wine_bar_outlined,
                                              color: Color(0xff0095D0),
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Text(
                                              'Loyalty Programs',
                                              style: TextStyle(fontSize: 15.dp),
                                            ),
                                            const Spacer(),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: const Color(0xffA2A2A2),
                                              size: 17.dp,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      const Divider(
                                        color: Color(0xffF5F4F4),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          AppCubit.get(context).logout(context);
                                        },
                                        child: Row(
                                          children: [
                                            const Icon(
                                              Icons.logout,
                                              color: Color(0xff0095D0),
                                            ),
                                            SizedBox(
                                              width: 3.w,
                                            ),
                                            Text(
                                              'Logout',
                                              style: TextStyle(fontSize: 15.dp),
                                            ),
                                            const Spacer(),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: const Color(0xffA2A2A2),
                                              size: 17.dp,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
        );
      },
    );
  }
}
