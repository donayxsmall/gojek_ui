import 'package:flutter/material.dart';
import 'package:gojek_ui/core.dart';
import '../view/chat_view.dart';

class ChatController extends State<ChatView> {
  static late ChatController instance;
  late ChatView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
