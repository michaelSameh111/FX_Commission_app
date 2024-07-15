import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/view/pages/more_screen/blogs/blogs_read_article_screen.dart';

class FxCommissionNewsTabScreen extends StatefulWidget {
  const FxCommissionNewsTabScreen({super.key});

  @override
  State<FxCommissionNewsTabScreen> createState() =>
      _FxCommissionNewsTabScreenState();
}

class _FxCommissionNewsTabScreenState extends State<FxCommissionNewsTabScreen> {
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
    AppCubit.get(context).getFxCommNews();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return state is FxCommNewsLoadingState
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
                                      'FX Commission posts',
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
                                  separatorBuilder: (context, index) =>
                                      SizedBox(
                                    height: 2.h,
                                  ),
                                  itemBuilder: (context, index) => fxCommNewsContainer(),
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
              );
      },
    );
  }

  Widget fxCommNewsContainer() {
    return Container(
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
              padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 2.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    style:
                        TextStyle(fontSize: 18.dp, fontWeight: FontWeight.bold),
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
                                    BlogsReadArticleScreen()));
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
