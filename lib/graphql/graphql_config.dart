
import "package:flutter/material.dart";
import "package:graphql_flutter/graphql_flutter.dart";

class GraphQLConfiguration {

  static const String _host = 'api.cobanacademy.com';

  static String getHost() {
    return "https://$_host";
  }


  static String getBearer() {
    return 'Bearer 04efee34203aa03e0ba285b294b37cae78229fbd0c5cd52f566866ff2142048b502d74014a6b77208ca8988aa4dea70aaa4cf803434036df06b217973118fdd631b9d778abc64b52768560ebc7765bd55dc5f7271bbea6ca61eea023791e6a2f5b560587e4f34cac3fc181f4814c243bbd858fddb68584c08ae005a1ddb2b9a6';
  }

  static HttpLink httpLink = HttpLink(
    "https://$_host/graphql",
  );

  static AuthLink authLink = AuthLink(
    getToken: () async =>
        'Bearer 04efee34203aa03e0ba285b294b37cae78229fbd0c5cd52f566866ff2142048b502d74014a6b77208ca8988aa4dea70aaa4cf803434036df06b217973118fdd631b9d778abc64b52768560ebc7765bd55dc5f7271bbea6ca61eea023791e6a2f5b560587e4f34cac3fc181f4814c243bbd858fddb68584c08ae005a1ddb2b9a6',
  );



  static Link link = authLink.concat(httpLink);

  static ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      cache: GraphQLCache(),
      link: link,
    ),
  );

  static ValueNotifier<GraphQLClient> clientToQuery() {
    return client;
  }
}
