import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/pages/login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: 7.h),
          child: FloatingActionButton(
            shape: const CircleBorder(),
            onPressed: () {
              print(pageIndex);
              if (pageIndex < 2) {
                _controller.nextPage(
                    duration: Duration(milliseconds: 500), curve: Curves.ease);
              } else {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()));
              }
            },
            backgroundColor: const Color(0xff3f4446),
            child: Icon(
              Icons.double_arrow,
              color: Colors.white,
              size: 28.dp,
            ),
          ),
        ),
        body: Stack(
          children: [
            PageView(
              onPageChanged: (value) {
                setState(() {
                  pageIndex = value;
                });
              },
              controller: _controller,
              children: [
                Image.asset('assets/images/onBoardingOne.png',
                fit: BoxFit.cover,),
                Image.asset('assets/images/onBoardingTwo.png',
                  fit: BoxFit.cover,),
                Image.asset('assets/images/onBoardingThree.png',
                  fit: BoxFit.cover,),
              ],
            ),
            Positioned(
              top: 40,
              left: 16,
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                  );
                },
                child: Text(
                  'Skip',
                  style: TextStyle(color: Colors.white, fontSize: 18.dp),
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 75.h,),
                Text('Quisque scelerisque amet tristique eget sit commodo tellus velit quis.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20.dp,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),),
              ],
            ),
          ],
        ));
  }
}
