import 'package:flutter/material.dart';
import 'package:hello_world/drawer.dart';
import 'package:hello_world/name_card.dart';

// import '../name_card.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var mytext = "name";
  TextEditingController _nameController = TextEditingController(); //_ means private field

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  // }

  // @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
    
  // }
  //JUST LIKE REACT

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text("Journal",
        style: TextStyle(
          color: Colors.white
        ),
        )
      )
    ,
    body: Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: NameCard(mytext: mytext, nameController: _nameController),
      ),
    ),
    drawer: MyDrawer(),
    floatingActionButton: FloatingActionButton(
      onPressed: (){
        mytext = _nameController.text;
        setState(() {}); //for dynamic changes to reflect without hot reload
      },
      child: Icon(Icons.edit),
    ),
    );      
  }
}