import 'dart:io';
import 'package:cobanacademy/provider/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../theme/colors.dart';
import 'navigation_bar_widget.dart';

class HomePage extends StatefulWidget {
  final String email;

  const HomePage({super.key, required this.email});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => DataProvider()),
        ],
        child: PopScope(
          canPop: false,
          onPopInvoked: (valor) {
            showDialog(
              context: context,
              barrierColor: AppColor.primaryDarkPurple.withOpacity(0.8),
              builder: (BuildContext context) {
                return AlertDialog(
                    backgroundColor: AppColor.white,
                    surfaceTintColor: AppColor.white,
                    content: SizedBox(
                      height: 25.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text('Abandonar la App',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700)),
                          ),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: const Text(
                                '¿Estás seguro de que quieres cerrar la APP?',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 14,
                                )),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              exit(0);
                            },
                            style: ElevatedButton.styleFrom(
                              surfaceTintColor: AppColor.white,
                              foregroundColor: AppColor.white,
                              backgroundColor: AppColor.primaryPurple,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 3.h, vertical: 2.h),
                            ),
                            child: const Text(
                              'Cerrar Sesión',
                              style: TextStyle(color: AppColor.white),
                            ),
                          ),
                        ],
                      ),
                    ));
              },
            );
          },
          child: NavigationBarWidget(
            email: widget.email,
          ),
        ));
  }
}
