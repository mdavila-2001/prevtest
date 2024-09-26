import 'dart:io';

import 'package:cobanacademy/pages/splash/splash_page.dart';
import 'package:cobanacademy/shapes/back_button_shape.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import '../env.dart';
import '../theme/colors.dart';

class ProfilePage extends StatefulWidget {
  BuildContext contexto;
  ProfilePage({super.key, required this.contexto});
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

class _ProfilePageState extends State<ProfilePage> {
  bool premium = true;
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
    return Scaffold(
        backgroundColor: AppColor.primaryDarkPurple,
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 6.h),
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  SizedBox(
                    width: 2.9.w,
                  ),
                  const BackButtonShape(
                    width: 38,
                  ),
                  SizedBox(
                    width: 2.5.w,
                  ),
                  const Text(
                    'Mi Perfil',
                    style: TextStyle(
                        color: AppColor.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(left: 4.w, right: 4.w, top: 6.h, bottom: 6.h),
              padding: EdgeInsets.only(
                  left: 5.w, right: 5.w, top: 4.h, bottom: 0.8.h),
              decoration: BoxDecoration(
                  color: AppColor.purpleBlue800,
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 4.w,
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.purpleBlue100,
                            border:
                                Border.all(color: AppColor.white, width: 1)),
                        child: const CircleAvatar(
                          backgroundColor: AppColor.purpleBlue800,
                          child: Icon(
                            Icons.person,
                            size: 40,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      const Column(
                        children: [
                          Text(
                            "Invitado",
                            style: TextStyle(
                                color: AppColor.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                          Text(
                            "widget.email",
                            style: TextStyle(
                                color: AppColor.purpleBlue100,
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  _ProfileOption(
                    icon: FontAwesome5.wallet,
                    title: 'Mi suscripción',
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          if (!premium) {
                            return Dialog(
                              backgroundColor: AppColor.white,
                              surfaceTintColor: AppColor.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.topCenter,
                                children: <Widget>[
                                  SizedBox(
                                    height: 60.h,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          1.w, 6.h, 1.w, 2.h),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(height: 1.5.h),
                                          SvgPicture.asset(
                                            'assets/images/qr_demo.svg', // Ruta al archivo SVG del código QR
                                            placeholderBuilder: (BuildContext
                                                    context) =>
                                                Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            30.0),
                                                    child:
                                                        const CircularProgressIndicator()),
                                          ),
                                          const Text(
                                            '¡Hazte premium!',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          SizedBox(height: 2.h),
                                          const Text(
                                            'Genera tu código QR para obtener tu membresía',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              //fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                          SizedBox(height: 2.h),
                                          SizedBox(
                                            height: 7.h,
                                            width: 65.w,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                foregroundColor: AppColor.white,
                                                backgroundColor:
                                                    AppColor.primaryPurple,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 30,
                                                  vertical: 15,
                                                ),
                                              ),
                                              onPressed: () {
                                                // Lógica para generar el QR
                                                setState(() {
                                                  Navigator.pop(context);
                                                  premium = !premium;
                                                });
                                              },
                                              child: const Text(
                                                'Generar QR',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          } else {
                            return Dialog(
                              backgroundColor: AppColor.white,
                              surfaceTintColor: AppColor.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.topCenter,
                                children: <Widget>[
                                  SizedBox(
                                    height: 65.h,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          1.w, 2.h, 1.w, 1.h),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(height: 1.5.h),
                                          SvgPicture.asset(
                                            'assets/images/congratulations.svg', // Ruta al archivo SVG del código QR
                                            placeholderBuilder: (BuildContext
                                                    context) =>
                                                Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            30.0),
                                                    child:
                                                        const CircularProgressIndicator()),
                                          ),
                                          const Text(
                                            '¡Felicidades!',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          const SizedBox(height: 20),
                                          const Text(
                                            'Ahora perteneces a Coban Academy hasta el 15 de diciembre del 2024',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              //fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          SizedBox(
                                            height: 7.h,
                                            width: 65.w,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                foregroundColor: AppColor.white,
                                                backgroundColor:
                                                    AppColor.primaryPurple,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 30,
                                                  vertical: 15,
                                                ),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  Navigator.pop(context);
                                                  premium = !premium;
                                                });
                                              },
                                              child: const Text(
                                                'Aceptar',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                        },
                      );
                    },
                  ),
                  SizedBox(
                    height: 1.3.h,
                  ),
                  _ProfileOption(
                    icon: Icons.help_outline,
                    title: 'Ayuda',
                    onTap: () {
                      whatsapp('Necesito ayuda con la aplicación', '+59178447689');
                    },
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  _ProfileOption(
                    icon: Icons.more_horiz,
                    title: 'Acerca de',
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              backgroundColor: AppColor.white,
                              surfaceTintColor: AppColor.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.topCenter,
                                children: <Widget>[
                                  SizedBox(
                                    height: 55.h,
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                          1.w, 5.h, 1.w, 1.h),
                                      child: Column(
                                        children: <Widget>[
                                          SizedBox(height: 15),
                                          Image.asset(
                                            'assets/images/app.png',
                                            width: 35.w,
                                          ),
                                          SizedBox(height: 5.h,),
                                          const Text(
                                            'Coban Academy',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                          const SizedBox(height: 20),
                                          const Text(
                                            'Todos los derechos reservados Coban Academy S.R.L.',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              //fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          SizedBox(
                                            height: 7.h,
                                            width: 65.w,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                foregroundColor: AppColor.white,
                                                backgroundColor:
                                                    AppColor.primaryPurple,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  horizontal: 30,
                                                  vertical: 15,
                                                ),
                                              ),
                                              onPressed: () {
                                                // Lógica para generar el QR
                                                setState(() {
                                                  Navigator.pop(context);
                                                });
                                              },
                                              child: const Text(
                                                'Aceptar',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  _ProfileOption(
                    icon: Icons.card_giftcard,
                    title: 'Invitar amigos',
                    onTap: () async {
                      //whatsapp('Necesito ayuda con la aplicación', '+59178447689');
                      await Share.share('Descárgate esta nueva aplicación de COBAN ACADEMY');
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8.h,
              width: 92.w,
              child: ElevatedButton(
                onPressed: () {
                  logout();
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: AppColor.white,
                  backgroundColor: AppColor.primaryPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 3.w,
                    vertical: 1.5.h,
                  ),
                ),
                child: const Text(
                  'Cerrar Sesión',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  void logout() async {
    final SharedPreferences prefs = await _prefs;
    await prefs.remove('email');
    if (!mounted) return;

    Navigator.pushReplacement(
        widget.contexto,
        PageTransition(
            type: PageTransitionType.fade,
            alignment: Alignment.center,
            duration: const Duration(milliseconds: 100),
            child: SplashPage(versionLocal: Environment.version)));
  }
}

class _ProfileOption extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onTap;

  const _ProfileOption({
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Icon(
                icon,
                color: AppColor.purpleBlue100,
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Text(
              title,
              style: const TextStyle(color: AppColor.purpleBlue100),
            ),
            const Spacer(),
            const Icon(
              Icons.chevron_right,
              color: AppColor.purpleBlue100,
            )
          ],
        ),
      ),
    );
  }
}
