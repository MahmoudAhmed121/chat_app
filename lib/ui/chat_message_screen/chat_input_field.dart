import 'package:flutter/material.dart';

class ChatInputField extends StatefulWidget {
  const ChatInputField({super.key});

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  final messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    messageController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.greenAccent,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 32,
            color: Colors.greenAccent.withOpacity(0.08),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.green[200],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.sentiment_neutral_sharp,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: TextField(
                        controller: messageController,
                        decoration: InputDecoration(
                            hintText: "Type a message..",
                            border: InputBorder.none),
                      ),
                    ),
                    messageController.text.isEmpty
                        ? IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt_rounded,
                              color: Colors.white,
                            ),
                          )
                        : SizedBox(),
                     messageController.text.isEmpty
                        ? IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.attach_file,
                              color: Colors.white,
                              size:24 ,

                            ),
                          )
                        : SizedBox(),
                    messageController.text.isNotEmpty
                        ? IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.send_rounded,
                              color: Colors.white,
                            ))
                        : SizedBox(
                            width: 5,
                          ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
