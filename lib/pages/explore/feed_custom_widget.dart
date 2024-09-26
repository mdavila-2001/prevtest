import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../env.dart';
import '../../graphql/graphql_config.dart';
import '../../graphql/model/database.dart';
import '../../graphql/model/objetos.dart';
import '../../graphql/query_collections.dart';
import '../../provider/data_provider.dart';
import '../../theme/colors.dart';
import '../../widgets/fail_connection.dart';
import '../../widgets/loading.dart';
import 'course/course_card_widget.dart';

class FeedCustomWidget extends StatelessWidget {
  final String email;
  const FeedCustomWidget({super.key,required this.email});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    return Expanded(
      child: GraphQLProvider(
          client: GraphQLConfiguration.clientToQuery(),
          child: Query(
              options: QueryOptions(
                  document: gql(QueryCollections().getCoursesByCategory(
                      Environment.exploreFilters[dataProvider.categorySelector]
                          .toLowerCase()))),
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




                List<CourseHome> resultadosFiltrar = DataBase().getCourseHome(result);

                List<CourseHome> resultados =[];




                String removerDiacriticos(String str) {
                  var conDiacriticos = 'ÁáÉéÍíÓóÚúÑñÜü';
                  var sinDiacriticos = 'AaEeIiOoUuNnUu';
                  for (int i = 0; i < conDiacriticos.length; i++) {
                    str = str.replaceAll(conDiacriticos[i], sinDiacriticos[i]);
                  }
                  return str;
                }

                bool compararCadenas(String cadena1, String cadena2) {

                  var cadena1Normalizada = removerDiacriticos(cadena1).toLowerCase();
                  var cadena2Normalizada = removerDiacriticos(cadena2).toLowerCase();


                  return cadena1Normalizada.contains(cadena2Normalizada) ;
                }





                for (var element in resultadosFiltrar) {

                  if(compararCadenas(element.nombre,dataProvider.search)){
                    resultados.add(element);
                  }

                }








                return RefreshIndicator(
                    color: AppColor.white,
                    backgroundColor: AppColor.primaryDarkPurple,
                    onRefresh: () async {
                      refetch!();
                    },
                    child: ListView.builder(
                      padding: EdgeInsets.only(
                          bottom: 5.h),
                      itemCount: resultados.length,
                      itemBuilder: (context, verticalIndex) {
                        return AspectRatio(
                          aspectRatio: 1.703125,
                          child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 3.w, vertical: 1.5.h),
                              child: CourseCardWidget(
                                  course: resultados[verticalIndex],email: email,)),
                        );
                      },
                    ));
              })),
    );
  }
}
