import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hello_world/drawer.dart';
// import 'package:hello_world/name_card.dart';
import 'package:http/http.dart' as http;

// import '../name_card.dart';

class HomePage extends StatefulWidget {
  static const String routeName = "/home";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var mytext = "name";
  TextEditingController _nameController = TextEditingController(); //_ means private field

  var url = "https://jsonplaceholder.typicode.com/photos";
  var data;
 
 
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData()async
  {
    var res = await http.get(url);
    print(res.body);
    data = jsonDecode(res.body);
    setState(() {});
  }



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
    body: data != null?
          ListView.builder(  //or just add listview builder here.
            // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context,index){
              return ListTile(
                title: Text(data[index]["title"]),
                subtitle: Text("Id : ${data[index]["id"]}"),
                leading: Image.network(data[index]["url"]),
              );
            },
            itemCount: data.length,
            )
          :
          Center(child: CircularProgressIndicator()
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