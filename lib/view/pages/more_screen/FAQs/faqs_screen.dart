import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class FaqsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 60.w,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            children: [
              Icon(Icons.arrow_back_ios_new_rounded,
                  color: const Color(0xff646363), size: 25.dp),
              SizedBox(
                width: 2.w,
              ),
              Text(
                'More',
                style: TextStyle(fontSize: 18.dp),
              ),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            containerBelowAppBar(text: 'FAQs'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 4.h),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.dp),
                        border: Border.all(color: const Color(0xffECECEC))
                    ),
                    child: ExpansionTile(
                      iconColor: const Color(0xff0095D0),
                      title: Text(
                        'Is there a free trial available?',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 15.dp),),
                      children: <Widget> [
                        ListTile(
                          title: Text('Yes, you can try us for free for 30 days.'
                              ' If you want, we’ll provide you with a free,'
                              ' personalized 30-minute onboarding call to get '
                              'you up and running as soon as possible.',
                            style: TextStyle(color: const Color(0xff646363),
                                fontSize: 15.dp),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(color: Color(0xffC4C4C4),),

                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.dp),
                        border: Border.all(color: const Color(0xffECECEC))
                    ),
                    child: ExpansionTile(
                      iconColor: const Color(0xff0095D0),
                      title: Text(
                        'Can I change my plan later?',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 15.dp),),
                      children: <Widget> [
                        ListTile(
                          title: Text('Yes, you can try us for free for 30 days.'
                              ' If you want, we’ll provide you with a free,'
                              ' personalized 30-minute onboarding call to get '
                              'you up and running as soon as possible.',
                            style: TextStyle(color: const Color(0xff646363),
                                fontSize: 15.dp),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(color: Color(0xffC4C4C4),),

                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.dp),
                        border: Border.all(color: const Color(0xffECECEC))
                    ),
                    child: ExpansionTile(
                      iconColor: const Color(0xff0095D0),
                      title: Text(
                        'What is your cancellation policy?',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 15.dp),),
                      children: <Widget> [
                        ListTile(
                          title: Text('Yes, you can try us for free for 30 days.'
                              ' If you want, we’ll provide you with a free,'
                              ' personalized 30-minute onboarding call to get '
                              'you up and running as soon as possible.',
                            style: TextStyle(color: const Color(0xff646363),
                                fontSize: 15.dp),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(color: Color(0xffC4C4C4),),

                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.dp),
                        border: Border.all(color: const Color(0xffECECEC))
                    ),
                    child: ExpansionTile(
                      iconColor: const Color(0xff0095D0),
                      title: Text(
                        'Can other info be added to an invoice?',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 15.dp),),
                      children: <Widget> [
                        ListTile(
                          title: Text('Yes, you can try us for free for 30 days.'
                              ' If you want, we’ll provide you with a free,'
                              ' personalized 30-minute onboarding call to get '
                              'you up and running as soon as possible.',
                            style: TextStyle(color: const Color(0xff646363),
                                fontSize: 15.dp),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(color: Color(0xffC4C4C4),),

                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.dp),
                        border: Border.all(color: const Color(0xffECECEC))
                    ),
                    child: ExpansionTile(
                      iconColor: const Color(0xff0095D0),
                      title: Text(
                        'How does billing work?',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 15.dp),),
                      children: <Widget> [
                        ListTile(
                          title: Text('Yes, you can try us for free for 30 days.'
                              ' If you want, we’ll provide you with a free,'
                              ' personalized 30-minute onboarding call to get '
                              'you up and running as soon as possible.',
                            style: TextStyle(color: const Color(0xff646363),
                                fontSize: 15.dp),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(color: Color(0xffC4C4C4),),

                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13.dp),
                        border: Border.all(color: const Color(0xffECECEC))
                    ),
                    child: ExpansionTile(
                      iconColor: const Color(0xff0095D0),
                      title: Text(
                        'How do I change my account email?',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 15.dp),),
                      children: <Widget> [
                        ListTile(
                          title: Text('Yes, you can try us for free for 30 days.'
                              ' If you want, we’ll provide you with a free,'
                              ' personalized 30-minute onboarding call to get '
                              'you up and running as soon as possible.',
                            style: TextStyle(color: const Color(0xff646363),
                                fontSize: 15.dp),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(color: Color(0xffC4C4C4),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
