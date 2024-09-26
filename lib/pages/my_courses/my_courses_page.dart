
import 'package:cobanacademy/pages/my_courses/search_my_courses_widget.dart';
import 'package:cobanacademy/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'my_courses_widget.dart';

class MyCoursesPage extends StatefulWidget {
  final String email;
  BuildContext contexto;
  MyCoursesPage({super.key, required this.email, required this.contexto});

  @override
  State<MyCoursesPage> createState() => _MyCoursesPageState();
}

class _MyCoursesPageState extends State<MyCoursesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.primaryDarkPurple,
        body: Column(
          children: [
            SearchMyCourseWidget(contexto: widget.contexto),
            SizedBox(
              height: 1.h,
            ),
             MyCoursesWidget(email: widget.email,)
          ],
        ));
  }
}
