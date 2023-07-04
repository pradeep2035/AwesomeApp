import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        elevation: null,
        child: ListView(
          padding: EdgeInsets.all(0),
          children: [
            UserAccountsDrawerHeader(
                accountName: Text(
                  "Pradeep",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                decoration: BoxDecoration(color: Colors.pink),
                accountEmail: Text("pradeeprout899@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://media.licdn.com/dms/image/D4D03AQH14UAJwFDDLg/profile-displayphoto-shrink_800_800/0/1683615384481?e=2147483647&v=beta&t=4b-i-_g0ttDSs1Dt5zCAgvkX0j_BSPTbjGTE57B9UcI"),
                )),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Person 1"),
              subtitle: Text("Account"),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("pradeeprout899gmail.com"),
              subtitle: Text("Email"),
              trailing: Icon(Icons.edit),
            )
          ],
        ),
      );
  }
}