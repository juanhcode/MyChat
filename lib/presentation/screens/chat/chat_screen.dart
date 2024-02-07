import 'package:flutter/material.dart';
import 'package:mychat/domain/entities/message.dart';
import 'package:mychat/presentation/providers/chat_provider.dart';
import 'package:mychat/presentation/widgets/chat/her_message_bubble.dart';
import 'package:mychat/presentation/widgets/chat/my_message__bubble.dart';
import 'package:mychat/presentation/widgets/chat/shared/message_field_box.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
        ),
        title: const Text("Chat"),
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: chatProvider.message.length,
              itemBuilder: (context, index) {
                final message = chatProvider.message[index];
                return (message.fromWho == FromWho.hers) ? HerMessageBubble(message: message,) : MyMessageBubble(message:message);
              },
            )),
            MessageFieldBox(onValue: (value) {
              chatProvider.sendMessage(value);
            },),
          ],
        ),
      ),
    );
  }
}
