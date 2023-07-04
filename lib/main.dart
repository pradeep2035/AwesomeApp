import 'package:flutter/material.dart';
import 'pages/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Awesome App",
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors
            .pink, //it is for change color in appbar theme  and button but not text
        //brightness: Brightness.dark,
      ),
    ),
  );
}



