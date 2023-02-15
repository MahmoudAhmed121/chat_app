import 'package:chat_application/model/chat_message.dart';
import 'package:flutter/material.dart';

class MessageText extends StatelessWidget {
  const MessageText({super.key, required this.message});
  final ChatMessage message;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.green[200],
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        !(message.isSender)
            ? Text(
                "Hi Mahmoud",
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              )
            : SizedBox(
                height: 3,
              ),
        Text(
          message.text,
          style:
              TextStyle(color: message.isSender ? Colors.white : Colors.black),
        )
      ]),
    );
  }
}
