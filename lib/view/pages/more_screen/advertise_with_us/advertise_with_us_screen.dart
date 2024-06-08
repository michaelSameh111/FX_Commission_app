import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class AdvertiseWithUsScreen extends StatelessWidget {

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
            containerBelowAppBar(text: 'Advertise with us'),
            
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 4.h),
              
              child: Column(
                children: [
                  Text('''Our beloved Customers & Visitors,
We would like to announce that, Fxcommission provides advertising campaigns services
 to its followers specifically for companies,which are working in 
Forex industry.
We have many channels to make a succeed advertising campaigns for your company.
To communicate with us please do not be hesitated to send an email to
 contact@fxcommission.com.
A representative of the Advertising and Marketing Department will contact you 
immediately within minutes to explain the full details to you. We prefer contacting 
in English or Arabic.

We wish you all the best.
With regards

FXCommission Management Board.''',
                  style: TextStyle(
                    fontSize: 17.dp
                  ),)
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
