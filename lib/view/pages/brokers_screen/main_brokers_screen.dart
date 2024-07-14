import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/model/companies/companies_model.dart';
import 'package:fx_commission_app/view/pages/brokers_screen/brokers_new_account_screen.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';

class MainBrokersScreen extends StatefulWidget {
  const MainBrokersScreen({super.key});

  @override
  State<MainBrokersScreen> createState() => _MainBrokersScreenState();
}

class _MainBrokersScreenState extends State<MainBrokersScreen> {
  double _rating = 2.5;

  @override
  void initState() {
    super.initState();
    AppCubit.get(context).getCompanies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
          ),
          body: state is CompaniesLoadingState
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xff0095D0),
                  ),
                )
              : Column(
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
                            spreadRadius: 3,
                            blurRadius: 4,
                            offset: const Offset(
                                0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Text(
                        'Brokers',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.dp,
                            color: const Color(0xff0379A8)),
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 2.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 3.0.w),
                              child: Container(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 3.0.w),
                                decoration: BoxDecoration(
                                  color:
                                      Colors.white, // Set the background color
                                  borderRadius: BorderRadius.circular(
                                      10.dp), // Set the border radius
                                  border: Border.all(
                                    color: const Color(
                                        0xffC4C4C4), // Set the border color
                                    width: 1.5, // Set the border width
                                  ),
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  // controller: TextEditingController,
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.all(12.dp),
                                      border: InputBorder.none,
                                      icon: const Icon(
                                        Icons.search,
                                        color: Color(0xff646363),
                                      ),
                                      hintText: 'Search broker',
                                      hintStyle: TextStyle(
                                          color: const Color(0xff808080),
                                          fontSize: 15.dp)),
                                ),
                              ),
                            ),
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (context, index) =>
                                  companiesContainer(
                                      company:
                                          companiesModel.companies![index]),
                              itemCount: companiesModel.companies!.length,
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

  Widget companiesContainer({required Companies company}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 2.h),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.dp),
        ),
        padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 2.h),
        child: Column(
          children: [
            Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(8.dp),
                    child: Image.network(
                      fit: BoxFit.fill,
                       width: 14.w,
                      height: 7.2.h,
                      '${company.logo}',
                      errorBuilder: (context, error, stackTrace) =>
                          const Center(
                              child: Text(
                        'no image returned',
                        style: TextStyle(color: Colors.red),
                      )),
                    )
                    ),
                SizedBox(
                  width: 3.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${company.title}',
                      style: TextStyle(
                          fontSize: 16.dp, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        AnimatedRatingStars(
                          initialRating: 5.0,
                          onChanged: (rating) {
                            setState(() {
                              _rating = rating;
                              //print('Rating : $rating');
                            });
                          },
                          starSize: 15.dp,
                          customFilledIcon: Icons.star,
                          customHalfFilledIcon: Icons.star_half,
                          customEmptyIcon: Icons.star_border,
                          interactiveTooltips: true,
                          filledColor: const Color(0xff0095D0),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          '(14025)',
                          style: TextStyle(fontSize: 15.dp),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              'Weekly cashback',
              style: TextStyle(color: const Color(0xff646363), fontSize: 15.dp),
            ),
            Text(
              'Islamic account',
              style: TextStyle(color: const Color(0xff646363), fontSize: 15.dp),
            ),
            Text(
              'Start from 0.1 spread for EUR/USD',
              style: TextStyle(color: const Color(0xff646363), fontSize: 15.dp),
            ),
            Text(
              'CySEC , FCA , FSA , CBCS , FSC',
              style: TextStyle(color: const Color(0xff646363), fontSize: 15.dp),
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                mainElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BrokersNewAccountScreen()));
                    },
                    width: 43.w,
                    height: 5.h,
                    text: 'New account'),
                const Spacer(),
                mainElevatedButtonWithBorder(
                    onPressed: () {},
                    width: 43.w,
                    height: 5.h,
                    text: 'Open a test account')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
