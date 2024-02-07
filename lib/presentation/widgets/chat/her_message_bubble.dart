import 'package:flutter/material.dart';
import 'package:mychat/domain/entities/message.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: colors.secondary, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              message.text,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 5),
        //Imagen
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            "https://yesno.wtf/assets/yes/11-a23cbde4ae018bbda812d2d8b2b8fc6c.gif",
            width: size.width * 0.7,
            height: 150,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;

              return Container(
                width: size.width * 0.7,
                height: 150,
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: const Text('Send'),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
