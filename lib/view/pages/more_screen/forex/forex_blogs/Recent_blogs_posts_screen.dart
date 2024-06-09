import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/pages/more_screen/forex/forex_blogs/Recent_blogs_posts_read_article_screen.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class RecentBlogsPostsScreen extends StatelessWidget {
  String analysisImage = 'assets/images/laptop_mobile_image.png';
  String issuer = 'Natali Craig';
  String issueDate = '14 Jan 2022';
  String analysisTitle = 'USA lifts sanctions against Xiaomi';
  String analysisContent = 'The US Department of Defense and Xiaomi have'
      ' reached an agreement to lift the ban on investing'
      ' in this Chinese company.in this Chinese company.in this Chinese company.';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'FOREX'),

      body: SingleChildScrollView(
        child: Column(
          children: [
            containerBelowAppBar(text: 'Recent blogs posts'),

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
                      height: 54.h,
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
                                  analysisImage),
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
                                        '$issuer • $issueDate',
                                        style: TextStyle(
                                            color: const Color(0xff808080),
                                            fontSize: 14.dp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 0.5.h,
                                      ),
                                      Text(
                                        analysisTitle,
                                        style: TextStyle(
                                            fontSize: 17.dp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 0.5.h,
                                      ),
                                      Text(
                                        analysisContent,
                                        maxLines: 4,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 17.dp,
                                        ),
                                      ),
                                      TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        RecentBlogsPostsReadArticleScreen()));
                                          },
                                          child: Row(
                                            children: [
                                              Text(
                                                'Read Article',
                                                style: TextStyle(
                                                    color: const Color(0xff0095D0),
                                                    fontSize: 17.dp),
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
