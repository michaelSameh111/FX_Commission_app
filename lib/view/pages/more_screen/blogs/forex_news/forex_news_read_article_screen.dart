import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/model/forex_news/forex_news_model.dart';

class ForexNewsReadArticleScreen extends StatelessWidget {
  ForexNews forexNews;

  ForexNewsReadArticleScreen({
    required this.forexNews,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 6.h,
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.dp),
                  bottomLeft: Radius.circular(20.dp)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 4,
                  offset: Offset(0, 1), // changes position of shadow
                ),
              ],
            ),
            child: InkWell(
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
                    'Blogs',
                    style: TextStyle(fontSize: 18.dp),
                  ),
                ],
              ),
            ),
          ), //customized containerBelowAppBar

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 4.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.dp),
                          child: SizedBox(
                            width: double.infinity,
                            child: Image.network(
                              fit: BoxFit.cover,
                              '${forexNews.image}',
                              errorBuilder: (context, error, stackTrace) =>
                                  const Text(
                                'no image returned',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          '${forexNews.createdAt}',
                          style: TextStyle(
                              color: const Color(0xff0095D0), fontSize: 13.dp),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          '${forexNews.title}',
                          style: TextStyle(
                              fontSize: 17.dp, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          '${forexNews.description}',
                          style: TextStyle(
                            fontSize: 17.dp,
                          ),
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
  }
}
