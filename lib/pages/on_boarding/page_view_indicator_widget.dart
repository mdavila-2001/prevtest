import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../theme/colors.dart';

class PageViewIndicatorWidget extends StatelessWidget {
  const PageViewIndicatorWidget({super.key,
    required this.selectedPage,
    required this.pageCount,
    required PageController pageController,
  }) : _pageController = pageController;

  final int selectedPage;
  final int pageCount;
  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return PageViewDotIndicator(
      size: Size(30.w, 5),
      unselectedSize: Size(30.w, 6),
      margin: const EdgeInsets.symmetric(horizontal: 3),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      currentItem: selectedPage,
      count: pageCount,
      unselectedColor: const Color(0xff4D4097),
      selectedColor: AppColor.primaryPurple,
      duration: const Duration(milliseconds: 200),
      boxShape: BoxShape.rectangle,
      borderRadius: const BorderRadius.all(Radius.circular(32)),
      onItemClicked: (index) {
        _pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
        );
      },
    );
  }
}