class QueryCollections {

  String getMyCourses(String email) {
    return """
query {
  usuarios(filters: { email: { eq: "$email" } }) {
    data {
      attributes {
       cursos(sort: "createdAt:desc"){
          data {
            id
            attributes {
              curso {
                data {
                  id
                  attributes {
                    nombre
                    portada {
                      data {
                        attributes {
                          url
                        }
                      }
                    }
                    autors {
                      data {
                        attributes {
                          nombre
                        }
                      }
                    }
                    categorias {
                      data {
                        attributes {
                          nombre
                        }
                      }
                    }
                            videos(filters: { orden: { eq: 1 } }) {
          data {
            attributes {
              url
            }
          }
        }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

  """;
  }

  String getVideoSaved(String email,String id) {
    return """
query {
  usuarios(filters: { email: { eq: "$email" } }) {
    data {
      id
      attributes {
        cursos(filters: { curso: { id: { eq: "$id" } } }) {
          data {
            id
            attributes {
              estado
            }
          }
        }
      }
    }
  }
}
  """;
  }


  String getContacto = """
query{
  contacto{
    data{
      attributes{
        email_soporte
        telefono_soporte
      }
    }
  }
}
  """;

  String getVersion = """
query{
  version{
    data{
      attributes{
        version
        detalle
        link
      }
    }
  }
}
  """;

  String getCourseByInterests(List<String> interest) {
    String body = '[';
    for (var element in interest) {
      body = '$body "$element" ,';
    }
    body = "$body ]";

    return """
query {
  cursos(
    filters: {
      categorias: { nombre: { in: $body } }
    }
  ) {
    data {
      id
      attributes {
        nombre
        portada {
          data {
            attributes {
              url
            }
          }
        }
        autors {
          data {
            attributes {
              nombre
            }
          }
        }
        categorias {
          data {
            attributes {
              nombre
            }
          }
        }
                videos(filters: { orden: { eq: 1 } }) {
          data {
            attributes {
              url
            }
          }
        }
      }
    }
  }
}
  """;
  }

  String getCourseByPopularity = """
query {
  cursos(sort: "popular") {
    data {
      id
      attributes {
        nombre
        portada {
          data {
            attributes {
              url
            }
          }
        }
        autors {
          data {
            attributes {
              nombre
            }
          }
        }
        categorias {
          data {
            attributes {
              nombre
            }
          }
        }
                videos(filters: { orden: { eq: 1 } }) {
          data {
            attributes {
              url
            }
          }
        }
      }
    }
  }
}

  """;

  String getCourseByCreated = """
query {
  cursos(sort: "createdAt:desc") {
    data {
      id
      attributes {
        nombre
        portada {
          data {
            attributes {
              url
            }
          }
        }
        autors {
          data {
            attributes {
              nombre
            }
          }
        }
        categorias {
          data {
            attributes {
              nombre
            }
          }
        }
                videos(filters: { orden: { eq: 1 } }) {
          data {
            attributes {
              url
            }
          }
        }
      }
    }
  }
}
  """;

  String getInterests(String email) {
    return """
query{
  usuarios(filters:{email:{eq:"$email"}}){
    data{
      id
      attributes{
        email
        intereses{
          data{
            attributes{
              nombre
            }
          }
        }
      }
    }
  }
}
  """;
  }

  String getCoursesByCategory(String category) {
    return """
query {
  cursos (filters:{categorias:{nombre:{eq:"$category"}}}){
    data {
      id
      attributes {
        nombre
        portada {
          data {
            attributes {
              url
            }
          }
        }
        autors {
          data {
            attributes {
              nombre
            }
          }
        }
        categorias {
          data {
            attributes {
              nombre
            }
          }
        }
                videos(filters: { orden: { eq: 1 } }) {
          data {
            attributes {
              url
            }
          }
        }
      }
    }
  }
}
  """;
  }



  String getCoursePage(String id,List<String> categories) {

    String body = '[';
    for (var element in categories) {
      body = '$body "$element" ,';
    }
    body = "$body ]";




    return """
query {
  curso(id: "$id") {
     data {
      id
      attributes {
        nombre
        objetivo
        acerca
        videos(sort: "orden:asc") {
          data {
            id
            attributes {
              titulo
              duracion
              url
            }
          }
        }
        autors {
          data {
            attributes {
              nombre
            }
          }
        }
        categorias {
          data {
            attributes {
              nombre
            }
          }
        }
        consulta
      }
    }
  }
  contacto {
    data {
      attributes {
        telefono_soporte
        telefono_oferta
        telefono_asesoria
      }
    }
  }
    testimonios(
    filters: { categorias: { nombre: { in: $body } } }
    sort: "orden:asc"
  ) {
    data {
      id
      attributes {
        nombre
        video
      }
    }
  }
}
  """;
  }

  String getProductByCategories(List<String> categories) {
    String body = '[';
    for (var element in categories) {
      body = '$body "$element" ,';
    }
    body = "$body ]";

    return """
query {
  productos(
    filters: { categorias: { nombre: { in: $body } } }
    sort: "orden:asc"
  ) {
    data {
      id
      attributes {
        nombre
        portada {
          data {
            attributes {
              url
            }
          }
        }
      }
    }
  }
}
  """;
  }



}
