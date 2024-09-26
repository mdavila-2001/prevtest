import 'package:cobanacademy/graphql/graphql_config.dart';
import 'package:cobanacademy/graphql/model/objetos.dart';
import 'package:cobanacademy/pages/explore/course/course_page.dart';
import 'package:cobanacademy/provider/data_provider.dart';
import 'package:cobanacademy/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyCourseCardWidget extends StatelessWidget {
  final String email;
  final CourseHome course;

  const MyCourseCardWidget(
      {super.key, required this.course, required this.email});

  String capitalizeFirstLetterOfEachWord(String text) {
    List<String> words = text.split(' ');

    final capitalizedWords = words.map((word) {
      if (word.isEmpty) {
        return '';
      }
      return word[0].toUpperCase() + word.substring(1).toLowerCase();
    });

    return capitalizedWords.join(' ');
  }

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    return AspectRatio(
      aspectRatio: 300 / 110,
      child: Container(
          margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.5.h),
          child: GestureDetector(
              onTap: () {
                dataProvider.idCourse = course.id;
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
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
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
                                    GraphQLConfiguration.getHost() +
                                        course.portada),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  AppColor.persistentTabView.withOpacity(0.2),
                                  AppColor.persistentTabView.withOpacity(0.2),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 6,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    course.nombre,
                                    style: const TextStyle(
                                        color: AppColor.white,
                                        fontSize: 14,
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
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                              Text(
                                capitalizeFirstLetterOfEachWord(
                                    course.categorias[0]),
                                style: const TextStyle(
                                    color: AppColor.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w300),
                              ),
                              SizedBox(
                                height: 0.2.h,
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ))),
    );
  }
}
