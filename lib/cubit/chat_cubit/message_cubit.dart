import 'package:bloc/bloc.dart';
import 'package:chat_application/model/message.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'message_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(MessageInitial());
  List<Message> massageList = [];
  CollectionReference message = FirebaseFirestore.instance.collection('chat');
  void sendMessage({required String data, required var email}) {
   print("${email}not nall");
    message.add({
      "message": data,
      "createdAt": DateTime.now(),
      "id": email,
    });
  }

  void getMessage() {
    message.orderBy("createdAt", descending: true).snapshots().listen((event) {
      massageList.clear();
      for (var doc in event.docs) {
        massageList.add(Message.fromJson(doc));
      }
      emit(MessageSuccess(message: massageList));
    });
  }
}
