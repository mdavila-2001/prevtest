import 'dart:convert';
import 'dart:io';
import 'package:cobanacademy/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';
import '../icons/coban_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<types.Message> _messages = [];

  final _user = const types.User(
    id: 'user',
  );

  final _cpu = const types.User(
    id: 'cpu1',
  );

  final _bot = const types.User(
    id: 'bot',
  );

  String systemPromp = """
      Your role as COBAN IA is to provide short and precise answers with a neutral tone, 
      focusing solely on topics related to housing credits, particularly social interest housing credits, 
      as outlined in the uploaded document. Emphasize specific data related to housing credits, 
      without rambling or providing unnecessary explanations, and avoid using complex words. 
      First, check if there's information related to the user's query in any uploaded document. 
      If so, generate a response based on that information. If there's no relevant information in the document, 
      or if the topic is unrelated, clearly state that you don't have that information. All responses should be in Spanish.
      """;

  String apiKey = "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";
  String organizationID = 'org-Cne6hc7OzJyPKhhyQOeDTKro';
  String assistantsID = 'asst_cMGT3CwLB7kKJrChszmNTxU8';
  String threadID = 'thread_Yy3quOfedj7lnJov4IyIDVRk';

  Future<String> sendMsg(String mensaje) async {
    String text = mensaje;
    var headers = {
      'Content-Type': 'application/json',
      'OpenAI-Beta': 'assistants=v1',
      'Authorization': 'Bearer $apiKey',
    };
    String respuesta = " ";
    try {
      if (text.isNotEmpty) {
        var request = http.Request('POST',
            Uri.parse('https://api.openai.com/v1/threads/$threadID/messages'));
        request.body = json.encode({"role": "user", "content": text});
        request.headers.addAll(headers);

        http.StreamedResponse response = await request.send();

        if (response.statusCode == 200) {
          var request = http.Request('POST',
              Uri.parse('https://api.openai.com/v1/threads/$threadID/runs'));
          request.body = json.encode({"assistant_id": assistantsID});
          request.headers.addAll(headers);

          http.StreamedResponse response = await request.send();

          if (response.statusCode == 200) {
            String run = await response.stream.bytesToString();
            run = run.substring(11, 39);
            bool bandera = true;
            while (bandera) {
              var request = http.Request(
                  'GET',
                  Uri.parse(
                      'https://api.openai.com/v1/threads/$threadID/runs/$run'));
              request.body = '''''';
              request.headers.addAll(headers);

              http.StreamedResponse response1 = await request.send();

              if (response1.statusCode == 200) {
                print("Consultando la api");
                String status = await response1.stream.bytesToString();

                String recorte = status.substring(210, 219);
                print("Consultando la api f:  $recorte");
                if (recorte == "completed") {
                  bandera = false;
                }
              } else {
                print(response1.reasonPhrase);
              }
            }

            Future<String> fetchRespuesta() async {
              final response = await http.get(
                  Uri.parse(
                      'https://api.openai.com/v1/threads/$threadID/messages'),
                  headers: headers);

              String respuestafinal = json
                  .decode(utf8.decode(response.bodyBytes))["data"][0]["content"]
                      [0]["text"]["value"]
                  .toString();

              print(json.decode(utf8.decode(response.bodyBytes))["data"]);

              if (response.statusCode == 200) {
                return respuestafinal;
              } else {
                throw Exception('Fallo al optener la version');
              }
            }

            respuesta = await fetchRespuesta();
          } else {
            print(response.reasonPhrase);
          }
        } else {
          print(response.reasonPhrase);
        }
      }
    } on Exception {}
    return respuesta;
  }

  void _auxiliar() {
    final textMessage = types.TextMessage(
      author: _bot,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text:
          "* Si requieres de asistencia humana puedes hacer doble click en este mensaje *",
    );
    _addMessage(textMessage);
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  Future<void> _handleSendPressed(types.PartialText message) async {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );
    _addMessage(textMessage);
    String respuesta = await sendMsg(message.text);
    final textMessage2 = types.TextMessage(
      author: _cpu,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: respuesta,
    );
    _addMessage(textMessage2);

    if (respuesta.length > 250) {
      _auxiliar();
    }
  }

  whatsapp(String text, String contact) async {
    String androidUrl = "whatsapp://send?phone=$contact&text=$text";
    String iosUrl = "https://wa.me/$contact?text=${Uri.parse(text)}";

    String webUrl = 'https://api.whatsapp.com/send/?phone=$contact&text=$text';

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
    final Map<String, Color> userColors = {
      _user.id: AppColor.primaryPurple,
      _cpu.id: AppColor.purpleBlue100,
      _bot.id: AppColor.purpleBlue100.withOpacity(0.8),
    };

    final Map<String, Color> userTextColors = {
      _user.id: AppColor.white,
      _cpu.id: AppColor.primaryDarkPurple,
      _bot.id: AppColor.purpleBlue700,
    };

    return Scaffold(
      backgroundColor: AppColor.primaryDarkPurple,
      appBar: AppBar(
        backgroundColor: AppColor.primaryDarkPurple,
        title: Row(
          children: [
            const CircleAvatar(
              backgroundColor: AppColor.primaryPurple,
              foregroundColor: AppColor.white,
              child: Icon(CobanIcons.chatBotIcon),
            ),
            SizedBox(
              width: 3.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      'Coban IA',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: AppColor.purpleBlue50,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 1.w, horizontal: 2.w),
                      decoration: BoxDecoration(
                        color: AppColor.primaryPurple.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Text(
                        'Beta',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            color: AppColor.purpleBlue50,
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 6.0,
                      height: 6.0,
                      decoration: const BoxDecoration(
                        color: AppColor.purpleBlue300,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      'En línea',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: AppColor.purpleBlue300, fontSize: 14),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            color: AppColor.primaryPurple,
            padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
            margin: EdgeInsets.only(top: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.warning,
                  color: AppColor.white,
                ),
                SizedBox(
                  width: 4.w,
                ),
                const Expanded(
                    child: Text(
                  'Esta información está sujeta a verificación humana',
                  style: TextStyle(color: AppColor.white),
                ))
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: AppColor.primaryDarkPurple,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 0.h),
                child: Chat(
                  onMessageDoubleTap: (contxt, msg) {
                    if (msg.author == _bot) {
                      whatsapp("Necesito ayuda", "+59177889320");
                    }
                  },
                  useTopSafeAreaInset: true,
                  messages: _messages,
                  showUserAvatars: false,
                  showUserNames: true,
                  onSendPressed: _handleSendPressed,
                  user: _user,
                  theme: DefaultChatTheme(
                    backgroundColor: AppColor.primaryDarkPurple,
                    inputBorderRadius: BorderRadius.circular(30.0),
                    inputBackgroundColor: AppColor.inputGray,
                    inputTextColor: AppColor.purpleBlue400,
                    sendButtonIcon: SvgPicture.asset(
                      "assets/images/send.svg",
                    ),
                  ),
                  bubbleBuilder: (context,
                      {required message, required nextMessageInGroup}) {
                    final backgroundColor =
                        userColors[message.author.id] ?? Colors.grey.shade300;
                    final textColor = userTextColors[message.author.id] ??
                        Colors.grey.shade300;
                    final DateTime time =
                        DateTime.fromMillisecondsSinceEpoch(message.createdAt!);
                    final String timeString =
                        DateFormat('H:mm').format(time);
                    return Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: message.author.id == 'user'
                            ? const BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15))
                            : message.author.id == 'bot'
                                ? (BorderRadius.circular(15))
                                : (const BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15))),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            message.props[message.props.length - 2].toString(),
                            style: TextStyle(
                              color: textColor,
                              fontWeight: message.author.id == 'bot'
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            timeString,
                            style: TextStyle(
                              color: textColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
