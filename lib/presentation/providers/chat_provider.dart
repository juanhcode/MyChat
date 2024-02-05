import 'package:flutter/material.dart';
import 'package:mychat/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {

  List<Message> message = [
    Message(text: "Hola", fromWho: FromWho.mine),
  ];

  Future<void> sendMessage(String text)  async{
    // TODO: implementar enviar mensaje y añadirlo a la lista
  }
}