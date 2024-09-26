import 'package:cobanacademy/graphql/graphql_config.dart';
import 'package:cobanacademy/graphql/model/database.dart';
import 'package:cobanacademy/graphql/model/objetos.dart';
import 'package:cobanacademy/graphql/query_collections.dart';
import 'package:cobanacademy/pages/my_courses/my_course_card_widget.dart';
import 'package:cobanacademy/provider/data_provider.dart';
import 'package:cobanacademy/theme/colors.dart';
import 'package:cobanacademy/widgets/fail_connection.dart';
import 'package:cobanacademy/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyCoursesWidget extends StatelessWidget {
  final String email;

  const MyCoursesWidget({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    return Expanded(
      child: GraphQLProvider(
          client: GraphQLConfiguration.clientToQuery(),
          child: Query(
              options: QueryOptions(
                  document: gql(QueryCollections().getMyCourses(email))),
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

                List<CourseHome> resultadosFiltrar = DataBase().getMyCourses(result);

                List<CourseHome> resultados =[];

                String removerDiacriticos (String str) {
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

                  if(compararCadenas(element.nombre,dataProvider.searchMyCourses)){
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
                      padding: EdgeInsets.only(bottom: 5.h),
                      itemCount: resultados.length,
                      itemBuilder: (context, verticalIndex) {
                        return MyCourseCardWidget(
                          course: resultados[verticalIndex],
                          email: email,
                        );
                      },
                    ));
              })),
    );
  }
}
