import 'package:cobanacademy/graphql/graphql_config.dart';
import 'package:cobanacademy/graphql/model/database.dart';
import 'package:cobanacademy/graphql/model/objetos.dart';
import 'package:cobanacademy/graphql/mutation_collections.dart';
import 'package:cobanacademy/graphql/query_collections.dart';
import 'package:cobanacademy/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ObjectivesWidget extends StatelessWidget {
  final String email;
  final Course curse;

  const ObjectivesWidget({
    super.key,
    required this.curse,required this.email
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(right: 2.w),
                child: Text(
                  curse.nombre.toUpperCase(),
                  style: const TextStyle(
                      color: AppColor.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                ),
              )),
              GraphQLProvider(
                  client: GraphQLConfiguration.clientToQuery(),
                  child: Query(
                      options: QueryOptions(
                          document: gql(QueryCollections()
                              .getVideoSaved(email, curse.id))),
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
                          return ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 4.w),
                                  backgroundColor: AppColor.primaryPurple,
                                  foregroundColor: AppColor.white,
                                  disabledBackgroundColor:
                                      AppColor.purpleBlue800,
                                  disabledForegroundColor: AppColor.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24))),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Row(
                                    children: [
                                      const Text(
                                        "Guardar",
                                        style: TextStyle(
                                            color: AppColor.transparent,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        width: 1.w,
                                      ),
                                      const Icon(
                                        Icons.bookmark,
                                        color: AppColor.transparent,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: CircularProgressIndicator(
                                      color: AppColor.primaryPurple,
                                      backgroundColor: Colors.white,
                                      strokeWidth: 2,
                                    ),
                                  )
                                ],
                              ));
                        }
                        VideoSaved resultado = DataBase().getVideoSaved(result);

                        return GraphQLProvider(
                          client: GraphQLConfiguration.clientToQuery(),
                          child: Mutation(
                            options: MutationOptions(
                              document:
                                  gql(MutationCollections().setSaveCourse(resultado.estado)),
                              onCompleted: (dynamic resultData) {

                                refetch!();

                              },
                            ),
                            builder:
                                (runMutation, QueryResult<Object?>? result) {
                              return ElevatedButton(
                                onPressed: () {
                                  if(resultado.estado){
                                    runMutation(
                                        {
                                          "id_usuario":resultado.idUsuario,
                                          "id_curso":curse.id,
                                          "publishAt": "2024-03-22T17:00:00.000Z"
                                        }
                                    );
                                  }else{
                                    runMutation(
                                        {
                                          "id":resultado.id
                                        }
                                    );
                                  }

                                },
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.w),
                                    backgroundColor: AppColor.primaryPurple,
                                    foregroundColor: AppColor.white,
                                    disabledBackgroundColor:
                                        AppColor.purpleBlue800,
                                    disabledForegroundColor: AppColor.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(24))),
                                child: Row(
                                  children: [
                                    Text(
                                      resultado.estado ? "Guardar" : "Guardado",
                                      style: const TextStyle(
                                          color: AppColor.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      width: 1.w,
                                    ),
                                    Icon(
                                      resultado.estado
                                          ? Icons.bookmark_border
                                          : Icons.bookmark,
                                      color: AppColor.white,
                                    )
                                  ],
                                ),
                              );
                            },
                          ),
                        );
                      })),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Objetivo del curso",
                style: TextStyle(
                    color: AppColor.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                curse.objetivo,
                style: const TextStyle(
                    color: AppColor.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              SizedBox(
                height: 6.h,
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Acerca del nuestros autores",
                style: TextStyle(
                    color: AppColor.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 16),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                curse.acerca,
                style: const TextStyle(
                    color: AppColor.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
              SizedBox(
                height: 6.h,
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
        ],
      ),
    );
  }
}
