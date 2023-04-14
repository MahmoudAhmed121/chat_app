import 'package:chat_application/cubit/chat_cubit/message_cubit.dart';

import 'package:chat_application/cubit/regis_and_login_cubit/cubit/login_and_regis_cubit.dart';

import 'package:chat_application/ui/on_bording_screen/login.dart';
import 'package:chat_application/ui/on_bording_screen/on_bording.dart';
import 'package:chat_application/ui/chat_list.dart';
import 'package:chat_application/ui/chat_message_screen/chat_message_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ChatCubit(),
        ),
        BlocProvider(
          create: (context) => LoginCubit(),
        )
      ],
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: "onBording",
          routes: {
            "chatlist": (context) => Chatlist(email: ""),
            "screen 1": (context) => Chatmessagescreen(),
            "login": (context) => TabBarDemo(initialIndex: 0),
            "onBording": (context) => OnBording(),
          }),
    );
  }
}
