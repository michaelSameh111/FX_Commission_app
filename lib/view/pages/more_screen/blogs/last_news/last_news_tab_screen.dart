import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/model/blogs/last_news/last_news_model.dart';
import 'package:fx_commission_app/view/pages/more_screen/blogs/blogs_read_article_screen.dart';
import 'package:fx_commission_app/view/pages/more_screen/blogs/last_news/last_news_read_article_screen.dart';

class LastNewsTabScreen extends StatefulWidget {
  const LastNewsTabScreen({super.key});

  @override
  State<LastNewsTabScreen> createState() => _LastNewsTabScreenState();
}

class _LastNewsTabScreenState extends State<LastNewsTabScreen> {
  String blogImage = 'assets/images/laptop_mobile_image.png';

  String issuer = 'Natali Craig';

  String issueDate = '14 Jan 2022';

  String blogTitle = 'USA lifts sanctions against Xiaomi';

  String blogContent = 'The US Department of Defense and Xiaomi have'
      ' reached an agreement to lift the ban on investing'
      ' in this Chinese company.in this Chinese company.in this Chinese company.';

  @override
  void initState() {
    super.initState();
    AppCubit.get(context).getLastNews();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return state is LastNewsLoadingState
            ? const Center(
                child: CircularProgressIndicator(
                  color: Color(0xff0095D0),
                ),
              )
            : Column(
              children: [
                Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 3.0.w, vertical: 4.h),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Latest posts',
                                      style: TextStyle(
                                          color: const Color(0xff0095D0),
                                          fontSize: 18.dp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                ListView.separated(
                                  physics: const NeverScrollableScrollPhysics(),
                                  separatorBuilder: (context, index) => SizedBox(
                                    height: 2.h,
                                  ),
                                  itemBuilder: (context, index) => lastNewsContainer(
                                      lastNews: lastNewsModel.lastNews![index]),
                                  itemCount: lastNewsModel.lastNews!.length,
                                  shrinkWrap: true,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
              ],
            );
      },
    );
  }
  Widget lastNewsContainer ({
    required LastNews lastNews
  }){
    return Container(
      height: 50.h,
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
                  '${lastNews.image}',
              errorBuilder: (context, error, stackTrace) => const Center(child: Text('no image returned',style: TextStyle(color: Colors.red),)),
              ),
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
                      horizontal: 3.0.w, vertical: 2.h),
                  child: Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        '${lastNews.createdBy} • ${lastNews.createdAt}',
                        style: TextStyle(
                            color:
                            const Color(0xff808080),
                            fontSize: 15.dp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      Text(
                        '${lastNews.title}',
                        style: TextStyle(
                            fontSize: 18.dp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      Text(
                        '${lastNews.description}',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18.dp,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        LastNewsReadArticleScreen(lastNews: lastNews)));
                          },
                          child: Row(
                            children: [
                              Text(
                                'Read Article',
                                style: TextStyle(
                                    color: const Color(
                                        0xff0095D0),
                                    fontSize: 18.dp),
                              ),
                              SizedBox(
                                width: 2.w,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
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
    );
  }
}
