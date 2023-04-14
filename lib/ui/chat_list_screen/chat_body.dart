import 'package:chat_application/ui/chat_list_screen/FieldOutlineButton.dart';
import 'package:chat_application/ui/chat_list_screen/list_widget.dart';
import 'package:flutter/material.dart';

class ChatsBody extends StatefulWidget {
  const ChatsBody({super.key, required this.email});
  final email;

  @override
  State<ChatsBody> createState() => _ChatsBodyState();
}

class _ChatsBodyState extends State<ChatsBody> {
  bool onpressOne = true;
  bool onPressTwo = false;

  @override
  Widget build(BuildContext context) {
    print(widget.email);
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            color: Color(0xff000000),
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
            child: ListWidget(
              email: widget.email,
            ),
          ),
        ],
      ),
    );
  }
}
