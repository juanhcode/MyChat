import 'package:flutter/material.dart';
import 'package:mychat/config/theme/app_theme.dart';
import 'package:mychat/presentation/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Yes No App",
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme(),
      home: const ChatScreen(),
    );
  }
}