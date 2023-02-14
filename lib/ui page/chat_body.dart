import 'package:chat_application/model/chats.dart';
import 'package:chat_application/ui%20page/FieldOutlineButton.dart';

import 'package:chat_application/ui%20page/chat_card.dart';
import 'package:flutter/material.dart';

class ChatsBody extends StatefulWidget {
  const ChatsBody({super.key});

  @override
  State<ChatsBody> createState() => _ChatsBodyState();
}

class _ChatsBodyState extends State<ChatsBody> {
  bool onpressOne = false;
  bool onPressTwo = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            color: Colors.green,
            child: Row(
              children: [
                FieldOutlineButton(
                  press: () {
                    if (onPressTwo == false) {
                      setState(() {
                        onpressOne = !onpressOne;
                      });
                    }
                  },
                  text: "Recent Message",
                  isFaild: onpressOne,
                ),
                SizedBox(
                  width: 20,
                ),
                FieldOutlineButton(
                  press: () {
                    if (onpressOne == false) {
                      setState(() {
                        onPressTwo = !onPressTwo;
                      });
                    }
                  },
                  text: "Active",
                  isFaild: onPressTwo,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: listOfChats.length,
              itemBuilder: ((context, index) => ChatsCard(
                    chats: listOfChats[index],
                    press: () {
                      Navigator.pushNamed(context, "screen 1");
                    },
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
