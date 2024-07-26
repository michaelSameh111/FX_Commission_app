import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/model/companies/companies_model.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class AddAccountScreen extends StatefulWidget {
  const AddAccountScreen({super.key});

  @override
  State<AddAccountScreen> createState() => _AddAccountScreenState();
}

class _AddAccountScreenState extends State<AddAccountScreen> {
  final List<String> brokers = [
    'Company A',
    'Company B',
    'Company C'
  ];

  int brokerDropDown = 0;
  void onBrokerChanged(int? value) {
    setState(() {
      brokerDropDown = value!;
    });
  }

  String? selectedValue;
  final selectedWithdrawalMethod = TextEditingController();
  String withdrawalMethodSelected = '';
  TextEditingController accountNumberController = TextEditingController();
  TextEditingController brokerController = TextEditingController();
  Companies company = Companies();

  @override
  void initState() {
    super.initState();
    brokerController.text = selectedValue ?? 'Choose broker'; // Set initial value
  }

  @override
  void dispose() {
    brokerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'My Profile'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            containerBelowAppBar(text: 'Add Account'),
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
                      'Account Number*',
                      style:
                      TextStyle(fontSize: 15.dp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    defaultTextFormField(
                      textFormFieldController: accountNumberController,
                        hintText: 'Add your account number',
                        keyboardType: TextInputType.number),
                    SizedBox(
                      height: 2.h,
                    ),

                    Text(
                      'Broker*',
                      style:
                      TextStyle(fontSize: 15.dp, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    BrokerDropDown(
                        brokerDropDown: brokerDropDown,
                        onBrokerChanged: onBrokerChanged
                    ),
                    // Container(
                    //     decoration: BoxDecoration(
                    //       color: const Color(0xffECECEC), // Set the background color
                    //       borderRadius: BorderRadius.circular(6.dp), // Set the border radius
                    //       border: Border.all(
                    //         color: const Color(0xffC4C4C4), // Set the border color
                    //         width: 1.5, // Set the border width
                    //       ),
                    //     ),
                    //     child: DropdownButtonHideUnderline(
                    //       child: DropdownButton2<String>(
                    //           isExpanded: true,
                    //           hint: Row(
                    //             children: [
                    //               Expanded(
                    //                 child: Text(
                    //                   'Choose broker',
                    //                   style: TextStyle(
                    //                       color: const Color(0xff808080),
                    //                       fontSize: 15.dp
                    //                   ),
                    //                   overflow: TextOverflow.ellipsis,
                    //                 ),
                    //               )
                    //             ],
                    //           ),
                    //           items: brokers
                    //               .map(
                    //                   (String item) => DropdownMenuItem<String>(
                    //                 value: item,
                    //                 child: Text(
                    //                   item,
                    //                   style: const TextStyle(
                    //                     fontSize: 18,
                    //                     color: Colors.black,
                    //                   ),
                    //                   overflow: TextOverflow.ellipsis,
                    //                 ),
                    //               ))
                    //               .toList(),
                    //           value: selectedValue,
                    //           onChanged: (String? value) {
                    //             setState(() {
                    //               selectedValue = value;
                    //               brokerController.text = value ?? 'Choose brokerrr';
                    //             });
                    //           }),
                    //     )),

                    SizedBox(
                      height: 3.h,
                    ),

                  Center(
                    child: mainElevatedButton(
                      onPressed: (){
                        AppCubit.get(context).postAddTradingAccount(
                            companyId: 4,
                            //company.id
                            accountNumber: 1,
                           // accountNumberController.text
                            context: context);
                      },
                      width: 35.w,
                      height: 5.h,
                      text: 'Save'
                    ),
                  )
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
