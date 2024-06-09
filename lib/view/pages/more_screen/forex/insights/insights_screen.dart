import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/pages/more_screen/forex/insights/insights_read_article_screen.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class InsightsScreen extends StatelessWidget {
  String insightsImage = 'assets/images/laptop_mobile_image.png';
  String issuer = 'Amina Rafaat Rashad  ';
  String issueDate = '14 Jan 2022';
  String insightTitle = 'USA lifts sanctions against Xiaomi';
  String issuerImage = '';
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'FOREX'),

      body: SingleChildScrollView(
        child: Column(
          children: [
            containerBelowAppBar(text: 'Insights'),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 4.h),
              child: Column(
                children: [
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    separatorBuilder: (context, index) => SizedBox(
                      height: 2.h,
                    ),
                    itemBuilder: (context, index) => Container(
                      height: 40.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.dp),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.dp),
                                  topRight: Radius.circular(10.dp)),
                              child: Image.asset(
                                  fit: BoxFit.fill,
                                  width: double.infinity,
                                  height: 15.h,
                                  insightsImage),
                            ),
                          ),
                          Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10.dp),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 3.0.w, vertical: 2.h),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        insightTitle,
                                        style: TextStyle(
                                            fontSize: 18.dp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Row(
                                        children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.blue,
                                        radius: 6.w,
                                        child: Image.network(issuerImage),),
                                          SizedBox(width:
                                          2.w),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '$issuer',
                                                style: TextStyle(
                                                    fontSize: 16.dp,
                                                    ),
                                              ),
                                              Text(
                                                issueDate,
                                                style: TextStyle(
                                                  color: const Color(0xff808080),
                                                  fontSize: 16.dp,
                                                ),
                                              ),


                                            ],
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        height: 1.2.h,
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        InsightsReadArticleScreen()));
                                          },
                                          child: Row(
                                            children: [
                                              Text(
                                                'Read Article',
                                                style: TextStyle(
                                                    color: const Color(0xff0095D0),
                                                    fontSize: 18.dp),
                                              ),
                                              SizedBox(
                                                width: 2.w,
                                              ),
                                              Icon(
                                                Icons.arrow_forward_ios,
                                                size: 15.dp,
                                                color: const Color(0xff0095D0),
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    itemCount: 3,
                    shrinkWrap: true,
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
