import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/model/trading_accounts/trading_accounts_model.dart';
import 'package:fx_commission_app/view/pages/profile_screen/trading_accounts/add_account_screen.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class TradingAccountsScreen extends StatefulWidget {
  const TradingAccountsScreen({super.key});

  @override
  State<TradingAccountsScreen> createState() => _TradingAccountsScreenState();
}

class _TradingAccountsScreenState extends State<TradingAccountsScreen> {
  @override
  void initState() {
    super.initState();
    AppCubit.get(context).postTradingAccounts(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: mainElevatedButton(
              width: 70.w,
              height: 5.h,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AddAccountScreen()));
              },
              text: 'Add account'),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          appBar: reusableAppBar(context: context, text: 'My Profile'),
          body: state is TradingAccountsLoadingState
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xff0095D0),
                  ),
                )
              : Column(
                  children: [
                    containerBelowAppBar(text: 'Trading Accounts'),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 3.0.w),
                        child: tradingAccountsModel.accounts == null ||
                                tradingAccountsModel.accounts!.isEmpty
                            ? Center(
                                child: Text(
                                  'You don\'t have any accounts yet',
                                  style: TextStyle(
                                      color: Color(0xff0095D0),
                                      fontSize: 18.dp),
                                ),
                              )
                            : Expanded(
                                child: ListView.separated(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) =>
                                      containerAllAddedAccounts(
                                          account: tradingAccountsModel
                                              .accounts![index]),
                                  separatorBuilder: (context, index) =>
                                      const Divider(
                                    color: Color(0xffC4C4C4),
                                  ),
                                  itemCount:
                                      tradingAccountsModel.accounts!.length,
                                ),
                              ),
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                  ],
                ),
        );
      },
    );
  }

  Widget containerAllAddedAccounts({required Accounts account}) => Padding(
        padding: EdgeInsets.symmetric(vertical: 2.h),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(8.dp),
                    child: Image.network(
                      fit: BoxFit.fill,
                      width: 14.w,
                      height: 7.2.h,
                      '${account.image}',
                      errorBuilder: (context, error, stackTrace) =>
                          const Center(
                              child: Text(
                        'no image returned',
                        style: TextStyle(color: Colors.red),
                      )),
                    )),
                SizedBox(
                  width: 3.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Broker : ',
                          style: TextStyle(fontSize: 14.dp),
                        ),
                        Text(
                          '${account.broker}',
                          style: TextStyle(
                              fontSize: 14.dp, color: Color(0xff808080)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Account Number : ',
                          style: TextStyle(fontSize: 14.dp),
                        ),
                        Text(
                          '${account.accountNumber}',
                          style: TextStyle(
                              fontSize: 14.dp, color: Color(0xff808080)),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Account Status : ',
                          style: TextStyle(fontSize: 14.dp),
                        ),
                        Text(
                          '${account.accountStatus}',
                          style: TextStyle(
                            fontSize: 14.dp,
                            color: account.accountStatus == 'In review'
                                ? Colors.orange
                                : account.accountStatus == 'Accepted'
                                    ? Colors.green
                                    : account.accountStatus == 'Rejected'
                                        ? Colors.red
                                        : Colors.black,
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      );
}
