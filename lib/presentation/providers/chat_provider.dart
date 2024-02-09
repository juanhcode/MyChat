import 'package:flutter/material.dart';
import 'package:mychat/config/helpers/get_yes_no_answer.dart';
import 'package:mychat/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  final ScrollController chatScrollController = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> message = [
    Message(text: "Hola", fromWho: FromWho.mine),
  ];

  Future<void> sendMessage(String text)  async{
    if(text.isEmpty) return;
    message.add(Message(text: text, fromWho: FromWho.mine));

    if(text.endsWith("?")){
      await herReply();
    }

    notifyListeners();
    await moveScrollToBottom();
  }

  Future<void> herReply () async {
    final herMessage = await getYesNoAnswer.getAnswer();

  }

  Future<void> moveScrollToBottom() async{
    await Future.delayed(const Duration(milliseconds: 100));
    chatScrollController.animateTo(chatScrollController.position.maxScrollExtent, duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
  }
}