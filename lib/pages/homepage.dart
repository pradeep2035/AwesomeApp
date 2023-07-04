import 'package:flutter/material.dart';
import '../drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _namedController = TextEditingController();
  var myText ="Change Me";
  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

   getData()async{
      var res = await http.get(Uri.parse(url));
     data =jsonDecode(res.body);
     setState(() {});
}
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
        padding: const EdgeInsets.all(8.0),
        child: data !=null?ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(data[index]["title"]),
                leading: Image.network(data[index]["url"]),
                subtitle: Text("ID : ${data[index]["id"]}"),
              ),
            ) ;
          },
        ):Center(child: CircularProgressIndicator(),),

      ),
      drawer: Mydrawer()
    );
  }
}