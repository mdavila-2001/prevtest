import 'package:animate_do/animate_do.dart';
import 'package:cobanacademy/pages/login/login_page.dart';
import 'package:cobanacademy/pages/on_boarding/page_view_indicator_widget.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../env.dart';
import '../../theme/colors.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late int selectedPage;
  late final PageController _pageController;

  @override
  void initState() {
    selectedPage = 0;
    _pageController = PageController(initialPage: selectedPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const pageCount = 3;

    Widget onBoardingPageView(
        String title, String subtitle, String button, String image) {
      return Container(
        height: 100.h,
        width: 100.w,
        decoration: const BoxDecoration(),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: 100.h,
              width: 100.w,
              child: Image.asset(
                'assets/images/$image',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 100.h,
              width: 100.w,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xff130744).withOpacity(0.4),
                    const Color(0xff2D2461).withOpacity(1),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.h, left: 5.w, right: 5.w),
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    subtitle,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w200,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 3.h, left: 5.w, right: 5.w),
                    height: 8.h,
                    width: 90.w,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          foregroundColor: Colors.transparent,
                          side: const BorderSide(color: AppColor.white),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24))),
                      onPressed: () async {
                        if (selectedPage != 2) {
                          setState(() {
                            _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.decelerate);
                            selectedPage = selectedPage + 1;
                          });
                        } else {
                          Navigator.pushReplacement(
                              context,
                              PageTransition(
                                  type: PageTransitionType.fade,
                                  alignment: Alignment.center,
                                  duration: const Duration(milliseconds: 100),
                                  child: const LoginPage()));
                        }
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 2.h),
                        child: Center(
                            child: Text(
                              button,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      );
    }

    return FadeIn(
        duration: const Duration(seconds: 1),
        child: Scaffold(
          backgroundColor: AppColor.primaryPurple,
          body: Stack(
            alignment: Alignment.topCenter,
            children: [
              PageView(
                  physics: const ClampingScrollPhysics(),
                  controller: _pageController,
                  onPageChanged: (page) {
                    setState(() {
                      selectedPage = page;
                    });
                  },
                  children: [
                    onBoardingPageView(
                      Environment.onBoardingTitles[0],
                      Environment.onBoardingSubTitles[0],
                      Environment.onBoardingButtons[0],
                      Environment.onBoardingImages[0],
                    ),
                    onBoardingPageView(
                      Environment.onBoardingTitles[1],
                      Environment.onBoardingSubTitles[1],
                      Environment.onBoardingButtons[1],
                      Environment.onBoardingImages[1],
                    ),
                    onBoardingPageView(
                      Environment.onBoardingTitles[2],
                      Environment.onBoardingSubTitles[2],
                      Environment.onBoardingButtons[2],
                      Environment.onBoardingImages[2],
                    ),
                  ]),
              Container(
                margin: EdgeInsets.only(top: 8.h),
                child: PageViewIndicatorWidget(
                    selectedPage: selectedPage,
                    pageCount: pageCount,
                    pageController: _pageController),
              ),
            ],
          ),
        ));
  }
}
