import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';
import 'package:fx_commission_app/view/widgets/video_player_widget.dart';

class ForexCourseScreen extends StatelessWidget {
  String issuer = 'Natali Craig';
  String issueDate = '14 Jan 2022';
  String courseTitle = 'Lorem ipsum dolor sit amet consectetur. '
      'Et at eu fames placerat aliquam.';
  String content = '''Lorem ipsum dolor sit amet consectetur.
Viverra sit ac viverra et aliquam fermentum tincidunt. Mauris aenean 
id vel nisi integer neque nam sed leo. Arcu consequat feugiat aliquet
sollicitudin eleifend ut tortor laoreet. Quisque ut lorem risus elementum
habitant duis nulla. Parturient tortor elementum etiam sit gravida.
Fermentum varius integer suscipit orci fermentum consequat molestie
molestie est.                       

Elit pretium nunc eget phasellus enim quisque turpis mauris. 
Porttitor volutpat nunc aliquet sed tincidunt maecenas vitae aenean. 
Vel nulla nisl arcu tellus arcu senectus scelerisque tellus egestas. Vitae 
nec facilisis sapien condimentum pellentesque vulputate. Eu pulvinar mi 
fringilla dis et eget risus quis purus.i fringilla dis et eget risus quis 
purus.''';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: reusableAppBar(context: context, text: 'FOREX'),

      body: SingleChildScrollView(
        child: Column(
          children: [
            containerBelowAppBar(text: 'Forex Course'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.0.w, vertical: 4.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.dp),
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                          fit: BoxFit.cover,
                          'assets/images/laptop_mobile_image.png'),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Text(issuer,
                        style: TextStyle(
                            color: const Color(0xff0095D0), fontSize: 13.dp),
                      ),
                      Text(' • ',
                        style: TextStyle(
                            color: const Color(0xff0095D0), fontSize: 13.dp),
                      ),
                      Text(
                        issueDate,
                        style: TextStyle(
                            color: const Color(0xff0095D0), fontSize: 13.dp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    courseTitle,
                    style:
                    TextStyle(fontSize: 17.dp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    content,
                    style: TextStyle(
                      fontSize: 17.dp,
                    ),
                  ),


                  VideoPlayerWidget(
                    videoUrl: 'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
                  )
                ],
              ),
            )

          ],
        ),
      ),

    );
  }
}
