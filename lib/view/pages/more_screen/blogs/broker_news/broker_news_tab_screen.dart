import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/model/broker_news/broker_news_model.dart';
import 'package:fx_commission_app/view/pages/more_screen/blogs/blogs_read_article_screen.dart';
import 'package:fx_commission_app/view/pages/more_screen/blogs/broker_news/broker_news_read_article_screen.dart';

class BrokerNewsTabScreen extends StatefulWidget {
  const BrokerNewsTabScreen({super.key});

  @override
  State<BrokerNewsTabScreen> createState() => _BrokerNewsTabScreenState();
}

class _BrokerNewsTabScreenState extends State<BrokerNewsTabScreen> {

  @override
  void initState() {
    super.initState();
    AppCubit.get(context).getBrokerNews();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return state is BrokerNewsLoadingState
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
                                'Broker posts',
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
                            itemBuilder: (context, index) => brokerNewsContainer(
                                stocksNews: brokerNewsModel.stocksNews![index]
                            ),
                            itemCount: brokerNewsModel.stocksNews!.length,
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
  Widget brokerNewsContainer ({
    required StocksNews stocksNews
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
                '${stocksNews.image}',
                errorBuilder: (context, error, stackTrace) => const Center(
                    child: Text(
                      'no image returned',
                      style: TextStyle(color: Colors.red),
                    )),
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
                        '${stocksNews.createdBy} • ${stocksNews.createdAt}',
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
                        '${stocksNews.title}',
                        style: TextStyle(
                            fontSize: 18.dp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      Text(
                        '${stocksNews.description}',
                        maxLines: 4,
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
                                        BrokerNewsReadArticleScreen(stockNews: stocksNews)));
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