import 'dart:io';
import 'dart:math';

import 'package:cobanacademy/provider/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../env.dart';
import '../../icons/coban_icons.dart';
import '../../theme/colors.dart';
import '../chat_page.dart';
import '../explore/explore_page.dart';
import '../my_courses/my_courses_page.dart';

class NavigationBarWidget extends StatelessWidget {
  final String email;
  NavigationBarWidget({super.key, required this.email});
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.explore_outlined),
        title: Environment.homePageTitles[0],
        activeColorPrimary: AppColor.white,
        inactiveColorPrimary: AppColor.purpleGray,
      ),
      PersistentBottomNavBarItem(
          icon: const Icon(Icons.video_collection_outlined),
          title: Environment.homePageTitles[1],
          activeColorPrimary: AppColor.white,
          inactiveColorPrimary: AppColor.purpleGray),
      PersistentBottomNavBarItem(
          icon: const Icon(CobanIcons.chatBotIcon),
          title: Environment.homePageTitles[2],
          activeColorPrimary: AppColor.white,
          inactiveColorPrimary: AppColor.purpleGray),

    ];
  }

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    List<Widget> _buildScreens() {
    return [
      ExplorePage(email: email, contexto: context),
      MyCoursesPage(email: email, contexto: context),
      const ChatPage(),
    ];
  }
    bool hide() {
      bool respuesta = false;
      try {
        respuesta = Provider.of<DataProvider>(context, listen: false)
            .controller
            .isFullScreen;
        return respuesta;
      } catch (e) {
        return false;
      }
    }

    return PersistentTabView(context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(), onItemSelected: (index) {

      if (index != 0) {

        Provider.of<DataProvider>(context, listen: false).controller.pause();

      }
    },
        hideNavigationBar: hide(),
        backgroundColor: AppColor.persistentTabView,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(0.0),
          colorBehindNavBar: AppColor.primaryDarkPurple,
        ),
        popAllScreensOnTapOfSelectedTab: false,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.decelerate,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.decelerate,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style6);
  }
}
