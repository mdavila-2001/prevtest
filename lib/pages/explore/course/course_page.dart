import 'package:cobanacademy/graphql/graphql_config.dart';
import 'package:cobanacademy/graphql/model/database.dart';
import 'package:cobanacademy/graphql/model/objetos.dart';
import 'package:cobanacademy/graphql/query_collections.dart';
import 'package:cobanacademy/pages/explore/course/course_body_widget.dart';
import 'package:cobanacademy/provider/data_provider.dart';
import 'package:cobanacademy/theme/colors.dart';
import 'package:cobanacademy/widgets/fail_connection.dart';
import 'package:cobanacademy/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CoursePage extends StatefulWidget {
final String email;
final List<String> categorias;

  const CoursePage({
    super.key,
    required this.email,
    required this.categorias

  });

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);

    return SafeArea(child: GraphQLProvider(
        client: GraphQLConfiguration.clientToQuery(),
        child: Query(
            options: QueryOptions(
                document: gql(
                    QueryCollections().getCoursePage(dataProvider.idCourse,widget.categorias))),
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
                return Container(
                  color: AppColor.primaryDarkPurple,
                  height: 100.h,
                  width: 100.w,
                  child: const Loading(),
                );
              }
              Course resultado = DataBase().getCoursePage(result);



              return CourseBodyWidget(
                course: resultado,
                email: widget.email,

              );
            })));
  }
}
