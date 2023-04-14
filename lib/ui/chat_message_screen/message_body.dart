import 'package:chat_application/constant/const.dart';
import 'package:chat_application/cubit/chat_cubit/message_cubit.dart';

import 'package:chat_application/ui/chat_message_screen/chat_buble.dart';
import 'package:chat_application/ui/chat_message_screen/chat_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessageBody extends StatelessWidget {
  MessageBody({super.key, required this.email});
  final String email;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: BlocBuilder<ChatCubit, ChatState>(
            bloc: ChatCubit()..getMessage(),
            builder: (context, state) {
              var messageList = BlocProvider.of<ChatCubit>(context).massageList;
              return ListView.builder(
                reverse: true,
                controller: controller,
                itemCount: messageList.length,
                itemBuilder: (context, index) {
                  return messageList[index].id == email
                      ? ChatBuble(
                          message: messageList[index],
                        )
                      : ChatBubleForFriend(
                          message: messageList[index],
                        );
                },
              );
            },
          ),
        ),
        ChatInputField(email: email),
      ],
    );
  }
}
