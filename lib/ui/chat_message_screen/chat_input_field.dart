import 'package:chat_application/constant/const.dart';
import 'package:chat_application/cubit/chat_cubit/message_cubit.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatInputField extends StatefulWidget {
  ChatInputField({super.key, required this.email});
  String email;

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
          // color: Colors.greenAccent,
          // boxShadow: [
          //   BoxShadow(
          //     offset: Offset(0, 4),
          //     blurRadius: 32,
          //     color: Colors.greenAccent.withOpacity(0.08),
          //   ),
          // ],
          ),
      child: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: Color(0xffDFDFDF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Icon(FontAwesomeIcons.faceGrinWide,
                        color: Color.fromARGB(117, 56, 57, 52)),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: TextField(
                        onSubmitted: (String data) {
                          BlocProvider.of<ChatCubit>(context)
                              .sendMessage(data: data, email: widget.email);
                          messageController.clear();
                          controller.animateTo(
                            0,
                            duration: Duration(milliseconds: 700),
                            curve: Curves.easeIn,
                          );
                        },
                        controller: messageController,
                        decoration: InputDecoration(
                          hintText: "Type a message..",
                          border: InputBorder.none,
                          hintStyle: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ),
                    messageController.text.isEmpty
                        ? IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.camera,
                                color: Color.fromARGB(117, 56, 57, 52)))
                        : SizedBox(),
                    messageController.text.isEmpty
                        ? IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.paperclip,
                                color: Color.fromARGB(117, 56, 57, 52)))
                        : SizedBox(),
                    messageController.text.isNotEmpty
                        ? IconButton(
                            onPressed: () {},
                            icon: CircleAvatar(
                              backgroundColor: Color(0xff00D1FF),
                              child: Image.asset(
                                "images/Vector (2).png",
                                width: 20,
                              ),
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
