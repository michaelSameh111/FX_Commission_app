import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:fx_commission_app/controller/constants.dart';
import 'package:fx_commission_app/controller/cubit/cubit.dart';
import 'package:fx_commission_app/controller/cubit/states.dart';
import 'package:fx_commission_app/model/forex_course/forex_course_model.dart';
import 'package:fx_commission_app/view/widgets/reusable_widgets.dart';
import 'package:fx_commission_app/view/widgets/video_player_widget.dart';

class ForexCourseScreen extends StatefulWidget {

  @override
  State<ForexCourseScreen> createState() => _ForexCourseScreenState();
}

class _ForexCourseScreenState extends State<ForexCourseScreen> {


  @override
  void initState() {
    super.initState();
    AppCubit.get(context).getForexCourse();
    print('getForexCourse method doneeeeeeeeeee');
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: reusableAppBar(context: context, text: 'FOREX'),
          body: state is ForexCourseLoadingState
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Color(0xff0095D0),
                  ),
                )
              : Column(
                  children: [
                    containerBelowAppBar(text: 'Forex Course'),

                    forexCourseContainer(courses: forexCourseModel.courses![0]),
                  ],
                ),
        );
      },
    );
  }
  Widget forexCourseContainer({
    required Courses courses,
}){
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 3.0.w, vertical: 4.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.dp),
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.network(
                        fit: BoxFit.cover,
                        '${courses.image}',
                        errorBuilder: (context, error, stackTrace) =>
                        const Center(
                          child: Text('backEndError xDDDDD',
                            style: TextStyle(
                                color: Colors.red
                            ),
                          ),),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'issuer',
                        style: TextStyle(
                            color: const Color(0xff0095D0),
                            fontSize: 13.dp),
                      ),
                      Text(
                        ' • ',
                        style: TextStyle(
                            color: const Color(0xff0095D0),
                            fontSize: 13.dp),
                      ),
                      Text(
                        'issueDate',
                        style: TextStyle(
                            color: const Color(0xff0095D0),
                            fontSize: 13.dp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),

                  Text(
                    '${courses.title}',
                    style: TextStyle(
                        fontSize: 17.dp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    '${courses.description}',
                    style: TextStyle(
                      fontSize: 17.dp,
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  VideoPlayerWidget(
                    videoUrl:
                    '${courses.video}',
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
