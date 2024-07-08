import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/pages/more_screen/forex/analysis_and_insights/analysis_and_insights_screen.dart';
import 'package:fx_commission_app/view/pages/more_screen/forex/forex_blogs/Recent_blogs_posts_screen.dart';
import 'package:fx_commission_app/view/pages/more_screen/forex/forex_course/forex_course_screen.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class ForexScreen extends StatelessWidget {
  const ForexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'More'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            containerBelowAppBar(text: 'FOREX'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 4.h),
              child: Container(
                width: double.infinity,
                height: 20.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.dp),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                  child: Column(
                    children: [
                      // InkWell(
                      //   onTap: () {
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) =>
                      //                 AnalysisScreen()));
                      //   },
                      //   child: Row(
                      //     children: [
                      //       const Icon(
                      //         Icons.analytics,
                      //         color: Color(0xff0095D0),
                      //       ),
                      //       SizedBox(
                      //         width: 3.w,
                      //       ),
                      //       Text(
                      //         'Analysis',
                      //         style: TextStyle(fontSize: 15.dp),
                      //       ),
                      //       const Spacer(),
                      //       Icon(
                      //         Icons.arrow_forward_ios,
                      //         color: const Color(0xffA2A2A2),
                      //         size: 17.dp,
                      //       )
                      //     ],
                      //   ),
                      // ),
                      // SizedBox(height: 1.h,),
                      // const Divider(
                      //   color: Color(0xffF5F4F4),
                      // ),
                      // SizedBox(height: 1.h,),

                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AnalysisAndInsightsScreen()));
                        },
                        child: Row(
                          children: [
                            const Icon(
                              Icons.auto_graph,
                              color: Color(0xff0095D0),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              'Analysis and Insights',
                              style: TextStyle(fontSize: 15.dp),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: const Color(0xffA2A2A2),
                              size: 17.dp,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      const Divider(
                        color: Color(0xffF5F4F4),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),

                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      RecentBlogsPostsScreen()));
                        },
                        child: Row(
                          children: [
                            const Icon(
                              Icons.wine_bar_outlined,
                              color: Color(0xff0095D0),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              'Forex Blogs',
                              style: TextStyle(fontSize: 15.dp),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: const Color(0xffA2A2A2),
                              size: 17.dp,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      const Divider(
                        color: Color(0xffF5F4F4),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),

                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForexCourseScreen()));
                        },
                        child: Row(
                          children: [
                            const Icon(
                              Icons.workspace_premium,
                              color: Color(0xff0095D0),
                            ),
                            SizedBox(
                              width: 3.w,
                            ),
                            Text(
                              'Forex Course',
                              style: TextStyle(fontSize: 15.dp),
                            ),
                            const Spacer(),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: const Color(0xffA2A2A2),
                              size: 17.dp,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
