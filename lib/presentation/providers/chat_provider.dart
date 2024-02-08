import 'package:flutter/material.dart';
import 'package:mychat/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  final ScrollController chatScrollController = ScrollController();

  List<Message> message = [
    Message(text: "Hola", fromWho: FromWho.mine),
  ];

  Future<void> sendMessage(String text)  async{
    if(text.isEmpty) return;
    message.add(Message(text: text, fromWho: FromWho.mine));
    notifyListeners();
    await moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async{
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(chatScrollController.position.maxScrollExtent, duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
  }
}