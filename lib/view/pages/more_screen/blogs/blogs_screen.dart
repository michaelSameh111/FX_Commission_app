import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/pages/more_screen/blogs/blogs_read_article_screen.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class BlogsScreen extends StatelessWidget {
  String blogImage = 'assets/images/laptop_mobile_image.png';
  String issuer = 'Natali Craig';
  String issueDate = '14 Jan 2022';
  String blogTitle = 'USA lifts sanctions against Xiaomi';
  String blogContent = 'The US Department of Defense and Xiaomi have'
      ' reached an agreement to lift the ban on investing'
      ' in this Chinese company.in this Chinese company.in this Chinese company.';

 // TabController? _tabController = TabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 60.w,
          leading: InkWell(
            onTap: (){
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
          bottom:

          TabBar(
            padding: EdgeInsets.zero,
            //   controller: _tabController,
            isScrollable: true,
            indicator: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xff0379A8),
                )
              )
            ),
            tabs: [
              Text(
                'Last News',
                style: TextStyle(
                    color: const Color(0xff0379A8),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.dp),
              ),
              Text(
                'Forex News',
                style: TextStyle(
                    color: const Color(0xff0379A8),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.dp),
              ),
              Text(
                'FX Commission News',
                style: TextStyle(
                    color: const Color(0xff0379A8),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.dp),
              ),
              Text(
                'Broker News',
                style: TextStyle(
                    color: const Color(0xff0379A8),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.dp),
              ),
            ],
          ),
        ),

        body: Column(
          children: [
            containerBelowAppBar(text: 'Blogs'),
            // FloatingActionButton(
            //   onPressed: (){
            //     DioHelper.getData(
            //       url: '', //v2/top-headlines
            //       query: {
            //         'country' : 'eg',
            //         'category' : 'business',
            //    //     'apiKey' : '65f7sdafasasdad'
            //       }, token: '',
            //     ).then((value){
            //       print(value?.data);
            //     }).catchError((error){
            //       print(error.toString());
            //     });
            //   },
            //   child: Icon(Icons.ad_units),
            // ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 4.h),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'All blogs posts',
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
                            physics: NeverScrollableScrollPhysics(),
                            separatorBuilder: (context, index) => SizedBox(
                              height: 2.h,
                            ),
                            itemBuilder: (context, index) => Container(
                              height: 56.h,
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
                                          blogImage),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          Text(
                                            '$issuer • $issueDate',
                                            style: TextStyle(
                                                color: const Color(0xff808080),
                                                fontSize: 15.dp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 0.5.h,
                                          ),
                                          Text(
                                            '$blogTitle',
                                            style: TextStyle(
                                                fontSize: 18.dp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 0.5.h,
                                          ),
                                          Text(
                                            '$blogContent',
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
                                                            BlogsReadArticleScreen()));                                        },
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Read Article',
                                                    style: TextStyle(
                                                        color:
                                                            const Color(0xff0095D0),
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
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
