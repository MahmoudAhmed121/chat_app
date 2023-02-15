import 'package:chat_application/ui/chat_message_screen/chat_input_field.dart';
import 'package:flutter/material.dart';

class MessageBody extends StatefulWidget {
  const MessageBody({super.key});

  @override
  State<MessageBody> createState() => _MessageBodyState();
}

class _MessageBodyState extends State<MessageBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("safsf"),
        ChatInputField(),
      ],
    );
  }
}
