import 'package:cobanacademy/env.dart';
import 'package:cobanacademy/graphql/model/objetos.dart';
import 'package:cobanacademy/pages/explore/course/advisory_widget.dart';
import 'package:cobanacademy/pages/explore/course/content_widget.dart';
import 'package:cobanacademy/pages/explore/course/forum_widget.dart';
import 'package:cobanacademy/pages/explore/course/objectives_widget.dart';
import 'package:cobanacademy/pages/explore/course/product_widget.dart';
import 'package:cobanacademy/pages/explore/course/video_player/video_player_widget.dart';
import 'package:cobanacademy/provider/data_provider.dart';
import 'package:cobanacademy/theme/colors.dart';
import 'package:dynamic_tabbar/dynamic_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CourseBodyWidget extends StatefulWidget {
  final String email;
  final Course course;

  const CourseBodyWidget(
      {super.key, required this.course, required this.email});

  @override
  State<CourseBodyWidget> createState() => _CourseBodyWidgetState();
}

class _CourseBodyWidgetState extends State<CourseBodyWidget> {


  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    TabData page(String title, int index) {
      return TabData(
        index: index,
        title: Tab(
          height: 4.h,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: const [],
              color:dataProvider.pageSelector == index
                  ? AppColor.primaryPurple
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(24),
              border: Border.all(
                color: dataProvider.pageSelector == index
                    ? AppColor.primaryPurple
                    : AppColor.purpleBlue100,
                width: 1,
              ),
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              title,
              style: TextStyle(
                fontWeight:
                dataProvider.pageSelector == index ? FontWeight.w600 : FontWeight.w400,
                fontSize: 13,
                color: dataProvider.pageSelector == index
                    ? AppColor.white
                    : AppColor.purpleBlue100,
              ),
            ),
          ),
        ),
        content: Container(),
      );
    }

    return PopScope(
      canPop: false,
      onPopInvoked: (valor) {
        Provider.of<DataProvider>(context, listen: false).controller.pause();
      },
      child: Scaffold(
          backgroundColor: AppColor.primaryDarkPurple,
          body: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                Container(
                  color:AppColor.primaryDarkPurple ,
                  height: 3.h,
                  width: 100.w,
                ),
                Container(
                  color:AppColor.primaryPurple ,
                  height: 0.45.h,
                  width: 100.w,
                ),

                VideoPlayerWidget(
                    course: widget.course,
                    aspectRatio: dataProvider.pageSelector == 4 ? 9 / 13 : 16 / 9),
                GestureDetector(
                  onTap: () {},
                  child: Column(
                    children: [
                      SizedBox(
                        height: 2.5.h,
                      ),
                      SizedBox(
                          height: 5.h,
                          child: DynamicTabBarWidget(
                            splashBorderRadius:
                                const BorderRadius.all(Radius.circular(24)),
                            padding: EdgeInsets.only(
                                left: 3.w, right: 3.w, top: 0, bottom: 0),
                            dynamicTabs: Environment.courseTitlesPage
                                .map((e) => page(
                                    e, Environment.courseTitlesPage.indexOf(e)))
                                .toList(),
                            isScrollable: true,
                            showBackIcon: null,
                            showNextIcon: null,
                            leading: null,
                            trailing: null,
                            dividerHeight: 0,
                            dividerColor: AppColor.purpleGray.withOpacity(0.5),
                            tabAlignment: TabAlignment.start,
                            labelPadding:
                                EdgeInsets.symmetric(horizontal: 1.2.w),
                            indicatorColor: Colors.transparent,
                            onTabChanged: (value) {
                              setState(() {
                                if (value == 4 && dataProvider.pageSelector != 4) {
                                  dataProvider.initializeVideo(
                                      widget.course.testimonio.video);
                                }
                                if (value != 4 && dataProvider.pageSelector == 4) {
                                  dataProvider.changeVideo(widget.course
                                      .videos[dataProvider.videoSelector].url);
                                }

                                dataProvider.pageSelector = value!;
                                pageController.animateToPage(
                                  dataProvider.pageSelector,
                                  duration: const Duration(milliseconds: 1),
                                  curve: Curves.linear,
                                );
                              });
                            },
                            onTabControllerUpdated: (controller) {},
                          )),
                      SizedBox(
                        height: 1.h,
                      ),
                      SizedBox(
                        height: 60.h,
                        child: PageView(
                          physics: const NeverScrollableScrollPhysics(),
                          controller: pageController,
                          children: [
                            ObjectivesWidget(
                                curse: widget.course, email: widget.email),
                            ContentWidget(videos: widget.course.videos),
                            ForumWidget(curse: widget.course),
                            ProductWidget(
                                categories: widget.course.categorias,
                                contact: widget.course.contacto.oferta),
                            AdvisoryWidget(
                              contact: widget.course.contacto.asesoria,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}