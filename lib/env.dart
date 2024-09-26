import 'graphql/model/objetos.dart';

class Environment {

  static String splashPageTitle = "Videos que mueven, conocimientos\nque empoderan.";

  static Version version = Version("0.2", "Lanzamiento de la APP",
      "https://play.google.com/store/apps/details?id=com.whatsapp&pcampaignid=web_share");

  static String versionPageButton = "Actualizar";

  static String versionPageTitle = "Coban Academy necesita una actualización.";

  static String versionPageSubTitle =
      "Para seguir utilizando la app, descarga la última versión.";

  static String maintenancePageButton = "Abandonar";

  static String maintenancePageTitle = "Nos encontramos en mantenimiento.";

  static String maintenancePageSubTitle =
      "En este momento estamos trabajando para mejorar, puedes volver más tarde.";

  static String loginPageTitle = "¡Bienvenido!";

  static String loginPageSubTitle =
      "Continúa ingresando con tu red social de preferencia.";

  static List<String> loginPageSocialNetworks = [
    "Continuar con Google",
    "Continuar con Facebook",
    "Continuar con Apple",
  ];
  static List<String> loginPageSocialNetworksLogos = [
    "assets/images/google_icon.png",
    "assets/images/facebook_icon.png",
    "assets/images/apple_icon.png",
  ];

  static List<String> onBoardingTitles = [
    "Contratar un crédito puede ser la peor o la mejor decisión que podás tomar en tu vida.",
    "La mayoría de las personas que toman malas decisiones lo hacen por desconocimiento y/o falta de informacion y no porque sean tontos.",
    "Si ya tienes un crédito contratado, puedes hacer lo que siempre has hecho o puedes aprender a pagar menos intereses,  obtener mejores beneficios y/o mejores condiciones."
  ];

  static List<String> onBoardingSubTitles = [
    "En Coban Academy aprenderás todo lo que necesitas saber para contratar el mejor crédito para tí, para tu negocio o para tu empresa.",
    "En Coban Academy conocerás todos tus derechos y obligaciones para que nadie se aproveche de tí.",
    "En Coban Academy aprenderás diferentes estrategias para pagar menos intereses y/o para renegociar mejores condiciones en tus créditos."
  ];

  static List<String> onBoardingButtons = ["Continuar", "Continuar", "Empezar"];

  static List<String> onBoardingImages = ["ob1.jpg", "ob2.jpg", "ob3.jpg"];

  static List<String> homePageTitles = [

    "Inicio",
    "Mis Cursos",
    "Asesor IA",
    "Consultar",

  ];


  static String homePageSearchHint ="Buscar un curso";

  static String homePageSearchHintMyCourse ="Buscar en mis cursos";

  static List<String> exploreFilters = [
    "Todo",
    "Hipoteca",
    "Amortización",
    "Vivienda Social",
    "Tarjeta de Crédito",
    "Crédito Vehicular",

  ];

  static List<String> exploreCategories = [
    "Para ti",
    "Populares",
    "Ultimos Subidos",
  ];

  static List<String> courseTitlesPage = [
    "Objetivos",
    "Contenido",
    "Consulta Gratis",
    "Oferta",
    "Asesoría",
  ];

  static String consultingText ="Estamos a su disposición para responder cualquier pregunta que tenga sobre el curso. Envíe su consulta y recibirá una respuesta de uno de nuestros especialistas cualificados.";

}
