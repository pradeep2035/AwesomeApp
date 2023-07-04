import 'package:flutter/material.dart';
import 'package:flutter_basic/pages/homepage.dart';
import 'package:flutter_basic/utils/constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Stack(
          fit:StackFit.expand,
        children: [
          Image.asset("assets/images/bg.jpg",fit: BoxFit.cover,colorBlendMode: BlendMode.darken,color: Colors.black.withOpacity(0.4),),
          Center(
            child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: [
                  Form(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          TextFormField(
                              decoration: InputDecoration(
                            icon: Icon(Icons.person),
                            hintText: "Enter your username",
                            labelText: "Username",
                          )),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              icon: Icon(Icons.key),
                              hintText: "Enter your password",
                              labelText: "Password",
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ElevatedButton(onPressed:(){
                    //Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));

                    Constants.prefs.setBool("LoggedIn",true);
                   Navigator.pushReplacementNamed(context,"/home");
                   
                   }, child: Text("Login")),
                 )
                ],
              ),
            ),
                  ),
                ),
          ),
        ],
      )
    );

  }
}
