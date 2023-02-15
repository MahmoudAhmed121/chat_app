import 'package:chat_application/ui/chat_message_screen/message_body.dart';
import 'package:flutter/material.dart';

class Chatmessagescreen extends StatefulWidget {
  @override
  State<Chatmessagescreen> createState() => _ChatmessagescreenState();
}

class _ChatmessagescreenState extends State<Chatmessagescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body:MessageBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {
           Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios_new),
      ),
      title: Center(
        child: Text(
          "Friendly Chat",
          style: TextStyle(fontSize: 16),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.phone),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.videocam_rounded),
        ),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.logout),
        ),
        SizedBox(width: 10.0,)
      ],
    );
  }
}
