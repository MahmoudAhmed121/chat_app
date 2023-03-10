
import 'package:chat_application/ui/chat_list.dart';
import 'package:chat_application/ui/chat_message_screen/chat_message_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: "chatlist",

     routes: {

      "chatlist":(context) => Chatlist(),
      "screen 1":(context) => Chatmessagescreen()
      
     }
    );
  }
}
