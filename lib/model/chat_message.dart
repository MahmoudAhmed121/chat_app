
import 'package:flutter/cupertino.dart';

enum ChatMessageType{text,oudio,vidio,image}
enum MessageStats{not_sent,not_view,viewed}

class ChatMessage{
final String text;
final ChatMessageType messageType;
final MessageStats messageStats;
final bool isSender;
final String? sender;
final String? senderImage;
final String? imageUrl;


ChatMessage({this.text="",required this.messageStats, required this.messageType,required this.isSender,this.sender,this.senderImage,this.imageUrl});
}


class ChatMessages with ChangeNotifier{

List<ChatMessage> chatMessages =[

ChatMessage(

text: "Hi Mahmoud how are you ?",
isSender: false,
messageStats: MessageStats.viewed,
messageType: ChatMessageType.text
 
 ),ChatMessage(

text: "Hi Mariam ",
isSender: true,
messageStats: MessageStats.viewed,
messageType: ChatMessageType.text
 
 ),ChatMessage(

text: "Hope you are doing well ",
isSender: false,
messageStats: MessageStats.viewed,
messageType: ChatMessageType.text
 
 ),ChatMessage(

text: "Hello Mahmoud how are you ?",
isSender: true,
messageStats: MessageStats.viewed,
messageType: ChatMessageType.text
 
 ),ChatMessage(

text: "I am good alhamdullilah ",
isSender: false,
messageStats: MessageStats.viewed,
messageType: ChatMessageType.text
 
 ),ChatMessage(

text: "Happy to hear that ",
isSender: true,
messageStats: MessageStats.viewed,
messageType: ChatMessageType.text
 
 ),ChatMessage(

text: "Thanks",
isSender: false,
messageStats: MessageStats.viewed,
messageType: ChatMessageType.text
 
 ),

];

void addMessage(ChatMessage message){
chatMessages.add(message);
notifyListeners();
}


List<ChatMessage> get getMessageList => chatMessages;

}