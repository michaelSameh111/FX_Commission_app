import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/model/services/services_model.dart';
import 'package:fx_commission_app/view/pages/more_screen/services/services_read_article_screen.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class ServicesScreen extends StatefulWidget {
  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  String serviceImage = 'assets/images/laptop_mobile_image.png';

  String serviceTitle = 'USA lifts sanctions against Xiaomi';

  String serviceContent = 'The US Department of Defense and Xiaomi have'
      ' reached an agreement to lift the ban on investing'
      ' in this Chinese company.in this Chinese company.in this Chinese company.';

  @override
  void initState() {
    super.initState();
    AppCubit.get(context).getServices();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: reusableAppBar(context: context, text: 'More'),
          body: state is ServicesLoadingState
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xff0095D0),
                  ),
                )
              : Column(
                  children: [
                    containerBelowAppBar(text: 'Services'),

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
                                    itemBuilder: (context, index) => servicesContainer(services: servicesModel.services![index]),
                                    itemCount: servicesModel.services!.length,
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
      },
    );
  }
  Widget servicesContainer ({
    required Services services
}){
    return Container(
      // height: 38.h,
      // width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
        BorderRadius.circular(10.dp),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft:
                Radius.circular(10.dp),
                topRight:
                Radius.circular(10.dp)),
            child: Image.network(
                fit: BoxFit.fill,
                width: double.infinity,
                height: 15.h,
                '${services.image}'),
          ),
          Container(
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
                    '${services.title}',
                    style: TextStyle(
                        color: const Color(
                            0xff0379A8),
                        fontSize: 18.dp,
                        fontWeight:
                        FontWeight.bold),
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Text(
                    '${services.description}',
                    maxLines: 2,
                    overflow:
                    TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 18.dp,
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder:
                                    (context) =>
                                    ServicesReadArticleScreen(
                                      services: services,
                                    )));
                      },
                      child: Row(
                        children: [
                          Text(
                            'Read Article',
                            style: TextStyle(
                                color: const Color(
                                    0xff0095D0),
                                fontSize:
                                18.dp),
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
          )
        ],
      ),
    );
  }
}
