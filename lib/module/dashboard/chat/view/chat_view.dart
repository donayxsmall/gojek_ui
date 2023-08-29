import 'package:flutter/material.dart';
import 'package:gojek_ui/core.dart';
import '../controller/chat_controller.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  Widget build(context, ChatController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat"),
        actions: const [],
      ),
      body: Container(),
    );
  }

  @override
  State<ChatView> createState() => ChatController();
}
