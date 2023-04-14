// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'message_cubit.dart';

@immutable
abstract class ChatState {}

class MessageInitial extends ChatState {}
class MessageSuccess extends ChatState {
  List<Message> message;
  MessageSuccess({
    required this.message,
  });
  
}
