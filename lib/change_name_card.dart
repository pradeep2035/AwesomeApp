import 'package:flutter/material.dart';

class ChangeNameCard extends StatelessWidget {
  const ChangeNameCard({
    super.key,
    required this.myText,
    required TextEditingController namedController,
  }) : _namedController = namedController;

  final String myText;
  final TextEditingController _namedController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/bg.jpg",
        
        ),
        SizedBox(height: 20),
        Text(
          myText,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _namedController, 
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              icon: Icon(Icons.person),
              hintText: "Please enter username",
              labelText: "Username",
              
            ),
          ),
        )
      ],
    );
  }
}
