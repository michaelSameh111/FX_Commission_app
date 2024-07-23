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
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.0.w),
                      child: Expanded(
                        child: tradingAccountsModel.accounts == null ||
                                tradingAccountsModel.accounts!.isEmpty
                            ? Center(
                                child: Text('You don\'t have any accounts yet'),
                              )
                            : ListView.separated(
                                shrinkWrap: false,
                                itemBuilder: (context, index) =>
                                    containerAddedAccounts(
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
                    SizedBox(
                      height: 1.h,
                    ),
                  ],
                ),
        );
      },
    );
  }

  Widget containerAddedAccounts({required Accounts account}) {
    return Column(
      children: [
        SizedBox(
          height: 1.h,
        ),
        addedAccountTradingAccountScreen(
          image: '${account.image}',
          brokerName: '${account.broker}',
          accountNumber: '${account.accountNumber}',
          accountStatus: '${account.accountStatus}',
        ),
        SizedBox(
          height: 1.h,
        ),
      ],
    );
  }
}
