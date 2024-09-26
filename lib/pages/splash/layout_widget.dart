import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../env.dart';
import '../../graphql/model/objetos.dart';
import '../../shapes/banner_shape.dart';
import '../../shapes/logo_shape.dart';
import '../../theme/colors.dart';

class LayoutWidget extends StatelessWidget {
  final Version versionLocal;

  const LayoutWidget({required this.versionLocal, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      width: 100.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          LogoShape(
            width: 25.w,
            color: AppColor.white,
          ),
          SizedBox(
            height: 3.h,
          ),
          BannerShape(
            width: 40.w,
            color: AppColor.white,
          ),
          SizedBox(
            height: 6.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child:  RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'Videos que ',
                style: TextStyle(
                    color: AppColor.white, fontWeight: FontWeight.w400, fontSize: 35),
                children: [
                  TextSpan(
                    text: 'mueven',
                    style: TextStyle(
                        color: AppColor.white, fontWeight: FontWeight.w800, fontSize: 35),
                  ),
                  TextSpan(
                    text: ' conocimientos\nque ',
                    style: TextStyle(
                        color: AppColor.white, fontWeight: FontWeight.w400, fontSize: 35),
                  ),
                  TextSpan(
                    text: 'empoderan',
                    style: TextStyle(
                        color: AppColor.white, fontWeight: FontWeight.w800, fontSize: 35),
                  ),
                ],
              ),
            ),


          ),
          SizedBox(
            height: 25.h,
          ),
          Text(
            "versión ${versionLocal.version}",
            style: const TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 2.h,
          ),
        ],
      ),
    );
  }
}
