import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/pages/more_screen/services/services_read_article_screen.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class ServicesScreen extends StatelessWidget {
  String serviceImage = 'assets/images/laptop_mobile_image.png';
  String serviceTitle = 'USA lifts sanctions against Xiaomi';
  String serviceContent = 'The US Department of Defense and Xiaomi have'
      ' reached an agreement to lift the ban on investing'
      ' in this Chinese company.in this Chinese company.in this Chinese company.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'More'),

      body: Column(
        children: [
          containerBelowAppBar(text: 'Services'),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
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
                                        serviceImage),
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
                                          serviceTitle,
                                          style: TextStyle(
                                            color: const Color(0xff0379A8),
                                              fontSize: 18.dp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 0.5.h,
                                        ),
                                        Text(
                                          serviceContent,
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
                                                          ServicesReadArticleScreen()));
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
    );
  }
}
