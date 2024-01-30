import 'package:flutter/material.dart';

class HerMessageBubble extends StatelessWidget {
  const HerMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text("Holaaa",style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 5),
        //Imagen
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network("https://yesno.wtf/assets/yes/11-a23cbde4ae018bbda812d2d8b2b8fc6c.gif",width: size.width * 0.7,height: 150,fit: BoxFit.cover,),

        ),
        const SizedBox(height: 10),
      ],
    );
  }
}