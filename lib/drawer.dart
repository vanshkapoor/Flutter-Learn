import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("vanshkapoorvk7@gmail.com"),
              accountName: Text("Vansh Kapoor"),
              // currentAccountPicture: Image.network("https://i.ibb.co/bJ8y2Jw/40017134-2042011202526098-3285397012161232896-n.jpg"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://i.ibb.co/bJ8y2Jw/40017134-2042011202526098-3285397012161232896-n.jpg")),          
              ),
          // DrawerHeader(
          //   child: Text("JOURNAL"),
          //   decoration: BoxDecoration(color: Colors.blue),
          //   ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Vansh Kapoor"),
            subtitle: Text("logged user"),
            trailing: Icon(Icons.edit),
            onTap:(){}
            ),
            ListTile(
            leading: Icon(Icons.people),
            title: Text("Rupansh Kapoor"),
            subtitle: Text("user2"),
            // trailing: Icon(Icons.edit),
            onTap:(){}
            )
        ],
        ),
      );
  }
}