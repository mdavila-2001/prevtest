import 'package:cobanacademy/graphql/graphql_config.dart';
import 'package:cobanacademy/graphql/model/objetos.dart';
import 'package:cobanacademy/pages/explore/course/course_page.dart';
import 'package:cobanacademy/provider/data_provider.dart';
import 'package:cobanacademy/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CourseCardWidget extends StatelessWidget {
  final String email;
  final CourseHome course;

  const CourseCardWidget(
      {super.key, required this.course, required this.email});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    return AspectRatio(
        aspectRatio: 1.703125,
        child: GestureDetector(
            onTap: () {
              dataProvider.idCourse = course.id;


              dataProvider.initializeVideo(course.introduccion);
              dataProvider.pageSelector=0;



              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.bottomToTop,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 400),
                      child: CoursePage(
                        email: email,
                        categorias: course.categorias,
                      )));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 2.w),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColor.primaryPurple,
                          AppColor.primaryDarkPurple,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            GraphQLConfiguration.getHost() + course.portada),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          AppColor.persistentTabView.withOpacity(0.7),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          course.nombre,
                          style: const TextStyle(
                              color: AppColor.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 0.2.h,
                        ),
                        Text(
                          course.autores[0],
                          style: const TextStyle(
                              color: AppColor.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
