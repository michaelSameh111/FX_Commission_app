import 'package:animated_rating_stars/animated_rating_stars.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';
import 'package:video_player/video_player.dart';


class BrokersNewAccountScreen extends StatefulWidget {

  @override
  State<BrokersNewAccountScreen> createState() => _BrokersNewAccountScreenState();
}

class _BrokersNewAccountScreenState extends State<BrokersNewAccountScreen> {
  double rating = 3.5;
  double _rating = 2.5;
  String accountTitle = 'XM Group';
  String accountContent = '''Exness Group was founded by a group of like-minded professionals in the area of finance and information technology in 2008. Leadership In the past years the Exness Group has come a long way, becoming an industry leader: by the middle of 2014 Exness Group clients' monthly trading volume was more than 180 billion USD and the number of trading accounts opened each month by traders around the world exceeds 15,000.
 Currently Exness Group offers the ability to trade more than 120 financial instruments, with some of the best-on-the-market order execution and record-tight spreads for the main currency pairs. Priorities Continuous development, guided primarily by systematic improvement of trading conditions, is the key to Exness Group's long-term and successful work. ''';
  String noticesContent = '''XM Group is a group of regulated online brokers. Trading Point of Financial Instruments Ltd was established in 2009 and it is regulated by the Cyprus Securities and Exchange Commission (CySEC 120/10), Trading Point of Financial Instruments Pty Ltd was established in 2015 and it is regulated by the Australian Securities and Investments Commission (ASIC 443670), and XM Global Limited was established in 2017 and it is regulated by the International Financial Services Commission IFSC/60/354/TS/19
''';
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    // Initialize the controller and load the video from a URL or an asset
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4', // Replace with your video URL or use VideoPlayerController.asset('assets/sample_video.mp4')
    );

    _initializeVideoPlayerFuture = _controller.initialize();
    // Start playing the video automatically
    _controller.setLooping(true);
    _controller.play();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'Brokers'),

      body: Column(
        children: [
          containerBelowAppBar(text: accountTitle),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [

                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 4.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: SizedBox(
                            width: 30.w,
                            height: 14.h,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.dp),
                                child: const Image(fit: BoxFit.cover,
                                    image:
                                    AssetImage('assets/images/profile_picture.png'))),
                          ),
                        ),
                        SizedBox(height: 3.h,),
                        Center(
                          child: AnimatedRatingStars(
                            initialRating: 2.5,
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
                        ),
                        SizedBox(height: 1.h,),
                        Center(
                          child: Text('(14025)',
                            style: TextStyle(
                                fontSize: 15.dp
                            ),),
                        ),
                        SizedBox(height: 2.h,),
                        mainElevatedButton(
                          onPressed: (){

                          },
                          width: double.infinity,
                          height: 5.h,
                          text: 'New account'
                        ),
                        SizedBox(height: 1.h,),
                        mainElevatedButtonWithBorder(
                          onPressed: (){},
                            width: double.infinity,
                            height: 5.h,
                            text: 'Open a test account'
                        ),
                        SizedBox(height: 2.h,),
                        Text('About $accountTitle',
                        style: TextStyle(
                          fontSize: 15.dp,
                          fontWeight: FontWeight.bold
                        ),),
                        Text(accountContent,
                          style: TextStyle(
                              fontSize: 15.dp,
                          ),),
                        SizedBox(height: 2.h,),
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

                        SizedBox(height: 2.h,),
                        Text('Notices',
                          style: TextStyle(
                              fontSize: 15.dp,
                              fontWeight: FontWeight.bold
                          ),),
                        Text(noticesContent,
                          style: TextStyle(
                            fontSize: 15.dp,
                          ),),
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
                            child: Text('XM Group',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.dp,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12.dp),
                          width: double.infinity,
                          height: 10.h,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Commission per lot	',
                                style: TextStyle(
                                    fontSize: 18.dp,
                                    fontWeight: FontWeight.bold
                                ),),
                              Text('start from 2\$',
                                style: TextStyle(
                                    fontSize: 16.dp,
                                ),),

                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12.dp),
                          width: double.infinity,
                          height: 10.h,
                          color: const Color(0xffbcdbe6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Commission Percentage',
                                style: TextStyle(
                                    fontSize: 18.dp,
                                    fontWeight: FontWeight.bold
                                ),),
                              Text('50%',
                                style: TextStyle(
                                  fontSize: 16.dp,
                                ),),

                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12.dp),
                          width: double.infinity,
                          height: 10.h,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Maximum Leverage',
                                style: TextStyle(
                                    fontSize: 18.dp,
                                    fontWeight: FontWeight.bold
                                ),),
                              Text('unlimited',
                                style: TextStyle(
                                  fontSize: 16.dp,
                                ),),

                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12.dp),
                          width: double.infinity,
                          height: 10.h,
                          color: const Color(0xffbcdbe6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Spread for EUR/USD',
                                style: TextStyle(
                                    fontSize: 18.dp,
                                    fontWeight: FontWeight.bold
                                ),),
                              Text('start from 0.1',
                                style: TextStyle(
                                  fontSize: 16.dp,
                                ),),

                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12.dp),
                          width: double.infinity,
                          height: 10.h,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Min Trade Size',
                                style: TextStyle(
                                    fontSize: 18.dp,
                                    fontWeight: FontWeight.bold
                                ),),
                              Text('0.01',
                                style: TextStyle(
                                  fontSize: 16.dp,
                                ),),

                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12.dp),
                          width: double.infinity,
                          height: 10.h,
                          color: const Color(0xffbcdbe6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Minimum Deposit',
                                style: TextStyle(
                                    fontSize: 18.dp,
                                    fontWeight: FontWeight.bold
                                ),),
                              Text('10\$',
                                style: TextStyle(
                                  fontSize: 16.dp,
                                ),),

                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12.dp),
                          width: double.infinity,
                          height: 10.h,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Headquarters',
                                style: TextStyle(
                                    fontSize: 18.dp,
                                    fontWeight: FontWeight.bold
                                ),),
                              Text('London, Cyprus',
                                style: TextStyle(
                                  fontSize: 16.dp,
                                ),),

                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12.dp),
                          width: double.infinity,
                          height: 10.h,
                          color: const Color(0xffbcdbe6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Founded',
                                style: TextStyle(
                                    fontSize: 18.dp,
                                    fontWeight: FontWeight.bold
                                ),),
                              Text('2008',
                                style: TextStyle(
                                  fontSize: 16.dp,
                                ),),

                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12.dp),
                          width: double.infinity,
                          height: 10.h,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Regulators',
                                style: TextStyle(
                                    fontSize: 18.dp,
                                    fontWeight: FontWeight.bold
                                ),),
                              Text('CySEC , FCA , FSA , CBCS , FSC ,',
                                style: TextStyle(
                                  fontSize: 16.dp,
                                ),),

                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12.dp),
                          width: double.infinity,
                          height: 10.h,
                          color: const Color(0xffbcdbe6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Offices',
                                style: TextStyle(
                                    fontSize: 18.dp,
                                    fontWeight: FontWeight.bold
                                ),),
                              Text('London, Cyprus',
                                style: TextStyle(
                                  fontSize: 16.dp,
                                ),),

                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12.dp),
                          width: double.infinity,
                          height: 12.h,
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Support Languages',
                                style: TextStyle(
                                    fontSize: 18.dp,
                                    fontWeight: FontWeight.bold
                                ),),
                              Text('Arabic, English, French, German, Italian, Hungarian, Spanish',
                                style: TextStyle(
                                  fontSize: 16.dp,
                                ),),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12.dp),
                          width: double.infinity,
                          height: 10.h,
                          color: const Color(0xffbcdbe6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Account Currency	',
                                style: TextStyle(
                                    fontSize: 18.dp,
                                    fontWeight: FontWeight.bold
                                ),),
                              Text('USD,EUR,GBP',
                                style: TextStyle(
                                  fontSize: 16.dp,
                                ),),
                            ],
                          ),
                        ),

                        SizedBox(height: 2.h,),
                        FutureBuilder(
                            future: _initializeVideoPlayerFuture,
                            builder: (context, snapshot) {
                              if (snapshot.connectionState == ConnectionState.done) {
                                // If the VideoPlayerController has finished initialization, use
                                // the VideoPlayer widget to display the video.
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(15.dp),
                                  child: AspectRatio(
                                    aspectRatio: _controller.value.aspectRatio,
                                    child: VideoPlayer(_controller),
                                  ),
                                );
                              } else {
                                // If the VideoPlayerController is still initializing, show a
                                // loading spinner.
                                return const Center(child: CircularProgressIndicator(
                                  color: Color(0xff0095D0),
                                ));
                              }
                            },)
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
