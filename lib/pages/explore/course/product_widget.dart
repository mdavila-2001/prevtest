import 'dart:io';
import 'package:cobanacademy/graphql/graphql_config.dart';
import 'package:cobanacademy/graphql/model/database.dart';
import 'package:cobanacademy/graphql/model/objetos.dart';
import 'package:cobanacademy/graphql/query_collections.dart';
import 'package:cobanacademy/theme/colors.dart';
import 'package:cobanacademy/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductWidget extends StatelessWidget {
  final List<String> categories;
  final String contact;

  const ProductWidget({super.key, required this.categories,required this.contact});

  whatsapp(String texto, String contact) async {

    String text = 'Quiero mas Informacion sobre $texto';
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
      onTap: (){},
      child: GraphQLProvider(
          client: GraphQLConfiguration.clientToQuery(),
          child: Query(
              options: QueryOptions(
                  document:
                  gql(QueryCollections().getProductByCategories(categories))),
              builder: (QueryResult result, {refetch, fetchMore}) {
                if (result.hasException) {
                  Future.delayed(const Duration(milliseconds: 500), () {
                    refetch!();
                  });

                  return RefreshIndicator(
                    color: AppColor.white,
                    backgroundColor: AppColor.primaryDarkPurple,
                    child: ListView(
                      children: [
                        SizedBox(
                          height: 20.h,
                        ),
                      ],
                    ),
                    onRefresh: () async {
                      refetch!();
                    },
                  );
                }

                if (result.isLoading) {
                  return Container(
                    color: AppColor.primaryDarkPurple,
                    height: 100.h,
                    width: 100.w,
                    child: const Loading(),
                  );
                }
                List<Product> resultado = DataBase().getProducts(result);

                return RefreshIndicator(
                  color: AppColor.white,
                  backgroundColor: AppColor.primaryDarkPurple,
                  child: SingleChildScrollView(
                    child: Column(

                      children: [
                        Container(
                          width: 100.w,
                          padding: EdgeInsets.symmetric(vertical: 2.h,horizontal: 5.w),
                          child: Text(
                            "Contenido que te puede interesar",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: AppColor.purpleBlue100.withOpacity(0.5)),
                          ),
                        ),
                        GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            padding:  EdgeInsets.symmetric(horizontal: 5.w),
                            gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10.0,
                              mainAxisSpacing: 10.0,
                              childAspectRatio: 1.0,
                            ),
                            itemCount: resultado.length,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                onTap: () {
                                  whatsapp(resultado[index].nombre,contact);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    gradient: const LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [
                                        AppColor.primaryPurple,
                                        AppColor.primaryDarkPurple,
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          GraphQLConfiguration.getHost() +
                                              resultado[index].url),
                                    ),
                                  ),
                                ),
                              );
                            }),
                        SizedBox(
                          height: 10.h,
                        )
                      ],
                    ),
                  ),
                  onRefresh: () async {
                    refetch!();
                  },
                );
              })),
    );
  }
}
