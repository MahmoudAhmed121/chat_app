import 'package:chat_application/ui/chat_list_screen/chat_body.dart';
import 'package:flutter/material.dart';

class Chatlist extends StatefulWidget {
   Chatlist({super.key,required this.email});
String email;
  @override
  State<Chatlist> createState() => _ChatlistState();
}

class _ChatlistState extends State<Chatlist> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
  

    return Scaffold(
      appBar: buildAppBar(),
    
      body: ChatsBody(
        email: widget.email,
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Color(0xff000000),
      leadingWidth: 150,
      leading: Center(
        child: Text(
          textAlign: TextAlign.center,
          "Chatdong",
          style: TextStyle(fontSize: 28),
        ),
      ),
      centerTitle: true,
      actions: [
        Stack(
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: Color(0xff322D2D),
                child: Image.asset("images/Vector (1).png"),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 27,
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
          width: 16,
        ),
      ],
    );
  }
}
