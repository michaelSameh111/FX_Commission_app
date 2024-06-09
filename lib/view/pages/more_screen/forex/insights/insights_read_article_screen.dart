import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class InsightsReadArticleScreen extends StatelessWidget {
  String issuer = 'Natali Craig';
  String issueDate = '14 Jan 2022';
  String contentTitle = 'Lorem ipsum dolor sit amet consectetur. '
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
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
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: InkWell(
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
                      'Insights',
                      style: TextStyle(fontSize: 18.dp),
                    ),
                  ],
                ),
              ),
            ), //customized containerBelowAppBar

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
                    contentTitle,
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
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
