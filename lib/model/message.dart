
class Message {
  String messsage;
  dynamic id;
  Message(
    this.messsage,
    this.id,
  );

  factory Message.fromJson(jsonData) {
    return Message(jsonData["message"], jsonData["id"]);
  }
}
