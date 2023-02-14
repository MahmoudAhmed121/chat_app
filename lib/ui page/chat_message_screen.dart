
import 'package:flutter/material.dart';

class Chatmessagescreen extends StatefulWidget {



  @override
  State<Chatmessagescreen> createState() => _ChatmessagescreenState();
}

class _ChatmessagescreenState extends State<Chatmessagescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Chat Screen"),
      ),
      body: Center(child: Text("Hello Chat Screen",
      style: TextStyle(fontSize: 20),
      )),
    );
  }
}
