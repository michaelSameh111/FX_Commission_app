import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/model/forex_news/forex_news_model.dart';
import 'package:fx_commission_app/view/pages/more_screen/forex/forex_blogs/Recent_blogs_posts_read_article_screen.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class RecentBlogsPostsScreen extends StatefulWidget {
  @override
  State<RecentBlogsPostsScreen> createState() => _RecentBlogsPostsScreenState();
}

class _RecentBlogsPostsScreenState extends State<RecentBlogsPostsScreen> {
  // String issuer = '';
  // // String issuer = 'asd';
  //
  // String issueDate = '${forexNewsModel.forexNews?[0].createdAt}';
  // // String issueDate = 'asd';
  //
  // String analysisTitle = '${forexNewsModel.forexNews?[0].title}';
  // // String analysisTitle = 'asd';
  //
  // String analysisContent = '${forexNewsModel.forexNews?[0].description}';
  // // String analysisContent = 'asd';

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
                                    itemBuilder: (context, index) =>
                                        blogPostContainer(
                                            forexNews: forexNewsModel
                                                .forexNews![index]),
                                    itemCount: forexNewsModel.forexNews!.length,
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

  Widget blogPostContainer({
    required ForexNews forexNews,
  }) {
    return Container(
      height: 48.h,
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
                forexNews.image!,
                errorBuilder: (context, error, stackTrace) => const Center(
                    child: Text(
                  'BackEndTeaaaam errorrr',
                  style: TextStyle(color: Colors.red),
                )),
              ),
            ),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.dp),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 2.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    forexNews.createdBy!,
                    style: TextStyle(
                        color: const Color(0xff808080),
                        fontSize: 14.dp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Text(
                    forexNews.title!,
                    style:
                        TextStyle(fontSize: 17.dp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Text(
                    forexNews.description!,
                    maxLines: 3,
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
                                    RecentBlogsPostsReadArticleScreen(
                                      forexNews: forexNews,
                                    )));
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
    );
  }
}
