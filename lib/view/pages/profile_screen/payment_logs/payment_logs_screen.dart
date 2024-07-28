import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/model/payments_logs/payments_logs_model.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class PaymentHistoryScreen extends StatefulWidget {
  @override
  State<PaymentHistoryScreen> createState() => _PaymentHistoryScreenState();
}

class _PaymentHistoryScreenState extends State<PaymentHistoryScreen> {

  // @override
  // void initState() {
  //   super.initState();
  //   AppCubit.get(context).getPaymentsLogs();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: reusableAppBar(context: context, text: 'My Profile'),
          body: SingleChildScrollView(
            child: Column(
              children: [
                containerBelowAppBar(text: 'Payments log'),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 3.h),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(12.dp),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xff0095D0),
                      ),
                      borderRadius: BorderRadius.circular(7.dp),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Total Payments : ',
                              style: TextStyle(
                                  fontSize: 15.dp, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '${loginDataModel.userBalance}',
                              style: TextStyle(
                                  fontSize: 15.dp, fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text(
                          'Sort by date',
                          style: TextStyle(
                              fontSize: 15.dp, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        const Row(
                          children: [
                            startDateTextFormField(),
                            Spacer(),
                            endDateTextFormField()
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Center(
                          child: mainElevatedButton(
                            loading: state is PaymentsLogsLoadingState,
                            onPressed: () {
                              AppCubit.get(context).getPaymentsLogs();
                            },
                            width: 35.w,
                            height: 5.h,
                            text: 'Find',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Table(
                  columnWidths: {
                    0: FlexColumnWidth(1),
                    1: FlexColumnWidth(4),
                  },
                  children: [
                    TableRow(
                      children: [
                        ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => PaymentLogContainer(
                            paymentHistory: paymentsLogsModel.paymentHistory![index],
                          ),
                          itemCount: paymentsLogsModel.paymentHistory!.length,
                          shrinkWrap: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  Widget PaymentLogContainer ({
    required PaymentHistory paymentHistory
}){
    return Padding(
      padding: EdgeInsets.only(left: 3.0.w, right: 3.0.w, bottom: 2.h),
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(12.dp),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color(0xff0095D0),
          ),
          borderRadius: BorderRadius.circular(7.dp),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          'Amount',
                          style: TextStyle(
                              fontSize: 15.dp,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff0095D0)),
                        ),
                        SizedBox(width: 25.w,),
                      ],
                    ),
                  ),
                  Container(
                    width: 0.3.w,
                    height: 5.h,
                    color: const Color(0xffC4C4C4),
                  ),
                  SizedBox(width: 5.w,),
                  Expanded(
                    child: Text(
                      '${paymentHistory.amount}',
                      style: TextStyle(
                          fontSize: 15.dp, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 0.3.w,
            ),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          'Start',
                          style: TextStyle(
                              fontSize: 15.dp,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff0095D0)),
                        ),
                        SizedBox(width: 30.w,),
                      ],
                    ),
                  ),
                  Container(
                    width: 0.3.w,
                    height: 5.h,
                    color: const Color(0xffC4C4C4),
                  ),
                  SizedBox(width: 5.w,),
                  Expanded(
                    child: Text(
                      '${paymentHistory.start}',
                      style: TextStyle(
                          fontSize: 15.dp, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 0.3.w,
            ),


            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Row(
                children: [
                  Text(
                    'Final',
                    style: TextStyle(
                        fontSize: 15.dp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff0095D0)),
                  ),
                  SizedBox(width: 30.2.w,),
                  Container(
                    width: 0.3.w,
                    height: 5.h,
                    color: const Color(0xffC4C4C4),
                  ),
                  SizedBox(width: 5.w,),
                  Expanded(
                    child: Text(
                      '${paymentHistory.finals}',
                      style: TextStyle(
                          fontSize: 15.dp, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 0.3.w,
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Row(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Text(
                          'Payment\nDate',
                          style: TextStyle(
                              fontSize: 15.dp,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xff0095D0)),
                        ),
                        SizedBox(width: 23.2.w,),
                      ],
                    ),
                  ),
                  Container(
                    width: 0.3.w,
                    height: 5.h,
                    color: const Color(0xffC4C4C4),
                  ),
                  SizedBox(width: 5.w,),
                  Expanded(
                    child: Text(
                      '${formatDate('${paymentHistory.createdAt}')}',
                      style: TextStyle(
                          fontSize: 15.dp, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
