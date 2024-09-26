import 'package:cobanacademy/pages/explore/horizontal_scroll_widget.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../env.dart';
import '../../graphql/graphql_config.dart';
import '../../graphql/model/database.dart';
import '../../graphql/model/objetos.dart';
import '../../graphql/query_collections.dart';
import '../../theme/colors.dart';
import '../../widgets/fail_connection.dart';
import '../../widgets/loading.dart';

class FeedPrincipalWidget extends StatelessWidget {
  final String email;

  const FeedPrincipalWidget({super.key, required this.email});


  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: GraphQLProvider(
          client: GraphQLConfiguration.clientToQuery(),
          child: Query(
              options: QueryOptions(
                  document: gql(QueryCollections().getInterests(email))),
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
                        const FailConnection(
                            descriptions: "No se pudo conectar al servidor")
                      ],
                    ),
                    onRefresh: () async {
                      refetch!();
                    },
                  );
                }

                if (result.isLoading) {
                  return SizedBox(
                    height: 100.h,
                    width: 100.w,
                    child: const Loading(),
                  );
                }
                User resultado = DataBase().getUser(result);

                List<String> queries = [
                  QueryCollections().getCourseByInterests(resultado.intereses),
                  QueryCollections().getCourseByPopularity,
                  QueryCollections().getCourseByCreated
                ];

                return RefreshIndicator(
                    color: AppColor.white,
                    backgroundColor: AppColor.primaryDarkPurple,
                    onRefresh: () async {
                      refetch!();
                    },
                    child: ListView.builder(
                      padding: EdgeInsets.only(bottom:  5.h),
                      itemCount: queries.length,
                      itemBuilder: (context, verticalIndex) {
                        return Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.symmetric(
                                  vertical: 2.h, horizontal: 4.w),
                              child: Text(
                                Environment.exploreCategories[verticalIndex],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                            HorizontalScrollWidget(
                                query: queries[verticalIndex], email: email,),
                          ],
                        );
                      },
                    ));
              })),
    );
  }
}
