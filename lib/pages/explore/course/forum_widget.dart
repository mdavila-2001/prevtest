import 'dart:io';
import 'dart:math';
import 'package:cobanacademy/graphql/model/objetos.dart';
import 'package:cobanacademy/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class ForumWidget extends StatefulWidget {
  final Course curse;

  const ForumWidget({super.key, required this.curse});

  @override
  State<ForumWidget> createState() => _ForumWidgetState();
}

class _ForumWidgetState extends State<ForumWidget> {
  final TextEditingController _commentController = TextEditingController();

  whatsapp(String text, String contact) async {
    var random = Random();

    int numeroAleatorio = random.nextInt(9000) + 1000;
    String mensaje =
        "Ticket: $numeroAleatorio Estaba viendo el curso de ${widget.curse.nombre} y me surgio siguiente duda: $text";

    String androidUrl = "whatsapp://send?phone=$contact&text=$mensaje";
    String iosUrl = "https://wa.me/$contact?text=${Uri.parse(mensaje)}";
    String webUrl =
        'https://api.whatsapp.com/send/?phone=$contact&text=$mensaje';

    try {
      if (Platform.isIOS) {
        await launchUrl(Uri.parse(iosUrl));
      } else {
        await launchUrl(Uri.parse(androidUrl));
      }
    } catch (e) {
      await launchUrl(Uri.parse(webUrl), mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListView(
        padding:
        EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 2.h,
          ),
          TextField(
            controller: _commentController,
            maxLines: 8,
            textCapitalization: TextCapitalization.sentences,
            textAlignVertical: TextAlignVertical.center,
            keyboardType: TextInputType.text,
            style: const TextStyle(color: AppColor.white),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(20),
              hintText:
              "Escribe tu pregunta, duda o consulta sobre créditos, ahorros o inversión... \n\n\n Ej: ${widget.curse.consulta}",
              hintStyle:  TextStyle(
                  color: AppColor.white.withOpacity(0.8),
                  fontSize: 14,
                  fontStyle: FontStyle.italic),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: AppColor.purpleBlue200, width: 0.5.w),
                borderRadius: const BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide:
                BorderSide(color: AppColor.purpleBlue200),
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          ElevatedButton(
              onPressed: () {
                if (_commentController.text.isNotEmpty) {
                  whatsapp(
                      _commentController.text, widget.curse.contacto.soporte);
                  _commentController.clear();
                }
              },
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(100.w, 7.h),
                  elevation: 0,
                  backgroundColor: AppColor.primaryPurple,
                  foregroundColor: AppColor.white,
                  disabledBackgroundColor: AppColor.purpleBlue800,
                  disabledForegroundColor: AppColor.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24))),
              child: const Center(
                  child: Text(
                    'Enviar Consulta',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal),
                  ))),
          SizedBox(
            height: 4.h,
          ),
        ],
      ),
    );
  }
}
