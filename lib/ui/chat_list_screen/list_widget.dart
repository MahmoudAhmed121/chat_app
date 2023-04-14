import 'package:chat_application/model/chats.dart';
import 'package:chat_application/ui/chat_list_screen/chat_card.dart';
import 'package:chat_application/ui/chat_message_screen/chat_message_screen.dart';
import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({Key? key, required this.email}) : super(key: key);
  final String email;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Transform.translate(
          offset: Offset(-120, 0),
          child: Text(
            "Recent Chat",
            style: TextStyle(fontSize: 24),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: listOfChats.length,
            itemBuilder: (context, index) => ChatsCard(
              chats: listOfChats[index],
              press: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  backgroundColor: Colors.transparent,
                  builder: (BuildContext bc) {
                    return ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                      child: Container(
                        height: 800,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(4),
                          ),
                        ),
                        child: Chatmessagescreen(
                          email: email,
                          data: listOfChats[index],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
