import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MessageFieldBox({super.key, required this.onValue});
  final numero = 2;

  @override
  Widget build(BuildContext context) {

    final textController = TextEditingController();
    final FocusNode focusNode = FocusNode();

    final outlineInputBorder = UnderlineInputBorder(
      borderRadius: BorderRadius.circular(40),
      borderSide: const BorderSide(color: Colors.transparent)
    );

    final inputDecoration = InputDecoration(
      hintText: 'Evia tu mensaje',
      enabledBorder: outlineInputBorder,
      filled: true,
      suffixIcon: IconButton(onPressed: (){
        final textValue = textController.value.text;
        onValue(textValue);
        textController.clear();
      }, icon: const Icon(Icons.send))
      );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        textController.clear();
        onValue(value);
        focusNode.requestFocus();
      },
    );
  }
}