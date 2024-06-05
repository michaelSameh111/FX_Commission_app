import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/pages/login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<String> onBoardingImages = [
    'assets/images/onBoardingOne.png',
    'assets/images/onBoardingTwo.png',
    'assets/images/onBoardingThree.png',
  ];
  List<String> onBoardingTitle = [
    'Select Destination',
    'Choose the best route',
    'Enjoy the ride',
  ];
  PageController pageController = PageController();
  int pageIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: pageIndex > 1
            ? TextButton(
                child: Text(
                  'Back',
                  style: TextStyle(color: Colors.grey, fontSize: 14.dp),
                ),
                onPressed: () {
                  pageController.previousPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease);
                },
              )
            : SizedBox(),
        leadingWidth: 10.h,
        actions: [
          TextButton(
            child: Text(
              'Skip',
              style: TextStyle(color: Colors.black, fontSize: 14.dp),
            ),
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          )
        ],
      ),
      body: PageView.builder(
          itemCount: 3,
          controller: pageController,
          onPageChanged: (value) {
            setState(() {
              pageIndex = value + 1;
            });
          },
          itemBuilder: (context, index) => OnBoardingPage(
              title: onBoardingTitle[index],
              desc: 'desc',
              image: onBoardingImages[index])),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 3.h),
        child: SizedBox(
          width: 20.w,
          child: CircularProgressIndicator(
           // foregroundColor: Color(0xffFF6A03),
            backgroundColor: Colors.transparent,
            strokeWidth: 2,
            value: pageIndex / 3,
            // child: Center(
            //   child: Padding(
            //     padding: const EdgeInsets.all(5),
            //     child: InkWell(
            //       borderRadius: BorderRadius.circular(10),
            //       onTap: () {
            //         if (pageIndex < 3) {
            //           pageController.nextPage(
            //               duration: Duration(milliseconds: 500),
            //               curve: Curves.ease);
            //         } else {
            //           Navigator.pushReplacement(
            //               context,
            //               MaterialPageRoute(
            //                   builder: (context) => LoginScreen()));
            //         }
            //       },
            //       child: CircleAvatar(
            //         backgroundColor: Color(0xffFF6A03),
            //         child: Icon(
            //           Icons.navigate_next,
            //           size: 4.h,
            //           color: Colors.white,
            //         ),
            //         radius: 100.h,
            //       ),
            //     ),
            //   ),
            // ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  final String title;
  final String desc;
  final String image;
  const OnBoardingPage(
      {super.key,
      required this.title,
      required this.desc,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 50.h,
          ),
          SizedBox(
            height: 1.h,
          ),
          Text(
            '${title}',
            style: TextStyle(fontSize: 18.dp, color: Color(0xffF70415)),
          ),
          SizedBox(
            height: 1.h,
          ),
          Text(
            'Lorem ipsum dolor sit amet consectetur. Amet a in scelerisque aliquam eu.',
            style: TextStyle(color: Colors.grey, fontSize: 14.dp),
          )
        ],
      ),
    );
  }
}
