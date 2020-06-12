import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// import 'package:hello_world/drawer.dart';
import 'package:hello_world/page/form.dart';
import 'package:hello_world/page/login.dart';
// import 'name_card.dart';

void main(){
  // WidgetApp
  // MaterialApp
  // cupertinoApp
  // runApp(MyApp());
  runApp(MyApp());
  }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
    theme: ThemeData(
      // accentColor: Colors.black,
      primarySwatch: Colors.blueGrey,
    ),
    routes: {
      LoginPage.routeName:(context) => LoginPage(),
      HomePage.routeName:(context) => HomePage(),
    },
  );
  }
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
// class HomePag extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueGrey[100],
//       appBar: AppBar(
//         title: Text("Home",
//         style: TextStyle(
//           color: Colors.white
//         ),)
//       ),
//       body: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         // mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Container(
//             width: 100, 
//             height: 100,
//             color: Colors.orange,
//           ),
//           Container(
//             width: 100,
//             height: 100,
//             color: Colors.yellow[200],
//           ),
//           Container(
//             width: 100,
//             height: 100,
//             color: Colors.blue,
//           ),
//         ],
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: const EdgeInsets.all(0),
//           children: <Widget>[
//             UserAccountsDrawerHeader(
//               accountEmail: Text("vanshkapoorvk7@gmail.com"),
//               accountName: Text("Vansh Kapoor"),
//               // currentAccountPicture: Image.network("https://i.ibb.co/bJ8y2Jw/40017134-2042011202526098-3285397012161232896-n.jpg"),
//               currentAccountPicture: CircleAvatar(
//                 backgroundImage: NetworkImage("https://i.ibb.co/bJ8y2Jw/40017134-2042011202526098-3285397012161232896-n.jpg")),          
//               ),
//           // DrawerHeader(
//           //   child: Text("JOURNAL"),
//           //   decoration: BoxDecoration(color: Colors.blue),
//           //   ),
//           ListTile(
//             leading: Icon(Icons.person),
//             title: Text("Vansh Kapoor"),
//             subtitle: Text("logged user"),
//             trailing: Icon(Icons.edit),
//             onTap:(){}
//             ),
//             ListTile(
//             leading: Icon(Icons.people),
//             title: Text("Rupansh Kapoor"),
//             subtitle: Text("user2"),
//             // trailing: Icon(Icons.edit),
//             onTap:(){}
//             )
//         ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){},
//         child: Icon(Icons.settings),
//       ),
//       // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     );
//   }
// }




