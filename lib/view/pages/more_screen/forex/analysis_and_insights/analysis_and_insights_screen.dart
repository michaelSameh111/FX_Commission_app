import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/model/analysis_and_insights/analysis_and_insights_model.dart';
import 'package:fx_commission_app/view/pages/more_screen/forex/analysis_and_insights/analysis_and_insights_read_article_screen.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class AnalysisAndInsightsScreen extends StatefulWidget {
  @override
  State<AnalysisAndInsightsScreen> createState() =>
      _AnalysisAndInsightsScreenState();
}

class _AnalysisAndInsightsScreenState extends State<AnalysisAndInsightsScreen> {
  @override
  void initState() {
    super.initState();
    AppCubit.get(context).getAnalysisAndInsights();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: reusableAppBar(context: context, text: 'FOREX'),
          body: state is AnalysisAndInsightsLoadingState
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xff0095D0),
                  ),
                )
              : Column(
                  children: [
                    containerBelowAppBar(text: 'Analysis and Insights'),
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
                                    physics: const NeverScrollableScrollPhysics(),
                                    separatorBuilder: (context, index) => SizedBox(
                                      height: 2.h,
                                    ),
                                    itemBuilder: (context, index) => analysisAndInsightsContainer(
                                      insights: analysisAndInsightsModel.insights![index]
                                    ),
                                    itemCount: analysisAndInsightsModel.insights!.length,
                                    shrinkWrap: true,
                                  ),
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
  Widget analysisAndInsightsContainer ({
    required Insights insights
}){
    return Container(
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
              child: Image.network(
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 15.h,
                  '${insights.image}'),
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
                        '${insights.title}',
                        style: TextStyle(
                            fontSize: 18.dp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        children: [
                          ClipOval(
                            child: CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 6.w,
                              child: Image.network('${insights.userImage}'),),
                          ),
                          SizedBox(width:
                          2.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${insights.createdBy}',
                                style: TextStyle(
                                  fontSize: 16.dp,
                                ),
                              ),
                              Text(
                                '${insights.createdAt}',
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
                                        InsightsReadArticleScreen(insights: insights,)));
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
    );
  }
}
