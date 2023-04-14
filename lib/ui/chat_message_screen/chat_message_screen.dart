import 'package:flutter/material.dart';

import 'package:chat_application/model/chats.dart';
import 'package:chat_application/ui/chat_message_screen/message_body.dart';

class Chatmessagescreen extends StatefulWidget {
  final email;
  Chats? data;
  Chatmessagescreen({
    Key? key,
    this.data,
    this.email,
  }) : super(key: key);
  @override
  State<Chatmessagescreen> createState() => _ChatmessagescreenState();
}

class _ChatmessagescreenState extends State<Chatmessagescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE9FFEA),
      appBar: buildAppBar(),
      body: MessageBody(email: widget.email),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 80,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_new),
      ),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              CircleAvatar(backgroundImage: AssetImage(widget.data!.image)),
              if (widget.data!.isActive == true)
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    width: 12,
                    height: 12,
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
          Text(
            widget.data!.name,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Color(0xffC8FFA6),
          child: Icon(
            Icons.phone,
            color: Colors.black,
          ),
        ),
        SizedBox(
          width: 6,
        ),
        CircleAvatar(
          backgroundColor: Color(0xffC8FFA6),
          child: Image.asset("images/image 13.png"),
        ),
        SizedBox(
          width: 10.0,
        )
      ],
    );
  }
}
