import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/model/companies/company_show_model.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';
import 'package:video_player/video_player.dart';

class BrokersNewAccountScreen extends StatefulWidget {
   int id;
   // Company? company;

   BrokersNewAccountScreen({
     required this.id,
     // required this.company
   });

  @override
  State<BrokersNewAccountScreen> createState() =>
      _BrokersNewAccountScreenState();
}

class _BrokersNewAccountScreenState extends State<BrokersNewAccountScreen> {
  // double rating = 3.5;
  // double _rating = 2.5;
  // String accountTitle = 'XM Group';
 //  String accountContent =
 //      '''Exness Group was founded by a group of like-minded professionals in the area of finance and information technology in 2008. Leadership In the past years the Exness Group has come a long way, becoming an industry leader: by the middle of 2014 Exness Group clients' monthly trading volume was more than 180 billion USD and the number of trading accounts opened each month by traders around the world exceeds 15,000.
 // Currently Exness Group offers the ability to trade more than 120 financial instruments, with some of the best-on-the-market order execution and record-tight spreads for the main currency pairs. Priorities Continuous development, guided primarily by systematic improvement of trading conditions, is the key to Exness Group's long-term and successful work. ''';
  String noticesContent =
      '''XM Group is a group of regulated online brokers. Trading Point of Financial Instruments Ltd was established in 2009 and it is regulated by the Cyprus Securities and Exchange Commission (CySEC 120/10), Trading Point of Financial Instruments Pty Ltd was established in 2015 and it is regulated by the Australian Securities and Investments Commission (ASIC 443670), and XM Global Limited was established in 2017 and it is regulated by the International Financial Services Commission IFSC/60/354/TS/19
''';
  late VideoPlayerController _videoPlayerController;
  late Future<void> _initializeVideoPlayerFuture;
  late ChewieController _chewieController;
  late CompanyShowModel oneCompanyModel = CompanyShowModel();
  String? x;

  @override
  void initState() {
    super.initState();

    AppCubit.get(context).getCompanyShow(oneCompanyId: 2,companyShowModel: oneCompanyModel).then((value)=>oneCompanyModel=value!);
    // AppCubit.get(context).getOneCompanyShow(
    //     id: widget.id,
    //
    // );

    // AppCubit.get(context).getCompanyShow(oneCompanyId: 3);

    // Initialize the controller and load the video from a URL or an asset
    _videoPlayerController = VideoPlayerController.network(
             '${companyShowModel.company?.video}'
    );
    _videoPlayerController.initialize().then((_) {

      setState(() {});
    });

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: _videoPlayerController.value.aspectRatio,
      autoPlay: true,
      looping: true,
      // Custom controls can be added here
      materialProgressColors: ChewieProgressColors(

        playedColor: Color(0xff0095D0),
        handleColor: Color(0xff0379A8),
        backgroundColor: Colors.grey,
        bufferedColor: Colors.lightGreen,
      ),
    );

