class MutationCollections {
  String setUpdateReferido = """
mutation(\$id_usuario: ID!, \$intereses: [ID!]) {
  updateUsuario(id: \$id_usuario, data: { intereses: \$intereses }) {
    data {
      id
    }
  }
}

  """;

  String setSaveCourse(bool bandera) {

    if(bandera){
      return """
mutation(\$id_usuario: ID!, \$id_curso: ID!, \$publishAt: DateTime) {
  createCursoEstado(
    data: { curso: \$id_curso, usuario: \$id_usuario, publishedAt: \$publishAt }
  ) {
    data {
      id
    }
  }
}
  """;
    }
    else{

      return """
      
      mutation(\$id: ID!) {
  deleteCursoEstado(id: \$id) {
    data {
      id
    }
  }
}

      
      
      """;

    }



  }
}
