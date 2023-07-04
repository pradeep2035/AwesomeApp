import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/login_page.dart';
import 'package:flutter_basic/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/homepage.dart';

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(
    MaterialApp(
      title: "Awesome App",
      home: Constants.prefs.getBool("Loggedin")== true? HomePage():LoginPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors
            .pink, //it is for change color in appbar theme  and button but not text
        //brightness: Brightness.dark,
      ),
      initialRoute: "/home",
      routes: {
        "/login":(context) => LoginPage(),
        "/home" :(context) => HomePage(),
      },
    ),
  );
}



