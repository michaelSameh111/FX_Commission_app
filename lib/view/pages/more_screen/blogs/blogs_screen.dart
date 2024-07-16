import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/pages/more_screen/blogs/broker_news/broker_news_tab_screen.dart';
import 'package:fx_commission_app/view/pages/more_screen/blogs/crypto_news/crypto_news_tab_screen.dart';
import 'package:fx_commission_app/view/pages/more_screen/blogs/forex_news/forex_news_tab_screen.dart';
import 'package:fx_commission_app/view/pages/more_screen/blogs/last_news/last_news_tab_screen.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class BlogsScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leadingWidth: 60.w,
            leading: InkWell(
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
                    'More',
                    style: TextStyle(fontSize: 18.dp),
                  ),
                ],
              ),
            ),
            bottom: TabBar(
              padding: EdgeInsets.zero,
              // controller: _tabController,
              isScrollable: true,
              indicator: const BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Color(0xff0379A8),
              ))),
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
                  'Crypto News',
                  style: TextStyle(
                      color: const Color(0xff0379A8),
                      fontWeight: FontWeight.bold,
                      fontSize: 16.dp),
                ),
                Text(
                  'Stocks News',
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
              const Expanded(
                child: TabBarView(
                  children: [
                    LastNewsTabScreen(),
                    ForexNewsTabScreen(),
                    CryptoNewsTabScreen(),
                    BrokerNewsTabScreen(),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
