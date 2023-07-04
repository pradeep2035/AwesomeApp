import 'package:flutter/material.dart';
import '../change_name_card.dart';
import '../drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _namedController = TextEditingController();
  var myText ="Change Me";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _namedController.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:SingleChildScrollView(
          child: Card(
            child: ChangeNameCard(myText: myText, namedController: _namedController),
          ),
        ),
      ),
      drawer: Mydrawer()
    );
  }
}