import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class AddRequestScreen extends StatefulWidget {

  @override
  State<AddRequestScreen> createState() => _AddRequestScreenState();
}

class _AddRequestScreenState extends State<AddRequestScreen> {
  final List<String> withdrawalMethod = [
    'Cash',
    'Visa',
    'Wallet'
  ];

  String? selectedValue;
  final selectedWithdrawalMethod = TextEditingController();
  String withdrawalMethodSelected = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'Withdrawals'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            containerBelowAppBar(text: 'Add a request'),
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

                    Text(
                      'Withdrawal Method',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15.dp),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffECECEC), // Set the background color
                          borderRadius: BorderRadius.circular(6.dp), // Set the border radius
                          border: Border.all(
                            color: const Color(0xffC4C4C4), // Set the border color
                            width: 1.5, // Set the border width
                          ),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2<String>(
                              isExpanded: true,
                              hint: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Choose withdrawal method',
                                      style: TextStyle(
                                          color: const Color(0xff808080),
                                          fontSize: 15.dp
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )
                                ],
                              ),
                              items: withdrawalMethod
                                  .map(
                                      (String item) => DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ))
                                  .toList(),
                              value: selectedValue,
                              onChanged: (String? value) {
                                setState(() {
                                  selectedValue = value;
                                });
                              }),
                        )),

                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      'The Amount',
                      style: TextStyle(
                          fontSize: 15.dp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    defaultTextFormField(
                        hintText: 'The Amount',
                        keyboardType: TextInputType.emailAddress),


                    SizedBox(
                      height: 3.h,
                    ),
                    Center(
                      child: mainElevatedButton(
                        width: 70.w,
                        height: 5.h,
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             AddNewPaymentMethodScreen()));
                        },
                        text: 'Add a request',
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
  }
}
