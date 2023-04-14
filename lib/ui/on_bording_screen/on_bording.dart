import 'package:chat_application/ui/on_bording_screen/login.dart';
import 'package:flutter/material.dart';

class OnBording extends StatelessWidget {
  const OnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: Column(
        children: [
          Image.asset("images/Group 1.png"),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "It’s easy to talking to your friends with chatdong",
              style: TextStyle(
                color: Color(0xffD9D5D5),
                fontSize: 34.85,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Call Your Friends Simply And Simple With Chatdong",
              style: TextStyle(
                color: Color(0xff786B6B),
                fontSize: 18.74,
              ),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          SizedBox(
            height: 54,
            width: 263,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {
                showModalBottomSheet<dynamic>(
                    isScrollControlled: true,
                    context: context,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    backgroundColor: Colors.transparent,
                    builder: (BuildContext bc) {
                      return ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                        child: Container(
                          height: 600.0,
                          decoration: const BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(4),
                              )),
                          child: TabBarDemo(initialIndex: 0),
                        ),
                      );
                    });
              },
              child: Text(
                "Get Started",
                style: TextStyle(color: Colors.black, fontSize: 22),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
