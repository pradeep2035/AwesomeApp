import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/login_page.dart';
import 'pages/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Awesome App",
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors
            .pink, //it is for change color in appbar theme  and button but not text
        //brightness: Brightness.dark,
      ),
      initialRoute: "/login",
      routes: {
        "/login":(context) => LoginPage(),
        "/home" :(context) => HomePage(),
      },
    ),
  );
}



