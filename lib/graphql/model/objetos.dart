class Version {
  Version(
    this.version,
    this.detalle,
    this.link,
  );

  final String version;
  final String detalle;
  final String link;
}

class VideoSaved {
  VideoSaved(
    this.id,
    this.idUsuario,
    this.estado,
  );

  final String id;
  final String idUsuario;

  final bool estado;
}

class Contact {
  Contact(this.soporte, this.oferta, this.asesoria);

  final String soporte;
  final String oferta;
  final String asesoria;
}

class User {
  User(
    this.id,
    this.email,
    this.intereses,
  );

  final String id;
  final String email;
  final List<String> intereses;
}

class CourseHome {
  CourseHome(this.id, this.nombre, this.portada, this.autores, this.categorias,this.introduccion);

  String id;
  String nombre;
  String portada;
  List<String> autores;
  List<String> categorias;
  String introduccion;
}

class Course {
  Course(this.id, this.nombre, this.objetivo, this.acerca, this.videos,
      this.autores, this.categorias, this.consulta,this.contacto,this.testimonio);

  String id;
  String nombre;
  String objetivo;
  String acerca;
  List<String> autores;
  List<Video> videos;
  List<String> categorias;
  String consulta;
  Contact contacto;
  Testimonial testimonio;
}

class Video {
  Video(this.id, this.titulo, this.duracion, this.url);

  String id;
  String titulo;
  String duracion;
  String url;
}

class Product {
  Product(this.id, this.nombre, this.url);

  String id;
  String nombre;
  String url;
}

class Testimonial {
  Testimonial(this.id, this.nombre, this.video);

  String id;
  String nombre;
  String video;
}
