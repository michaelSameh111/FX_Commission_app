import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

import '../../../../model/FAQs/faqs_model.dart';

class FaqsScreen extends StatefulWidget {
  @override
  State<FaqsScreen> createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {
  @override
  void initState() {
    super.initState();
    AppCubit.get(context).getFaqs();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: reusableAppBar(context: context, text: 'More'),
          body: state is FaqsLoadingState
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xff0095D0),
                  ),
                )
              : Column(
                  children: [
                    containerBelowAppBar(text: 'FAQs'),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 3.0.w, vertical: 4.h),
                              child: Column(
                                children: [
                                  ListView.separated(
                                    physics:
                                    const NeverScrollableScrollPhysics(),
                                    separatorBuilder: (context, index) =>
                                        const Divider(
                                          color: Color(0xffC4C4C4),
                                        ),
                                    itemBuilder: (context, index) => faqsContainer(faqs: faqsModel.faqs![index]),
                                    itemCount: faqsModel.faqs!.length,
                                    shrinkWrap: true,
                                  ),

                                  // Container(
                                  //   decoration: BoxDecoration(
                                  //       borderRadius:
                                  //           BorderRadius.circular(13.dp),
                                  //       border: Border.all(
                                  //           color: const Color(0xffECECEC))),
                                  //   child: ExpansionTile(
                                  //     iconColor: const Color(0xff0095D0),
                                  //     title: Text(
                                  //       'Is there a free trial available?',
                                  //       style: TextStyle(
                                  //           fontWeight: FontWeight.bold,
                                  //           fontSize: 15.dp),
                                  //     ),
                                  //     children: <Widget>[
                                  //       ListTile(
                                  //         title: Text(
                                  //           'Yes, you can try us for free for 30 days.'
                                  //           ' If you want, we’ll provide you with a free,'
                                  //           ' personalized 30-minute onboarding call to get '
                                  //           'you up and running as soon as possible.',
                                  //           style: TextStyle(
                                  //               color: const Color(0xff646363),
                                  //               fontSize: 15.dp),
                                  //         ),
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
                                  // const Divider(
                                  //   color: Color(0xffC4C4C4),
                                  // ),
                                  //
                                  // Container(
                                  //   decoration: BoxDecoration(
                                  //       borderRadius:
                                  //           BorderRadius.circular(13.dp),
                                  //       border: Border.all(
                                  //           color: const Color(0xffECECEC))),
                                  //   child: ExpansionTile(
                                  //     iconColor: const Color(0xff0095D0),
                                  //     title: Text(
                                  //       'Can I change my plan later?',
                                  //       style: TextStyle(
                                  //           fontWeight: FontWeight.bold,
                                  //           fontSize: 15.dp),
                                  //     ),
                                  //     children: <Widget>[
                                  //       ListTile(
                                  //         title: Text(
                                  //           'Yes, you can try us for free for 30 days.'
                                  //           ' If you want, we’ll provide you with a free,'
                                  //           ' personalized 30-minute onboarding call to get '
                                  //           'you up and running as soon as possible.',
                                  //           style: TextStyle(
                                  //               color: const Color(0xff646363),
                                  //               fontSize: 15.dp),
                                  //         ),
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
                                  // const Divider(
                                  //   color: Color(0xffC4C4C4),
                                  // ),
                                  //
                                  // Container(
                                  //   decoration: BoxDecoration(
                                  //       borderRadius:
                                  //           BorderRadius.circular(13.dp),
                                  //       border: Border.all(
                                  //           color: const Color(0xffECECEC))),
                                  //   child: ExpansionTile(
                                  //     iconColor: const Color(0xff0095D0),
                                  //     title: Text(
                                  //       'What is your cancellation policy?',
                                  //       style: TextStyle(
                                  //           fontWeight: FontWeight.bold,
                                  //           fontSize: 15.dp),
                                  //     ),
                                  //     children: <Widget>[
                                  //       ListTile(
                                  //         title: Text(
                                  //           'Yes, you can try us for free for 30 days.'
                                  //           ' If you want, we’ll provide you with a free,'
                                  //           ' personalized 30-minute onboarding call to get '
                                  //           'you up and running as soon as possible.',
                                  //           style: TextStyle(
                                  //               color: const Color(0xff646363),
                                  //               fontSize: 15.dp),
                                  //         ),
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
                                  // const Divider(
                                  //   color: Color(0xffC4C4C4),
                                  // ),
                                  //
                                  // Container(
                                  //   decoration: BoxDecoration(
                                  //       borderRadius:
                                  //           BorderRadius.circular(13.dp),
                                  //       border: Border.all(
                                  //           color: const Color(0xffECECEC))),
                                  //   child: ExpansionTile(
                                  //     iconColor: const Color(0xff0095D0),
                                  //     title: Text(
                                  //       'Can other info be added to an invoice?',
                                  //       style: TextStyle(
                                  //           fontWeight: FontWeight.bold,
                                  //           fontSize: 15.dp),
                                  //     ),
                                  //     children: <Widget>[
                                  //       ListTile(
                                  //         title: Text(
                                  //           'Yes, you can try us for free for 30 days.'
                                  //           ' If you want, we’ll provide you with a free,'
                                  //           ' personalized 30-minute onboarding call to get '
                                  //           'you up and running as soon as possible.',
                                  //           style: TextStyle(
                                  //               color: const Color(0xff646363),
                                  //               fontSize: 15.dp),
                                  //         ),
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
                                  // const Divider(
                                  //   color: Color(0xffC4C4C4),
                                  // ),
                                  //
                                  // Container(
                                  //   decoration: BoxDecoration(
                                  //       borderRadius:
                                  //           BorderRadius.circular(13.dp),
                                  //       border: Border.all(
                                  //           color: const Color(0xffECECEC))),
                                  //   child: ExpansionTile(
                                  //     iconColor: const Color(0xff0095D0),
                                  //     title: Text(
                                  //       'How does billing work?',
                                  //       style: TextStyle(
                                  //           fontWeight: FontWeight.bold,
                                  //           fontSize: 15.dp),
                                  //     ),
                                  //     children: <Widget>[
                                  //       ListTile(
                                  //         title: Text(
                                  //           'Yes, you can try us for free for 30 days.'
                                  //           ' If you want, we’ll provide you with a free,'
                                  //           ' personalized 30-minute onboarding call to get '
                                  //           'you up and running as soon as possible.',
                                  //           style: TextStyle(
                                  //               color: const Color(0xff646363),
                                  //               fontSize: 15.dp),
                                  //         ),
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
                                  // const Divider(
                                  //   color: Color(0xffC4C4C4),
                                  // ),
                                  //
                                  // Container(
                                  //   decoration: BoxDecoration(
                                  //       borderRadius:
                                  //           BorderRadius.circular(13.dp),
                                  //       border: Border.all(
                                  //           color: const Color(0xffECECEC))),
                                  //   child: ExpansionTile(
                                  //     iconColor: const Color(0xff0095D0),
                                  //     title: Text(
                                  //       'How do I change my account email?',
                                  //       style: TextStyle(
                                  //           fontWeight: FontWeight.bold,
                                  //           fontSize: 15.dp),
                                  //     ),
                                  //     children: <Widget>[
                                  //       ListTile(
                                  //         title: Text(
                                  //           'Yes, you can try us for free for 30 days.'
                                  //           ' If you want, we’ll provide you with a free,'
                                  //           ' personalized 30-minute onboarding call to get '
                                  //           'you up and running as soon as possible.',
                                  //           style: TextStyle(
                                  //               color: const Color(0xff646363),
                                  //               fontSize: 15.dp),
                                  //         ),
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
                                  // const Divider(
                                  //   color: Color(0xffC4C4C4),
                                  // ),
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
  Widget faqsContainer ({
    required Faqs faqs,
}){
    return Container(
      decoration: BoxDecoration(
          borderRadius:
          BorderRadius.circular(13.dp),
          border: Border.all(
              color: const Color(0xffECECEC))),
      child: ExpansionTile(
        iconColor: const Color(0xff0095D0),
        title: Text(
          '${faqs.question}',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15.dp),
        ),
        children: <Widget>[
          ListTile(
            title: Text(
              '${faqs.answer}',
              style: TextStyle(
                  color: const Color(0xff646363),
                  fontSize: 15.dp),
            ),
          ),
        ],
      ),
    );
  }
}
