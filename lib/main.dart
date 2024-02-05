import 'package:flutter/material.dart';
import 'package:mychat/config/theme/app_theme.dart';
import 'package:mychat/presentation/providers/chat_provider.dart';
import 'package:mychat/presentation/screens/chat/chat_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_)=> ChatProvider())],
      child: MaterialApp(
        title: "Yes No App",
        debugShowCheckedModeBanner: false,
        theme: AppTheme().theme(),
        home: const ChatScreen(),
      ),
    );
  }
}