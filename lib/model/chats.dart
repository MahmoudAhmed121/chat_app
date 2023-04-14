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
  Chats("Ahmed Soliman", "images/ahmed.jpg", true, "Heloo ", "12m ago"),
  Chats("amir Ahmed", "images/amir.jpg", false, "are you going out todat? ", "40m ago"),
  Chats("Dawoud mohamed", "images/dawod.jpg", true, "Heloo ", "36m ago"),
  Chats("Mohab mohamed", "images/mohab.jpg", false, "Mesa mesa ", "15m ago"),
  Chats("Nour Salaim", "images/nour.jpg", true, "it's a wonderful day ", "45m ago"),
  Chats("Mariam Ahmed", "images/mariam.jpg", true, "very good", "21m ago"),
  Chats("Mohamed Sabry", "images/MohamedSabry.jpg", false, "keep going", "42m ago"),
  Chats("Eslam", "images/Eslam.jpg", true, "Aha gamed", "4m ago"),
  Chats("Mahmoud Ahmed", "images/mahmoud.jpg", true, " ", "4m ago"),
];
