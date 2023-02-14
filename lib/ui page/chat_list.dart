
import 'package:chat_application/ui%20page/chat_body.dart';
import 'package:chat_application/ui%20page/chat_body.dart';
import 'package:flutter/material.dart';

class Chatlist extends StatefulWidget {
  const Chatlist({super.key});

  @override
  State<Chatlist> createState() => _ChatlistState();
}

class _ChatlistState extends State<Chatlist> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {},child: Icon(Icons.group_add),),
      bottomNavigationBar: buildBottomNavigationBar(),
      body: ChatsBody(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        "Chats",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
    );
  }

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue, 
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
      
        setState(() {
          _selectedIndex =value;
        });
        
      },
      items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.chat_bubble),
        label: "Chat",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.call),
        label: "Call",
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: "Setting",
      ),
      BottomNavigationBarItem(
        icon: CircleAvatar(
            radius: 18, backgroundImage: AssetImage("images/mahmoud.jpg")),
        label: "Chat",
      ),
    ]);
  }
}
