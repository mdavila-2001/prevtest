import 'package:cobanacademy/provider/data_provider.dart';
import 'package:dynamic_tabbar/dynamic_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../env.dart';
import '../../theme/colors.dart';

class TabCategoryWidget extends StatelessWidget {
  const TabCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    TabData filter(String title, int index) {
      return TabData(
          index: index,
          title: Tab(
            height: 4.h,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: const [],
                color: dataProvider.categorySelector == index
                    ? AppColor.primaryPurple
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: dataProvider.categorySelector == index
                      ? AppColor.primaryPurple
                      : AppColor.purpleBlue100,
                  width: 1,
                ),
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: dataProvider.categorySelector == index
                      ? FontWeight.w600
                      : FontWeight.w400,
                  fontSize: 13,
                  color: dataProvider.categorySelector == index
                      ? AppColor.white
                      : AppColor.purpleBlue100,
                ),
              ),
            ),
          ),
          content: Container());
    }

    return SizedBox(
      height: 4.6.h,
      width: 100.w,
      child: DynamicTabBarWidget(
        splashBorderRadius: const BorderRadius.all(Radius.circular(24)),
        padding: EdgeInsets.only(left: 3.w, right: 3.w),
        dynamicTabs: Environment.exploreFilters
            .map((e) => filter(e, Environment.exploreFilters.indexOf(e)))
            .toList(),
        isScrollable: true,
        showBackIcon: null,
        showNextIcon: null,
        leading: null,
        trailing: null,
        dividerHeight: 0,
        tabAlignment: TabAlignment.start,
        labelPadding: EdgeInsets.symmetric(horizontal: 1.2.w),
        indicatorColor: Colors.transparent,
        onTabChanged: (value) {
          dataProvider.categorySelector = value!;
        },
        onTabControllerUpdated: (controller) {},
      ),
    );
  }
}
