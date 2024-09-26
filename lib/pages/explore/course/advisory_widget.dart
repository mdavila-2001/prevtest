import 'dart:io';

import 'package:cobanacademy/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class AdvisoryWidget extends StatelessWidget {
  final String contact;

  const AdvisoryWidget({super.key, required this.contact});

  whatsapp(String text, String contact) async {
    String androidUrl = "whatsapp://send?phone=$contact&text=$text";
    String iosUrl = "https://wa.me/$contact?text=${Uri.parse(text)}";

    String webUrl = 'https://api.whatsapp.com/send/?phone=$contact&text=$text';

    try {
      if (Platform.isIOS) {
        await launchUrl(Uri.parse(iosUrl));
      } else {
        await launchUrl(Uri.parse(androidUrl));
      }
    } catch (e) {
      await launchUrl(Uri.parse(webUrl), mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        children: [
          SizedBox(
            height: 1.5.h,
          ),
          SizedBox(
            height: 8.h,
            child: ElevatedButton(
                onPressed: () {
                  whatsapp(
                      "Quiero agendar una Asesoria Personalizada", contact);
                },
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: AppColor.primaryPurple,
                    foregroundColor: AppColor.white,
                    disabledBackgroundColor: AppColor.purpleBlue800,
                    disabledForegroundColor: AppColor.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24))),
                child: const Center(
                    child: Text(
                  'Pedir asesoría',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal),
                ))),
          )
        ],
      ),
    );
  }
}
