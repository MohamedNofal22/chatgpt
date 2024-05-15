import 'dart:convert';
import 'package:chatgpt/main.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class ChatController extends GetxController {
  final ChatUser user = ChatUser(
    id: '1',
    firstName: 'Mohamed',
    lastName: 'Nofal',
  );
  final ChatUser chatGpt = ChatUser(
    id: '2',
    firstName: 'Chat',
    lastName: 'GPT',
  );
  final List<ChatUser> typing = <ChatUser>[];
  List<ChatMessage> messages = <ChatMessage>[];

  @override
  void onInit() {
    super.onInit();
    _loadMessages(); // استرجاع الرسائل عند بدء التطبيق
  }

  void _loadMessages() async {
    String? messagesJson = sharepref!.getString('messages');
    if (messagesJson != null) {
      List<dynamic> decodedMessages = jsonDecode(messagesJson);
      messages = decodedMessages
          .map((message) => ChatMessage.fromJson(message))
          .toList();
      update();
    }
  }

  Future<void> message(ChatMessage message) async {
    messages.insert(0, message);
    typing.add(chatGpt);
    update();
    await post(Uri.parse("http://192.168.1.8:5000/generate_response"),
        body: jsonEncode({"content": message.toJson()}),
        headers: {"Content-Type": "application/json"}).then((response) {
      String result = jsonDecode(response.body)['response'];
      ChatMessage responseMessage = ChatMessage(
        user: chatGpt,
        createdAt: DateTime.now(),
        text: result,
      );
      messages.insert(0, responseMessage);
      typing.remove(chatGpt);
      update();
      _saveMessages(); // حفظ الرسائل بعد استلام الرد
    });
  }

  void _saveMessages() async {
    String messagesJson =
        jsonEncode(messages.map((message) => message.toJson()).toList());
    sharepref!.setString('messages', messagesJson);
  }
}
