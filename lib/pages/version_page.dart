import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import '../env.dart';
import '../shapes/version_illustration.dart';
import '../theme/colors.dart';

class VersionPage extends StatelessWidget {
  const VersionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6D43E7),
      body: Container(
        padding: EdgeInsets.only(bottom: 4.h, right: 8.w, left: 8.w),
        height: 100.h,
        width: 100.w,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColor.primaryDarkPurple.withOpacity(0.5),
                AppColor.purpleBlueGradient,
              ],
              stops: const [
                0.0,
                0.9
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            VersionIllustration(width: 70.w),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Text(
                Environment.versionPageTitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Text(
                textAlign: TextAlign.center,
                Environment.versionPageSubTitle,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: AppColor.buttonPurple,
                  shadowColor: AppColor.buttonPurple,
                  foregroundColor: AppColor.buttonPurple,
                  side: const BorderSide(
                    color: AppColor.buttonPurple,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24))),
              onPressed: () async {
                Uri url = Uri.parse(Environment.version.link);
                launchUrl(
                  url,
                  mode: LaunchMode.externalNonBrowserApplication,
                );
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h),
                child: Center(
                    child: Text(
                  Environment.versionPageButton,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