    _initializeVideoPlayerFuture = _videoPlayerController.initialize();
    // Start playing the video automatically
    _videoPlayerController.setLooping(true);
    _videoPlayerController.play();

  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: reusableAppBar(context: context, text: 'Brokers'),
          body: state is GetOneCompanyLoadingState
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xff0095D0),
                  ),
                )
              : Column(
                  children: [
            Container(
            width: double.infinity,
            height: 12.h,
            padding: EdgeInsets.symmetric(vertical: 22.dp, horizontal: 4.w),
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
            child: Center(
              child: Text(
                '${oneCompanyModel.company!.title}',
                //  'oneCompanyModel.company!.title',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.dp,
                    color: const Color(0xff0379A8)),
              ),
            ),
          ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 3.0.w, vertical: 4.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: SizedBox(
                                      width: 30.w,
                                      height: 14.h,
                                      child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.dp),
                                          child: Image.network(
                                            fit: BoxFit.fill,
                                            '${companyShowModel.company?.logo}',
                                            errorBuilder: (context, error,
                                                    stackTrace) =>
                                                const Center(
                                                    child: Text(
                                              'no image returned',
                                              style: TextStyle(
                                                  color: Colors.red),
                                            )),
                                          )),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Center(
                                    // child: AnimatedRatingStars(
                                    //   initialRating: 2.5,
                                    //   onChanged: (rating) {
                                    //     setState(() {
                                    //       _rating = rating;
                                    //       //print('Rating : $rating');
                                    //     });
                                    //   },
                                    //   starSize: 15.dp,
                                    //   customFilledIcon: Icons.star,
                                    //   customHalfFilledIcon: Icons.star_half,
                                    //   customEmptyIcon: Icons.star_border,
                                    //   interactiveTooltips: true,
                                    //   filledColor: const Color(0xff0095D0),
                                    // ),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Center(
                                    child: Text(
                                      '(${companyShowModel.company?.reviews})',
                                      style: TextStyle(fontSize: 15.dp),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  mainElevatedButton(
                                      onPressed: () {},
                                      width: double.infinity,
                                      height: 5.h,
                                      text: 'New account'),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  mainElevatedButtonWithBorder(
                                      onPressed: () {},
                                      width: double.infinity,
                                      height: 5.h,
                                      text: 'Open a test account'),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Text(
                                    'About ${companyShowModel.company?.title}',
                                    style: TextStyle(
                                        fontSize: 15.dp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '${companyShowModel.company?.description}',
                                    style: TextStyle(
                                      fontSize: 15.dp,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             BlogsReadArticleScreen())
                                        // );
                                      },
                                      child: Row(
                                        children: [
                                          Text(
                                            'Learn more',
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
                                      )),
                                  const Divider(
                                    color: Color(0xffA2A2A2),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  Text(
                                    'Notices',
                                    style: TextStyle(
                                        fontSize: 15.dp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    noticesContent,
                                    style: TextStyle(
                                      fontSize: 15.dp,
                                    ),
                                  ),
                                  TextButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             BlogsReadArticleScreen())
                                        // );
                                      },
                                      child: Row(
                                        children: [
                                          Text(
                                            'Learn more',
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
                                      )),
                                  Container(
                                    width: double.infinity,
                                    height: 8.h,
                                    color: const Color(0xff0379A8),
                                    child: Center(
                                      child: Text(
                                        '${companyShowModel.company?.title}',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18.dp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(12.dp),
                                    width: double.infinity,
                                    height: 10.h,
                                    color: Colors.white,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Commission per lot	',
                                          style: TextStyle(
                                              fontSize: 18.dp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'start from 2\$',
                                          style: TextStyle(
                                            fontSize: 16.dp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      padding: EdgeInsets.all(12.dp),
                                    width: double.infinity,
                                    height: 10.h,
                                    color: const Color(0xffbcdbe6),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Commission Percentage',
                                          style: TextStyle(
                                              fontSize: 18.dp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '50%',
                                          style: TextStyle(
                                            fontSize: 16.dp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(12.dp),
                                    width: double.infinity,
                                    height: 10.h,
                                    color: Colors.white,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Maximum Leverage',
                                          style: TextStyle(
                                              fontSize: 18.dp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'unlimited',
                                          style: TextStyle(
                                            fontSize: 16.dp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(12.dp),
                                    width: double.infinity,
                                    height: 10.h,
                                    color: const Color(0xffbcdbe6),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Spread for EUR/USD',
                                          style: TextStyle(
                                              fontSize: 18.dp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'start from 0.1',
                                          style: TextStyle(
                                            fontSize: 16.dp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(12.dp),
                                    width: double.infinity,
                                    height: 10.h,
                                    color: Colors.white,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Min Trade Size',
                                          style: TextStyle(
                                              fontSize: 18.dp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '0.01',
                                          style: TextStyle(
                                            fontSize: 16.dp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(12.dp),
                                    width: double.infinity,
                                    height: 10.h,
                                    color: const Color(0xffbcdbe6),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Minimum Deposit',
                                          style: TextStyle(
                                              fontSize: 18.dp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '10\$',
                                          style: TextStyle(
                                            fontSize: 16.dp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(12.dp),
                                    width: double.infinity,
                                    height: 10.h,
                                    color: Colors.white,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Headquarters',
                                          style: TextStyle(
                                              fontSize: 18.dp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'London, Cyprus',
                                          style: TextStyle(
                                            fontSize: 16.dp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(12.dp),
                                    width: double.infinity,
                                    height: 10.h,
                                    color: const Color(0xffbcdbe6),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Founded',
                                          style: TextStyle(
                                              fontSize: 18.dp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '2008',
                                          style: TextStyle(
                                            fontSize: 16.dp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(12.dp),
                                    width: double.infinity,
                                    height: 10.h,
                                    color: Colors.white,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Regulators',
                                          style: TextStyle(
                                              fontSize: 18.dp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'CySEC , FCA , FSA , CBCS , FSC ,',
                                          style: TextStyle(
                                            fontSize: 16.dp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(12.dp),
                                    width: double.infinity,
                                    height: 10.h,
                                    color: const Color(0xffbcdbe6),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Offices',
                                          style: TextStyle(
                                              fontSize: 18.dp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'London, Cyprus',
                                          style: TextStyle(
                                            fontSize: 16.dp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(12.dp),
                                    width: double.infinity,
                                    height: 12.h,
                                    color: Colors.white,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Support Languages',
                                          style: TextStyle(
                                              fontSize: 18.dp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Arabic, English, French, German, Italian, Hungarian, Spanish',
                                          style: TextStyle(
                                            fontSize: 16.dp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(12.dp),
                                    width: double.infinity,
                                    height: 10.h,
                                    color: const Color(0xffbcdbe6),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Account Currency	',
                                          style: TextStyle(
                                              fontSize: 18.dp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'USD,EUR,GBP',
                                          style: TextStyle(
                                            fontSize: 16.dp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  FutureBuilder(
                                    future: _initializeVideoPlayerFuture,
                                    builder: (context, snapshot) {
                                      if (snapshot.connectionState ==
                                          ConnectionState.done) {
                                        // If the VideoPlayerController has finished initialization, use
                                        // the VideoPlayer widget to display the video.
                                        return Column(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      15.dp),
                                              child: AspectRatio(
                                                aspectRatio:
                                                    _videoPlayerController
                                                        .value.aspectRatio,
                                                child: Chewie(
                                                  controller:
                                                      _chewieController,
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      } else {
                                        // If the VideoPlayerController is still initializing, show a
                                        // loading spinner.
                                        return const Center(
                                            child: CircularProgressIndicator(
                                          color: Color(0xff0095D0),
                                        ));
                                      }
                                    },
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
}
