import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/pages/profile_screen/edit_profile_screen.dart';
import 'package:fx_commission_app/view/pages/profile_screen/inactive_fees/inactive_fees_screen.dart';
import 'package:fx_commission_app/view/pages/profile_screen/loyalty_program/loyalty_program_screen.dart';
import 'package:fx_commission_app/view/pages/profile_screen/payment_history/payment_history_screen.dart';
import 'package:fx_commission_app/view/pages/profile_screen/referral/referral_screen.dart';
import 'package:fx_commission_app/view/pages/profile_screen/registered_from_my_referral/registered_from_my_referral_screen.dart';
import 'package:fx_commission_app/view/pages/profile_screen/trading_accounts/trading_accounts_screen.dart';
import 'package:fx_commission_app/view/pages/withdrawals/withdrawals_screen.dart';

class MainProfileScreen extends StatefulWidget {
  const MainProfileScreen({super.key});

  @override
  State<MainProfileScreen> createState() => _MainProfileScreenState();
}

class _MainProfileScreenState extends State<MainProfileScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xff0379A8),
        unselectedItemColor: const Color(0xffA2A2A2),
        currentIndex: currentIndex,
        onTap: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            label: 'Market',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_off), label: 'Brokers'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_headline_sharp),
            label: 'More',
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(12.dp),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.dp),
                    color: Colors.white),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 8.w,
                      child: const ClipOval(
                        child: Image(
                          image: AssetImage(
                            'assets/images/profile_picture.png',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Ahmed Mohamed',
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
                                        const EditProfileScreen()));
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
                                          const EditProfileScreen()));
                                },
                                child: Text(
                                  'Edit my profile',
                                  style: TextStyle(
                                      color: Color(0xff646363), fontSize: 16.dp),
                                ))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                children: [
                  Container(
                    width: 1.2.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.dp),
                        color: const Color(0xff0095D0)),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Client Area',
                        style: TextStyle(
                            fontSize: 22.dp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Welcome, your current balance is 0.00 \$',
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
                height: 54.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.dp),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
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
                      SizedBox(height: 1.h,),
                      const Divider(
                        color: Color(0xffF5F4F4),
                      ),
                      SizedBox(height: 1.h,),

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
                      SizedBox(height: 1.h,),
                      const Divider(
                        color: Color(0xffF5F4F4),
                      ),
                      SizedBox(height: 1.h,),

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
                      SizedBox(height: 1.h,),
                      const Divider(
                        color: Color(0xffF5F4F4),
                      ),
                      SizedBox(height: 1.h,),

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
                      SizedBox(height: 1.h,),
                      const Divider(
                        color: Color(0xffF5F4F4),
                      ),
                      SizedBox(height: 1.h,),

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
                      SizedBox(height: 1.h,),
                      const Divider(
                        color: Color(0xffF5F4F4),
                      ),
                      SizedBox(height: 1.h,),

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
                      SizedBox(height: 1.h,),
                      const Divider(
                        color: Color(0xffF5F4F4),
                      ),
                      SizedBox(height: 1.h,),

                      InkWell(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //         const LoginScreen()));
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
                      SizedBox(height: 1.h,),
                      const Divider(
                        color: Color(0xffF5F4F4),
                      ),
                      SizedBox(height: 1.h,),

                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const LoyaltyProgramScreen()));
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
                      SizedBox(height: 1.h,),
                      const Divider(
                        color: Color(0xffF5F4F4),
                      ),
                      SizedBox(height: 1.h,),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
