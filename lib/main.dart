import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  // WidgetApp
  // MaterialApp
  // cupertinoApp
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      // accentColor: Colors.black,
      primarySwatch: Colors.blueGrey,
    ),
  ));
}

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.blue,
//       child: Text("Home Page"),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home",
//         style: TextStyle(
//           color: Colors.white
//         ),)
//       ),
//       body:Center(
//         child: Container(
//           padding:const EdgeInsets.all(8),
//           width: 200,
//           height: 100,
//           // color: Colors.blueGrey,  //since using a box color
//           decoration: BoxDecoration(
//             color: Colors.orange,
//             borderRadius:BorderRadius.circular(12),
//             gradient: LinearGradient(
//               colors: [
//                 Colors.white,
//                 Colors.orange,
//               ]
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey,
//                 blurRadius: 7
//                 )
//             ]
//           ),
//           alignment: Alignment.bottomRight,
//           child:Text("All Blogs",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 15,
//             ),
//             ),
//         ),
//       ),
//     );
//   }
// }

// TYPE SHORTCUT :: stl
class HomePag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text("Home",
        style: TextStyle(
          color: Colors.white
        ),)
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100, 
            height: 100,
            color: Colors.orange,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.yellow[200],
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ],
      ),
      drawer: Drawer(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.settings),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}


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
        child: Card(
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
        ),
      ),
    ),
    drawer: Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children:<Widget>[
          UserAccountsDrawerHeader(accountEmail: Text("vk@gmail.com")),
          ListTile(
            title: Text("HOME"),
            leading: Icon(Icons.home),
            onTap: (){},
            ),
        ]
      ),
    ),
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