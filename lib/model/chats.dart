class Chats {
  String name, lastMessage, image, time;
  bool isActive;

  Chats(
    this.name,
    this.image,
    this.isActive,
    this.lastMessage,
    this.time,
  );
}

List listOfChats = [
  Chats("Mahmoud Ahmed", "images/mahmoud.jpg", true, "What are you doing? ", "10m ago"),
  Chats("Mahmoud Ahmed", "images/ahmed.jpg", true, "Heloo ", "12m ago"),
  Chats("Mahmoud Ahmed", "images/amir.jpg", false, "are you going out todat? ", "40m ago"),
  Chats("Mahmoud Ahmed", "images/dawod.jpg", true, "Heloo ", "36m ago"),
  Chats("Mahmoud Ahmed", "images/mohab.jpg", false, "Mesa mesa ", "15m ago"),
  Chats("Mahmoud Ahmed", "images/nour.jpg", true, "it's a wonderful day ", "45m ago"),
  Chats("Mahmoud Ahmed", "images/mahmoud.jpg", true, "very good", "21m ago"),
  Chats("Mahmoud Ahmed", "images/mahmoud.jpg", false, "Heloo ", "42m ago"),
  Chats("Mahmoud Ahmed", "images/mahmoud.jpg", true, "Heloo ", "4m ago"),
  Chats("Mahmoud Ahmed", "images/mahmoud.jpg", true, "Heloo ", "4m ago"),
];
