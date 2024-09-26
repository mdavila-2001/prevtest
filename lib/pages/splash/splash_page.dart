import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:cobanacademy/env.dart';
import 'package:cobanacademy/pages/home/home_page.dart';
import 'package:cobanacademy/pages/maintenance_page.dart';
import 'package:cobanacademy/pages/splash/layout_widget.dart';
import 'package:cobanacademy/pages/version_page.dart';
import 'package:cobanacademy/shapes/banner_shape.dart';
import 'package:cobanacademy/shapes/logo_shape.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../graphql/graphql_config.dart';
import '../../graphql/model/database.dart';
import '../../graphql/model/objetos.dart';
import '../../graphql/query_collections.dart';
import '../../theme/colors.dart';
import '../../widgets/fail_connection.dart';
import '../on_boarding/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  final Version versionLocal;

  const SplashPage({required this.versionLocal, super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<String> _email;

  bool isLoading = true;

  @override
  void initState() {
    _email = _prefs.then((SharedPreferences prefs) {
      return prefs.getString('email') ?? "null";
    });

    Timer(const Duration(milliseconds: 2000), () {
      setState(() {
        isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.primaryPurple,
        body: isLoading
            ? SizedBox(
                height: 100.h,
                width: 100.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FadeInRight(
                        duration: const Duration(milliseconds: 400),
                        delay: const Duration(seconds: 1),
                        child: LogoShape(
                          width: 25.w,
                          color: AppColor.white,
                        )),
                    SizedBox(
                      height: 3.h,
                    ),
                    FadeInLeft(
                        duration: const Duration(milliseconds: 400),
                        delay: const Duration(seconds: 1),
                        child: BannerShape(
                          width: 40.w,
                          color: AppColor.white,
                        )),
                    SizedBox(
                      height: 6.h,
                    ),
                    FadeInRight(
                      duration: const Duration(milliseconds: 400),
                      delay: const Duration(seconds: 1),
                      child: Padding(
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
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    FadeInUp(
                      child: Text(
                        "versión ${widget.versionLocal.version}",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                  ],
                ),
              )
            : SizedBox(
                height: 100.h,
                width: 100.w,
                child: GraphQLProvider(
                    client: GraphQLConfiguration.clientToQuery(),
                    child: Query(
                        options: QueryOptions(
                            document: gql(QueryCollections().getVersion)),
                        builder: (QueryResult result, {refetch, fetchMore}) {
                          if (result.hasException) {
                            return RefreshIndicator(
                              color: AppColor.white,
                              backgroundColor: AppColor.primaryDarkPurple,
                              child: ListView(
                                children: [
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  const FailConnection(
                                      descriptions:
                                          "No se pudo conectar al servidor")
                                ],
                              ),
                              onRefresh: () async {
                                refetch!();
                              },
                            );
                          }
                          if (result.isLoading) {
                            return LayoutWidget(
                                versionLocal: widget.versionLocal);
                          }
                          Version versionServer = DataBase().getVersion(result);

                          if (versionServer.version == "mantenimiento") {
                            return const MaintenancePage();
                          } else if (widget.versionLocal.version ==
                              versionServer.version) {
                            return FutureBuilder<String>(
                              future: _email,
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  if (snapshot.data == "null") {
                                    return const OnBoardingPage();
                                  } else {
                                    return HomePage(email: snapshot.data!);
                                  }
                                } else {
                                  return LayoutWidget(
                                      versionLocal: widget.versionLocal);
                                }
                              },
                            );
                          } else {
                            return const VersionPage();
                          }
                        }))));
  }
}
