import 'package:graphql_flutter/graphql_flutter.dart';
import 'objetos.dart';

class DataBase {
  Version getVersion(QueryResult result) {
    var data = result.data!["version"]["data"];
    late Version resultado = Version(data["attributes"]["version"],
        data["attributes"]["detalle"], data["attributes"]["link"]);
    return resultado;
  }

  VideoSaved getVideoSaved(QueryResult result) {
    List<dynamic> data =
        result.data!["usuarios"]["data"][0]["attributes"]["cursos"]["data"];

    if (data.isEmpty) {
      return VideoSaved("0", result.data!["usuarios"]["data"][0]["id"], true);
    } else {
      return VideoSaved(
          result.data!["usuarios"]["data"][0]["attributes"]["cursos"]["data"][0]
              ["id"],
          result.data!["usuarios"]["data"][0]["id"],
          false);
    }
  }

  User getUser(QueryResult result) {
    List<String> list(var lista) {
      List<String> resultado = [];

      for (var element in lista) {
        resultado.add(element["attributes"]["nombre"]);
      }

      return resultado;
    }

    var data = result.data!["usuarios"]["data"][0];

    late User resultado = User(
      data["id"],
      data["attributes"]["email"],
      list(data["attributes"]["intereses"]["data"]),
    );

    return resultado;
  }

  List<CourseHome> getMyCourses(QueryResult result) {
    List<String> list(var lista) {
      List<String> resultado = [];

      for (var element in lista) {
        resultado.add(element["attributes"]["nombre"]);
      }

      return resultado;
    }

    var data =
        result.data!["usuarios"]["data"][0]["attributes"]["cursos"]["data"];
    List<CourseHome> resultado = [];

    for (var element in data) {
      resultado.add(CourseHome(
        element["attributes"]["curso"]["data"]["id"],
        element["attributes"]["curso"]["data"]["attributes"]["nombre"],
        element["attributes"]["curso"]["data"]["attributes"]["portada"]["data"]
            ["attributes"]["url"],
        list(element["attributes"]["curso"]["data"]["attributes"]["autors"]
            ["data"]),
        list(element["attributes"]["curso"]["data"]["attributes"]["categorias"]
            ["data"]),
        element["attributes"]["curso"]["data"]["attributes"]["videos"]["data"][0]["attributes"]["url"],
      ));
    }
    return resultado;
  }

  List<CourseHome> getCourseHome(QueryResult result) {
    List<String> list(var lista) {
      List<String> resultado = [];

      for (var element in lista) {
        resultado.add(element["attributes"]["nombre"]);
      }

      return resultado;
    }

    var data = result.data!["cursos"]["data"];
    List<CourseHome> resultado = [];

    for (var element in data) {
      resultado.add(
        CourseHome(
          element["id"],
          element["attributes"]["nombre"],
          element["attributes"]["portada"]["data"]["attributes"]["url"],
          list(element["attributes"]["autors"]["data"]),
          list(element["attributes"]["categorias"]["data"]),
          element["attributes"]["videos"]["data"][0]["attributes"]["url"],
        ),
      );
    }
    return resultado;
  }

  Course getCoursePage(QueryResult result) {
    List<String> list(var lista) {
      List<String> resultado = [];

      for (var element in lista) {
        resultado.add(element["attributes"]["nombre"]);
      }

      return resultado;
    }

    List<Video> listVideos(var lista) {
      List<Video> resultado = [];

      for (var element in lista) {
        resultado.add(Video(element["id"], element["attributes"]["titulo"],
            element["attributes"]["duracion"], element["attributes"]["url"]));
      }

      return resultado;
    }

    var testimonial = result.data!["testimonios"]["data"];

    List<Testimonial> testimonios = [];

    for (var element in testimonial) {
      testimonios.add(Testimonial(element["id"],
          element["attributes"]["nombre"], element["attributes"]["video"]));
    }
    testimonios.shuffle();

    var contact = result.data!["contacto"]["data"];

    var data = result.data!["curso"]["data"];

    late Course resultado = Course(
        data["id"],
        data["attributes"]["nombre"],
        data["attributes"]["objetivo"],
        data["attributes"]["acerca"],
        listVideos(data["attributes"]["videos"]["data"]),
        list(data["attributes"]["autors"]["data"]),
        list(data["attributes"]["categorias"]["data"]),
        data["attributes"]["consulta"],
        Contact(
            contact["attributes"]["telefono_soporte"],
            contact["attributes"]["telefono_oferta"],
            contact["attributes"]["telefono_asesoria"]),
        testimonios[0]);

    return resultado;
  }

  List<Product> getProducts(QueryResult result) {
    var data = result.data!["productos"]["data"];
    List<Product> resultado = [];

    for (var element in data) {
      resultado.add(Product(element["id"], element["attributes"]["nombre"],
          element["attributes"]["portada"]["data"]["attributes"]["url"]));
    }
    return resultado;
  }
}
