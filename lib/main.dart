import 'package:flutter/material.dart';
import 'package:whatsapp_redesign/pages/new_chat.dart';
import 'package:whatsapp_redesign/utils/routes.dart';
import 'pages/home_page.dart';
import 'pages/new_chat.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homePage: (context) => HomePage(),
        MyRoutes.newChat: (context) => NewChat(),
      },
    );
  }
}
