import 'package:chat_application/model/chat_message.dart';
import 'package:chat_application/ui/chat_message_screen/message_image.dart';
import 'package:chat_application/ui/chat_message_screen/message_text.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key, required this.message, required this.index});

  final ChatMessage message;
  final int index;

  @override
  Widget build(BuildContext context) {
    Widget messageContain(ChatMessage message, int index) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return MessageText(message: message);
        case ChatMessageType.text:
          return MessageImage(message: message, index: index);

        default:
          SizedBox();
      }
      return SizedBox();
    }

    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Container(
          child: Row(
            mainAxisAlignment: message.isSender
             ? MainAxisAlignment.end 
             : MainAxisAlignment.start ,

        children: [
          if(message.isSender) ...[
            CircleAvatar(
              child: Image.network(message.imageUrl!),
              radius: 18,
            ),
            SizedBox(width: 10,)
          ],
          messageContain(message, index),
        ],
      ),),
    );
  }
}
