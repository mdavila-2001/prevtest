import 'package:cobanacademy/graphql/graphql_config.dart';
import 'package:cobanacademy/graphql/model/database.dart';
import 'package:cobanacademy/graphql/model/objetos.dart';
import 'package:cobanacademy/provider/data_provider.dart';
import 'package:cobanacademy/theme/colors.dart';
import 'package:cobanacademy/widgets/fail_connection.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'course/course_card_widget.dart';

class HorizontalScrollWidget extends StatelessWidget {
  final String email;
  final String query;

  const HorizontalScrollWidget({super.key, required this.query,required this.email});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    return GraphQLProvider(
        client: GraphQLConfiguration.clientToQuery(),
        child: Query(
            options: QueryOptions(document: gql(query)),
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
                  child: AspectRatio(
                    aspectRatio: 350/150,
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      scrollDirection: Axis.horizontal,
                      itemCount: resultados.length,
                      itemBuilder: (context, horizontalIndex) {
                        return CourseCardWidget(
                            course: resultados[horizontalIndex], email:email ,);
                      },
                    ),
                  ));
            }));
  }
}
