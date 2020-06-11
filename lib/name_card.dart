

import 'package:flutter/material.dart';


class NameCard extends StatelessWidget {
  const NameCard({
    Key key,
    @required this.mytext,
    @required TextEditingController nameController,
  }) : _nameController = nameController, super(key: key);

  final String mytext;
  final TextEditingController _nameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: <Widget>[
        Image.asset("assets/gil.jpeg",
        // width: 100,
        ),
        SizedBox(height: 20,), //for padding
        Text(
        // "Profile Form for",
        mytext,

        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.grey[600]
        ),
        ),
        SizedBox(height: 20,), //for padding
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _nameController,
            decoration: InputDecoration( //input                 
            hintText: "eg. vansh kapoor",
            labelText: "Name", //placeholders
            border: OutlineInputBorder()
          ),
          ),
        )
      ],),
    );
  }
}