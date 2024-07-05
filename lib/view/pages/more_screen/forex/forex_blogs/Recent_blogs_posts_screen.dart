import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/view/pages/more_screen/forex/forex_blogs/Recent_blogs_posts_read_article_screen.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class RecentBlogsPostsScreen extends StatefulWidget {
  @override
  State<RecentBlogsPostsScreen> createState() => _RecentBlogsPostsScreenState();
}

class _RecentBlogsPostsScreenState extends State<RecentBlogsPostsScreen> {
  //String analysisImage = 'assets/images/laptop_mobile_image.png';
  String analysisImage = '${forexNewsModel.forexNews?[0].image}';

  String issuer = '${forexNewsModel.forexNews?[0].createdBy}';

  String issueDate = '${forexNewsModel.forexNews?[0].createdAt}';

  String analysisTitle = '${forexNewsModel.forexNews?[0].title}';

  String analysisContent = '${forexNewsModel.forexNews?[0].description}';

  @override
  void initState() {
    super.initState();
    AppCubit.get(context).getForexNews();
  }


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: reusableAppBar(context: context, text: 'FOREX'),
          body: state is ForexNewsLoadingState
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xff0095D0),
                  ),
                )
              : Column(
                  children: [
                    containerBelowAppBar(text: 'Recent blogs posts'),
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
                                        SizedBox(
                                      height: 2.h,
                                    ),
                                    itemBuilder: (context, index) => Container(
                                      height: 54.h,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10.dp),
                                      ),
                                      child: Column(
                                        children: [
                                          Expanded(
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(10.dp),
                                                  topRight:
                                                      Radius.circular(10.dp)),
                                              child: Image.network(
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
                                              borderRadius:
                                                  BorderRadius.circular(10.dp),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 3.0.w,
                                                  vertical: 2.h),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  Text(
                                                    '$issuer • $issueDate',
                                                    style: TextStyle(
                                                        color: const Color(
                                                            0xff808080),
                                                        fontSize: 14.dp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    height: 0.5.h,
                                                  ),
                                                  Text(
                                                    analysisTitle,
                                                    style: TextStyle(
                                                        fontSize: 17.dp,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    height: 0.5.h,
                                                  ),
                                                  Text(
                                                    analysisContent,
                                                    maxLines: 4,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                      fontSize: 17.dp,
                                                    ),
                                                  ),
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        RecentBlogsPostsReadArticleScreen()));
                                                      },
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            'Read Article',
                                                            style: TextStyle(
                                                                color: const Color(
                                                                    0xff0095D0),
                                                                fontSize:
                                                                    17.dp),
                                                          ),
                                                          SizedBox(
                                                            width: 2.w,
                                                          ),
                                                          Icon(
                                                            Icons
                                                                .arrow_forward_ios,
                                                            size: 15.dp,
                                                            color: const Color(
                                                                0xff0095D0),
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
                    ),
                  ],
                ),
        );
      },
    );
  }
}
