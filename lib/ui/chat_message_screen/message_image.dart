import 'package:chat_application/model/chat_message.dart';
import 'package:flutter/material.dart';

class MessageImage extends StatelessWidget {
  const MessageImage({super.key, this.message, required this.index});
  final ChatMessage? message;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: MediaQuery.of(context).size.width *0.45,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: 
      [
        ClipRRect(child: Image.network(message!.imageUrl!,
        fit: BoxFit.fitWidth,
        ),)
      ],
    ),
    );
  }
}
