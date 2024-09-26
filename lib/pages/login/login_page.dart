import 'dart:io';
import 'package:animate_do/animate_do.dart';
import 'package:cobanacademy/pages/interests_page.dart';
import 'package:cobanacademy/pages/login/social_network_widget.dart';
import 'package:cobanacademy/shapes/banner_shape.dart';
import 'package:cobanacademy/shapes/logo_shape.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../env.dart';
import '../../theme/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FadeIn(
            delay: const Duration(milliseconds: 100),
            child: Column(
              children: [
                Container(
                  height: 50.h,
                  width: 100.w,
                  color: AppColor.primaryPurple,
                ),
                Container(
                  height: 50.h,
                  color: Colors.white,
                  width: 100.w,
                )
              ],
            ),
          ),
          ListView(
            padding: const EdgeInsets.all(0),
            children: [
              Container(
                color: AppColor.white,
                child: Container(
                  padding: const EdgeInsets.only(bottom: 60),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(32),
                    ),
                    color: AppColor.primaryPurple,
                  ),
                  width: 100.w,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 6.h,
                        width: double.infinity,
                      ),
                      const LogoShape(width: 120),
                      const SizedBox(
                        height: 40,
                      ),
                      const BannerShape(width: 190),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: AppColor.white,
                ),
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 24),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(Environment.loginPageTitle,
                            style: const TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                                color: AppColor.foundationPurple)),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(Environment.loginPageSubTitle,
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: AppColor.black3)),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SocialNetworkWidget(
                      label: Environment.loginPageSocialNetworks[0],
                      asset: Environment.loginPageSocialNetworksLogos[0],
                      onPressed: () async {},
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SocialNetworkWidget(
                      label: Environment.loginPageSocialNetworks[1],
                      asset: Environment.loginPageSocialNetworksLogos[1],
                      onPressed: () async {},
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    if (Platform.isIOS) ...[
                      SocialNetworkWidget(
                        label: Environment.loginPageSocialNetworks[2],
                        asset: Environment.loginPageSocialNetworksLogos[2],
                        onPressed: () async {},
                      )
                    ],
                    SizedBox(
                      height: 2.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        oAuthLogin();
                      },
                      child: const Text(
                        "Acceder como invitado",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: AppColor.primaryDarkPurple,
                            fontSize: 16,
                            color: AppColor.primaryDarkPurple),
                      ),
                    ),
                  ]),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void oAuthLogin() async {
    Navigator.pushReplacement(
        context,
        PageTransition(
            type: PageTransitionType.fade,
            alignment: Alignment.center,
            duration: const Duration(milliseconds: 100),
            child: const InterestsPage(
              email: 'cuellarrojasuwil@gmail.com',
            )));
  }
}
