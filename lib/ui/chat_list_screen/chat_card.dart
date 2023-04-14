import 'package:chat_application/model/chats.dart';
import 'package:flutter/material.dart';

class ChatsCard extends StatelessWidget {
  const ChatsCard({super.key, required this.chats, required this.press});

  final VoidCallback press;
  final Chats chats;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: Row(
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(chats.image),
                  ),
                  if (chats.isActive)
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: 14,
                        height: 14,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                            border: Border.all(color: Colors.white, width: 3)),
                      ),
                    )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chats.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black),
                  ),
                  Text(
                    chats.lastMessage,
                    style: TextStyle(color: Colors.grey[700]),
                  )
                ],
              ),
              Spacer(),
              Text(
                chats.time,
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              )
            ],
          )),
    );
  }
}
